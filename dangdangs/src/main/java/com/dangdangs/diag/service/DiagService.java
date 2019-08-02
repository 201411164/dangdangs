package com.dangdangs.diag.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangdangs.diag.dao.DiagDAO;
import com.dangdangs.diag.vo.DiagVO;

@Service
public class DiagService implements DiagServiceInter {

	@Autowired
	private DiagDAO dao;
	
	@Override
	public List<String> doDiag(DiagVO vo) {
		// 점수 부여를 위한 map
		Map<String, Double> map = new HashMap<>();
		List<String> synameList = vo.getSyname();
		
		// 증상에 따른 가중치 부여
		for(String syname: synameList) {
			List<String> tempList = dao.selectDnameBySyname(syname);
			map = makeMap(map, tempList, 1.d);
		}
		
		// 견종에 따른 가중치 부여
		List<String> tempList = dao.selectDnameBySpcode(vo.getSpcode());
		map = makeMap(map, tempList, 0.2);
		
		// 나이에 따른 가중치 부여
		tempList = dao.selectDnameByDAge(vo.getDage());
		map = makeMap(map, tempList, 0.4);
		
		// Comparator 클래스 재정의를 통해, 가중치 따라 내림차순 정렬
		List<Map.Entry<String, Double>> sortedList = new LinkedList<>(map.entrySet());
		
        Collections.sort(sortedList, new Comparator<Map.Entry<String, Double>>() {
			@Override
			public int compare(Map.Entry<String, Double> o1, Map.Entry<String, Double> o2) {
                int comparision = ((o1.getValue() - o2.getValue()) * -1) > 0 ? 1 : -1;
                return comparision == 0 ? o1.getKey().compareTo(o2.getKey()) : comparision;
			}
		});
		
        // 순서유지를 위해 LinkedHashMap을 사용
        Map<String, Double> sortedMap = new LinkedHashMap<>();
        for(Iterator<Map.Entry<String, Double>> iter = sortedList.iterator(); iter.hasNext();){
            Map.Entry<String, Double> entry = iter.next();
            sortedMap.put(entry.getKey(), entry.getValue());
        }
        System.out.println("점수표: " + sortedMap);
        int tieCount = countTie(sortedMap);
        // 진단결과 병명 반환
        List<String> sortedKeyset = new ArrayList<>(sortedMap.keySet());
        
        return makeResult(sortedKeyset, tieCount);
	}
	
	// 가중치를 계산하여 맵 형태로 반환
	private Map<String, Double> makeMap(Map<String, Double> map, List<String> list, double weight) {
		for(String e: list) {
			if(!map.containsKey(e)) map.put(e, weight);
			else map.put(e, Math.round((map.get(e) + weight)*10)/10.0);
		}
		return map;
	}
	
	// 1등과 동점이 있는지 검사 후 동점 개수 반환
	private int countTie(Map<String, Double> map){
		List<Double> scoreList = new ArrayList<Double>(map.values());
		double highScore = scoreList.get(0);
		int count = 0;
		
		for(double score: scoreList) {
			if(highScore == score) count++;
			else break;
		}
		return count;
	}
	
	// 동점 개수에 따른 결과 list 반환
	private List<String> makeResult(List<String> sortedKeyset, int count){
		List<String> result = new ArrayList<>();
		if (count != 1) {
			// 동점 있을 때 처리
			// 0번째 인덱스에 동점 컬럼 합치기
        	StringBuffer sb = new StringBuffer();
        	for(int i = 0; i < count; i++) {
        		sb.append(sortedKeyset.get(i));
        		if (i == (count - 1)) break;
        		sb.append(", ");
        	}
        	sortedKeyset.set(0, sb.toString());
        	for(int i = 1; i < count; i++) {
        		sortedKeyset.remove(i);
        	}
        }
		// 상위 5개 항목만 출력
		for(int i = 0; i < 6-count; i++) {
    		result.add(sortedKeyset.get(i));
    	}
		
		return result;
	}
}
