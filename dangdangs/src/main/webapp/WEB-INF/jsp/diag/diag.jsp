<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	width: 85%;
}

th {
	width: 12%
}

ul {
	display: inline-block;
	list-style-type: none;
	text-align: left;
	vertical-align: top;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="${ pageContext.request.contextPath }/resources/js/checkForm.js"></script>
<script>
	function setAge(age){
		$("#check").val(age);
		$("#section1").css("display", "none");
		$("#section2").css("display", "block");
	}
	
	var checklist = new Array;
	
	function isCheckedById(id, i){
		var j, checked;
		
		var index = -1;
		for(j=1; j<=i; j++){
			checked = $("#" + id + j).prop("checked");
			
			if(checked== true){
				index = checklist.indexOf(id+j);
				if(index==-1)
					checklist.push(id + j);
				checked=0;
				index=-1;
			}
			else{
				index = checklist.indexOf(id+j);
				if(index!=-1){
					checklist.splice(index, 1);
				}
				index=-1;
			}
			
		}
		$("#"+id).modal('hide');
	}
	function closeCheck(id, i){
		var j
		var index=-1;
		for(j=1; j<=i; j++){
			index = checklist.indexOf(id+j);
			checked = $("#" + id + j).prop("checked");
			if(index==-1 && checked==true)
				$("input:checkbox[id='"+id+j+"']").prop("checked", false);
			else if(index!=-1 && checked==false)
				$("input:checkbox[id='"+id+j+"']").prop("checked", true);
		}
	}
	
	function checkVal(){
		let form = document.diagForm;
		if (isNull(form.spcode, "종을 선택하세요.")){
			return false;
		} else if (isNullCheckbox(form.syname, "증상을 선택하세요.")){
			alert("증상을 선택하세요.");
			return false;
		} else {
			return true;
		}
	}

</script>
</head>
<body>
	<form method="post" name="diagForm" onsubmit="return checkVal()">
		<div id="section1" style="display: block">
			<button type="button" onclick=setAge(-1)>
				<img src="${ pageContext.request.contextPath }/resources/img/1.png">
			</button>
			<br>
			<button type="button" onclick=setAge(0)>
				<img src="${ pageContext.request.contextPath }/resources/img/2.png">
			</button>
			<br>
			<button type="button" onclick=setAge(1)>
				<img src="${ pageContext.request.contextPath }/resources/img/3.png">
			</button>
			<input type="hidden" name="dage" id="check">
		</div>
		<div id="section2" style="display: none">
			<div class="accordion" id="accordionExample">
				<div class="card">
					<div class="card-header" id="headingOne">
						<h2 class="mb-0">
							<button class="btn btn-link" type="button" data-toggle="collapse"
								data-target="#collapseOne" aria-expanded="true"
								aria-controls="collapseOne">종을 입력하세요!</button>
						</h2>
					</div>
					<div id="collapseOne" class="collapse show"
						aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body" align="left">
							<table></table>
							<ul>
								<h3>ㄱ</h3>
								<li><input type="radio" name="spcode" value="great">그레이트
									데인</li>
							</ul>
							<ul>
								<h3>ㄷ</h3>
								<li><input type="radio" name="spcode" value="dachs">닥스훈트</li>
								<li><input type="radio" name="spcode" value="dalma">달마시안</li>
								<li><input type="radio" name="spcode" value="dober">도베르만핀셔</li>
							</ul>
							<ul>
								<h3>ㄹ</h3>
								<li><input type="radio" name="spcode" value="lassa">라사압소</li>
								<li><input type="radio" name="spcode" value="rott">로트와일러</li>
								<li><input type="radio" name="spcode" value="retri">리트리버</li>
							</ul>
							<ul>
								<h3>ㅁ</h3>
								<li><input type="radio" name="spcode" value="masti">마스티프</li>
								<li><input type="radio" name="spcode" value="malte">말티즈</li>
							</ul>
							<ul>
								<h3>ㅂ</h3>
								<li><input type="radio" name="spcode" value="bhound">바셋
									하운드</li>
								<li><input type="radio" name="spcode" value="bteri">보스턴테리어</li>
								<li><input type="radio" name="spcode" value="bull">불독</li>
								<li><input type="radio" name="spcode" value="buteri">불테리어</li>
								<li><input type="radio" name="spcode" value="britt">브리트니</li>
								<li><input type="radio" name="spcode" value="brteri">블랙러시안테리어</li>
								<li><input type="radio" name="spcode" value="beagle">비글</li>
								<li><input type="radio" name="spcode" value="bichon">비숑프리제</li>
							</ul>
							<ul>
								<h3>ㅅ</h3>
								<li><input type="radio" name="spcode" value="samo">사모예드</li>
								<li><input type="radio" name="spcode" value="shar">샤페이</li>
								<li><input type="radio" name="spcode" value="stber">세인트버나드</li>
								<li><input type="radio" name="spcode" value="schn">슈나우저</li>
								<li><input type="radio" name="spcode" value="husky">시베리안
									허스키</li>
								<li><input type="radio" name="spcode" value="shitzu">시츄</li>
							</ul>
							<ul>
								<h3>ㅇ</h3>
								<li><input type="radio" name="spcode" value="akita">아키타</li>
								<li><input type="radio" name="spcode" value="amalam">알래스칸맬러뮤트</li>
								<li><input type="radio" name="spcode" value="oeshee">올드
									잉글리쉬 쉽독</li>
								<li><input type="radio" name="spcode" value="weima">와이마라너</li>
								<li><input type="radio" name="spcode" value="yteri">요크셔테리어</li>
								<li><input type="radio" name="spcode" value="welsh">웰시코기</li>
								<li><input type="radio" name="spcode" value="esspan">잉글리쉬
									스프링거 스파니엘</li>
								<li><input type="radio" name="spcode" value="esett">잉글리쉬
									세터</li>
							</ul>
							<ul>
								<h3>ㅈ</h3>
								<li><input type="radio" name="spcode" value="schaf">저먼셰퍼드</li>
								<li><input type="radio" name="spcode" value="gpoint">저먼숏헤어포인터</li>
							</ul>

							<ul>
								<h3>ㅊ</h3>
								<li><input type="radio" name="spcode" value="chihua">치와와</li>
							</ul>
							<ul>
								<h3>ㅋ</h3>
								<li><input type="radio" name="spcode" value="cteri">케언테리어</li>
								<li><input type="radio" name="spcode" value="coca">코카스파니엘</li>
							</ul>
							<ul>
								<h3>ㅍ</h3>
								<li><input type="radio" name="spcode" value="pug">퍼그</li>
								<li><input type="radio" name="spcode" value="peki">페키니즈</li>
								<li><input type="radio" name="spcode" value="pome">포메라니안</li>
								<li><input type="radio" name="spcode" value="point">포인터</li>
								<li><input type="radio" name="spcode" value="mpoo">(미니어쳐)푸들</li>
								<li><input type="radio" name="spcode" value="tpoo">(토이)푸들</li>
								<li><input type="radio" name="spcode" value="pitbull">핏불</li>
							</ul>
							<ul>
								<h3>ㅎ</h3>
								<li><input type="radio" name="spcode" value="hava">하바네즈</li>
							</ul>
							<ul>
								<h3>기타</h3>
								<li><input type="radio" name="spcode" value="etc">기타</li>
							</ul>

						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingTwo">
						<h2 class="mb-0">
							<button class="btn btn-link collapsed" type="button"
								data-toggle="collapse" data-target="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo">증상을
								체크해주세요!</button>
						</h2>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordionExample">
						<br>
						<h2>부위별</h2>
						<br>
						<table>
							<tr>
								<th>
									<div class="card-body">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#mouth">입</button>

										<!-- Modal -->
										<div class="modal fade" id="mouth" tabindex="-1" role="dialog"
											aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalCenterTitle">입</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close" onclick="closeCheck('mouth', 4)">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body mouth">
														<p>
															<input type="checkbox" name="syname" class="mouth"
																id="mouth1" value="입악취">악취
														</p>
														<p>
															<input type="checkbox" name="syname" class="mouth"
																id="mouth2" value="입침">침많이흘림
														</p>
														<p>
															<input type="checkbox" name="syname" class="mouth"
																id="mouth3" value="입잇몸붉음">잇몸이 붉게 부음
														</p>
														<p>
															<input type="checkbox" name="syname" class="mouth"
																id="mouth4" value="입치석증가">치석 증가
														</p>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															onclick="isCheckedById('mouth', 4)">Save
															changes</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</th>
								<th>
									<div class="card-body">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#ear">귀</button>

										<!-- Modal -->
										<div class="modal fade" id="ear" tabindex="-1" role="dialog"
											aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalCenterTitle">귀</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close" onclick="closeCheck('ear', 2)">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body mouth">
														<p>
															<input type="checkbox" name="syname" class="ear"
																id="ear1" value="귀악취">악취
														</p>
														<p>
															<input type="checkbox" name="syname" class="ear"
																id="ear2" value="귀지">귀지
														</p>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															onclick="isCheckedById('ear', 2)">Save changes</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								<th>
									<div class="card-body">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#skin">피부</button>

										<!-- Modal -->
										<div class="modal fade" id="skin" tabindex="-1" role="dialog"
											aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalCenterTitle">피부</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close" onclick="closeCheck('skin', 3)">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body mouth">
														<p>
															<input type="checkbox" name="syname" class="skin"
																id="skin1" value="피부몸긁기">몸긁기
														</p>
														<p>
															<input type="checkbox" name="syname" class="skin"
																id="skin2" value="피부핥기">핥기
														</p>
														<p>
															<input type="checkbox" name="syname" class="skin"
																id="skin3" value="피부습진">습진/반점
														</p>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															onclick="isCheckedById('skin', 3)">Save changes</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</th>
								<th>
									<div class="card-body">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#eye">눈</button>

										<!-- Modal -->
										<div class="modal fade" id="eye" tabindex="-1" role="dialog"
											aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalCenterTitle">눈</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close" onclick="closeCheck('eye', 3)">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body mouth">
														<p>
															<input type="checkbox" name="syname" class="eye"
																id="eye1" value="눈물많음">눈물많음
														</p>
														<p>
															<input type="checkbox" name="syname" class="eye"
																id="eye2" value="눈불투명">불투명
														</p>
														<p>
															<input type="checkbox" name="syname" class="eye"
																id="eye3" value="눈시력저하">시력저하
														</p>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															onclick="isCheckedById('eye', 3)">Save changes</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</th>
								<th>
									<div class="card-body">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#nose">코</button>

										<!-- Modal -->
										<div class="modal fade" id="nose" tabindex="-1" role="dialog"
											aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalCenterTitle">코</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close" onclick="closeCheck('nose', 1)">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body mouth">
														<p>
															<input type="checkbox" name="syname" class="nose"
																id="nose1" value="콧물">콧물많음
														</p>

													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															onclick="isCheckedById('nose', 1)">Save changes</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</th>

								<th>
									<div class="card-body">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#hair">털</button>

										<!-- Modal -->
										<div class="modal fade" id="hair" tabindex="-1" role="dialog"
											aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalCenterTitle">털</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close" onclick="closeCheck('hair', 2)">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body mouth">
														<p>
															<input type="checkbox" name="syname" class="hair"
																id="hair1" value="털탈모">탈모
														</p>
														<p>
															<input type="checkbox" name="syname" class="hair"
																id="hair2" value="털모질악화">모질악화
														</p>

													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															onclick="isCheckedById('hair', 2)">Save changes</button>
													</div>
												</div>
											</div>
										</div>
									</div>


								</th>

								<th>
									<div class="card-body">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#foot">발톱</button>

										<!-- Modal -->
										<div class="modal fade" id="foot" tabindex="-1" role="dialog"
											aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalCenterTitle">발톱</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close" onclick="closeCheck('foot', 1)">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body mouth">
														<p>
															<input type="checkbox" name="syname" class="foot"
																id="foot1" value="발톱이상">발톱이상
														</p>

													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															onclick="isCheckedById('foot', 1)">Save changes</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</th>
							</tr>
						</table>
						<br> <br>
						<hr>
						<h2>변 상태</h2>
						<br>
						<table>
							<tr>
								<th>
									<div class="card-body">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#pee">소변</button>

										<!-- Modal -->
										<div class="modal fade" id="pee" tabindex="-1" role="dialog"
											aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalCenterTitle">소변</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close" onclick="closeCheck('pee', 3)">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body mouth">
														<p>
															<input type="checkbox" name="syname" class="pee"
																id="pee1" value="무뇨">감소/무뇨
														</p>
														<p>
															<input type="checkbox" name="syname" class="pee"
																id="pee2" value="다뇨">다뇨
														</p>
														<p>
															<input type="checkbox" name="syname" class="pee"
																id="pee3" value="혈뇨">혈뇨
														</p>

													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															onclick="isCheckedById('pee', 3)">Save changes</button>
													</div>
												</div>
											</div>
										</div>
									</div>

								</th>
								<th>
									<div class="card-body">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#poo">대변</button>

										<!-- Modal -->
										<div class="modal fade" id="poo" tabindex="-1" role="dialog"
											aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalCenterTitle">대변</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close" onclick="closeCheck('poo', 3)">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body mouth">
														<p>
															<input type="checkbox" name="syname" class="poo"
																id="poo1" value="변설사">설사
														</p>
														<p>
															<input type="checkbox" name="syname" class="poo"
																id="poo2" value="변검은색">검은색 변
														</p>
														<p>
															<input type="checkbox" name="syname" class="poo"
																id="poo3" value="변비">변비
														</p>

													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															onclick="isCheckedById('poo', 3)">Save changes</button>
													</div>
												</div>
											</div>
										</div>
									</div>
							</tr>
						</table>
						<br>
						<hr>
						<h2>생활</h2>
						<br>
						<table style="font-size: 20px;">
							<tr>
								<th>수면</th>
								<th>음수량</th>
								<th>호흡</th>
								<th>공격성</th>
								<th>무기력</th>
								<th>식욕</th>
								<th>걸음</th>
								<th>무릎에서 소리가 남</th>
							</tr>
							<tr>
								<th><input type="checkbox" name="syname" value="수면증가">증가
									<input type="checkbox" name="syname" value="수면감소">감소</th>
								<th><input type="checkbox" name="syname" value="음수량증가">증가
									<input type="checkbox" name="syname" value="음수량감소">감소</th>
								<th><input type="checkbox" name="syname" value="과호흡">과호흡
									<input type="checkbox" name="syname" value="호흡곤란">호흡곤란</th>
								<th><input type="checkbox" name="syname" value="공격성증가">증가
								</th>
								<th><input type="checkbox" name="syname" value="무기력">무기력</th>
								<th><input type="checkbox" name="syname" value="식욕감소">감소</th>
								<th><input type="checkbox" name="syname" value="걸음이상">걸음이상</th>
								<th><input type="checkbox" name="syname" value="무릎소리">무릎에서
									소리가 남</th>

							</tr>
						</table>
						<br>
						<hr>
						<h2>상태</h2>
						<br>

						<table style="font-size: 20px;">
							<tr>
								<th><input type="checkbox" name="syname" value="창백">창백(눈,
									귀, 잇몸 등)</th>
								<th><input type="checkbox" name="syname" value="종양">종양</th>
								<th><input type="checkbox" name="syname" value="열">열</th>
								<th><input type="checkbox" name="syname" value="구토">구토</th>
								<th><input type="checkbox" name="syname" value="체중감소">체중감소</th>
								<th><input type="checkbox" name="syname" value="기침">기침</th>
								<th><input type="checkbox" name="syname" value="발작">발작</th>
								<th><input type="checkbox" name="syname" value="복부팽만">복부팽만</th>
								<th><input type="checkbox" name="syname" value="경련">경련</th>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-primary">제출</button>
		</div>
	</form>
</body>
</html>