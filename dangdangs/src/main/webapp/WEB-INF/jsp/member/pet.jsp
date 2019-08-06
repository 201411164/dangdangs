<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my pet 추가하기</title>
<style>

  ul{display:inline-block;
  	list-style-type:none;
  	text-align: left;
  	vertical-align: top;
  	}
  	
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>
	<div align="center">
		<br>
		<hr>
		<h2>마이 댕댕이 등록</h2>
		<hr>
		<h3>로그인중인 아이디: ${ loginVO.mid }</h3>
		<br>
		
		<form method="post">
			
		<!-- d_pet 테이블  pno(번호) mid(member id) spcode(dog code) pname(dog name)-->
			
			<input type="hidden" name="mid" value="${ loginVO.mid }">
			<table>
			<tbody align="center">
				<tr>
					<th>댕댕이 이름</th>
					<td>
						<input type="text" name="pname" size="50" autofocus="autofocus"/>
					</td>
				</tr>
				</tbody>
			</table>
			<br>
			<div class="accordion" id="accordionExample">
			 <div class="card">
    <div class="card-header" id="headingOne" >
      <h2 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
         종을 입력하세요!
        </button>
      </h2>
    </div>
    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body" align="left" >
      <table></table>
      <ul>
      	<h3>ㄱ</h3>
      	<li><input type="radio" name="spcode" value="great" >그레이트 데인</li>
      </ul>
      <ul>
	    <h3>ㄷ</h3>
	    <li><input type="radio" name="spcode" value="dachs" >닥스훈트</li>
	    <li><input type="radio" name="spcode" value="dalma" >달마시안</li>
	    <li><input type="radio" name="spcode" value="dober" >도베르만핀셔</li>
      </ul>
      <ul>
	    <h3>ㄹ</h3>
	    <li><input type="radio" name="spcode" value="lassa" >라사압소</li>
	    <li><input type="radio" name="spcode" value="rott" >로트와일러</li>
	    <li><input type="radio" name="spcode" value="retri" >리트리버</li>
      </ul>
      <ul>
	    <h3>ㅁ</h3>
	    <li><input type="radio" name="spcode" value="masti" >마스티프</li>
	    <li><input type="radio" name="spcode" value="malte" >말티즈</li>
      </ul>
      <ul>
	    <h3>ㅂ</h3>
	    <li><input type="radio" name="spcode" value="bhound" >바셋 하운드</li>
	    <li><input type="radio" name="spcode" value="bteri" >보스턴테리어</li>
	    <li><input type="radio" name="spcode" value="bull" >불독</li>
	    <li><input type="radio" name="spcode" value="buteri" >불테리어</li>
	    <li><input type="radio" name="spcode" value="britt" >브리트니</li>
	    <li><input type="radio" name="spcode" value="brteri" >블랙러시안테리어</li>
	    <li><input type="radio" name="spcode" value="beagle" >비글</li>
	    <li><input type="radio" name="spcode" value="bichon" >비숑프리제</li>
      </ul>
       <ul>
	    <h3>ㅅ</h3>
	    <li><input type="radio" name="spcode" value="samo" >사모예드</li>
	    <li><input type="radio" name="spcode" value="shar" >샤페이</li>
	    <li><input type="radio" name="spcode" value="stber" >세인트버나드</li>
	    <li><input type="radio" name="spcode" value="schn" >슈나우저</li>
	    <li><input type="radio" name="spcode" value="husky" >시베리안 허스키</li>
	    <li><input type="radio" name="spcode" value="shitzu" >시츄</li>
      </ul>
      <ul>
	    <h3>ㅇ</h3>
	    <li><input type="radio" name="spcode" value="akita" >아키타</li>
	    <li><input type="radio" name="spcode" value="amalam" >알래스칸맬러뮤트</li>
	    <li><input type="radio" name="spcode" value="oeshee" >올드 잉글리쉬 쉽독</li>
	    <li><input type="radio" name="spcode" value="weima" >와이마라너</li>
	    <li><input type="radio" name="spcode" value="yteri" >요크셔테리어</li>
	    <li><input type="radio" name="spcode" value="welsh" >웰시코기</li>
	    <li><input type="radio" name="spcode" value="esspan" >잉글리쉬 스프링거 스파니엘</li>
	    <li><input type="radio" name="spcode" value="esett" >잉글리쉬 세터</li>
      </ul>
      <ul>
	    <h3>ㅈ</h3>
	    <li><input type="radio" name="spcode" value="schaf" >저먼셰퍼드</li>
	    <li><input type="radio" name="spcode" value="gpoint" >저먼숏헤어포인터</li>
      </ul>
  
  <ul>
	    <h3>ㅊ</h3>
	    <li><input type="radio" name="spcode" value="chihua" >치와와</li>
      </ul>
       <ul>
	    <h3>ㅋ</h3>
	    <li><input type="radio" name="spcode" value="cteri" >케언테리어</li>
	    <li><input type="radio" name="spcode" value="coca" >코카스파니엘</li>
      </ul>
      <ul>
	    <h3>ㅍ</h3>
	    <li><input type="radio" name="spcode" value="pug" >퍼그</li>
	    <li><input type="radio" name="spcode" value="peki" >페키니즈</li>
	    <li><input type="radio" name="spcode" value="pome" >포메라니안</li>
	    <li><input type="radio" name="spcode" value="point" >포인터</li>
	    <li><input type="radio" name="spcode" value="mpoo">(미니어쳐)푸들</li>
	    <li><input type="radio" name="spcode" value="tpoo" >(토이)푸들</li>
	    <li><input type="radio" name="spcode" value="pitbull" >핏불</li>
      </ul>
      <ul>
	    <h3>ㅎ</h3>
	    <li><input type="radio" name="spcode" value="hava" >하바네즈</li>
      </ul>
      <ul>
      <h3>기타</h3>
      <li><input type="radio" name="spcode" value="etc" >기타</li>
      </ul>
     
      </div>
    </div>
  </div>
  </div>
  <br>
  <button type="submit" class="btn btn-outline-dark">등록</button>
</form>
	</div>
</body>
</html>