<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="ko">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />





<head>
  <title>로그인폼</title>
   <meta charset="UTF-8">
 
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
        
   <link rel="icon" type="image/png" href="${ pageContext.request.contextPath }/resources/img/icons/favicon.ico"/>
   <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.min.css">  
   <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/vendor/animate/animate.css">
   <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/vendor/css-hamburgers/hamburgers.min.css">
   <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/vendor/animsition/css/animsition.min.css">
   <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/vendor/select2/select2.min.css">
   <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/vendor/daterangepicker/daterangepicker.css">   
     <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/style.css">
   
   <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
      	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
       
   
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
   <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
   <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

</head>
<header>
      <jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
</header>
<body>
   <div class="container-login100" style="background-image: url('${ pageContext.request.contextPath }/resources/img/backgrounds/1.jpg');">
      <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30" style="position: absolute; top: 58%; left : 50%;transform : translate(-50%,-50%);">
         <form class="login100-form validate-form">
            <button class=image src="${ pageContext.request.contextPath }/resources/img/icons/logo.png" href="${ pageContext.request.contextPath }/"></button>
            <span class="login100-form-title p-b-37">
               회원가입
            </span>
            <div class="wrap-input100 validate-input m-b-20" data-validate="아이디를 입력하세요.">
               <input class="input100" type="text" name="id" placeholder="아이디를 입력하세요.">
               <span class="focus-input100"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-25" data-validate = "비밀번호를 입력하세요.">
               <input class="input100" type="password" name="pass" placeholder="비밀번호를 입력하세요.">
               <span class="focus-input100"></span>
            </div>
            <div class="container-login100-form-btn">
               <button class="l">
                  
               </button>
            </div>
            <div>
               <br>
               <br>
            </div>
            <div class="flex-c p-b-112">
               <a href="#" class="login100-social-item">
                  <img src="${ pageContext.request.contextPath }/resources/img/icons/facebook.PNG" alt="naver">
               </a>
               <a href="#" class="login100-social-item">
                  <img src="${ pageContext.request.contextPath }/resources/img/icons/naver.PNG" alt="naver">
               </a>
               <a href="#" class="login100-social-item">
                  <img src="${ pageContext.request.contextPath }/resources/img/icons/kakao.PNG" alt="kakao">
               </a>
               <trim>
            </div>
            <div class="text-center">
               <button type="submit" value="회원가입">회원가입</button>>
               
            </div>
         </form>
      </div>
   </div>
   <div id="dropDownSelect1"></div>
  <div id="dropDownSelect1"></div>
   <script src="${ pageContext.request.contextPath }/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
   <script src="${ pageContext.request.contextPath }/resources/vendor/animsition/js/animsition.min.js"></script>
   <script src="${ pageContext.request.contextPath }/resources/vendor/bootstrap/js/popper.js"></script>
   <script src="${ pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="${ pageContext.request.contextPath }/resources/vendor/select2/select2.min.js"></script>
   <script src="${ pageContext.request.contextPath }/resources/vendor/daterangepicker/moment.min.js"></script>
   <script src="${ pageContext.request.contextPath }/resources/vendor/daterangepicker/daterangepicker.js"></script>
   <script src="${ pageContext.request.contextPath }/resources/vendor/countdowntime/countdowntime.js"></script>
   <script src="${ pageContext.request.contextPath }/resources/js/main.js"></script>

</body>
</html>