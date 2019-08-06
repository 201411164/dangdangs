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
<div id="dangang">
   <div class="container-login100" style="background-image: url('${ pageContext.request.contextPath }/resources/img/backgrounds/1.jpg');">
      <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30" style="position: absolute; top: 55%; left : 45%;transform : translate(-50%,-50%);">
         <form class="login100-form validate-form">
            <button clss=image src="${ pageContext.request.contextPath }/resources/img/icons/logo.png" href="${ pageContext.request.contextPath }/"></button>
            <span class="login100-form-title p-b-37">
                  로그인하기
            </span>
            <div class="wrap-input100 validate-input m-b-20" data-validate="아이디나 이메일을 입력해주세요.">
               <input class="input100" type="text" name="id" placeholder="아이디나 이메일을 입력하세요.">
               <span class="focus-input100"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-25" data-validate = "비밀번호를 입력하세요.">
               <input class="input100" type="password" name="pass" placeholder="비밀번호">
               <span class="focus-input100"></span>
            </div>
            <div class="container-login100-form-btn">
               <button class="l">
                     로그인
               </button>
            </div>
            <div>
               <br>
               <br>
            </div>
            <div class="flex-c p-b-112" margin-right:20px;>
            <div id="naver_id_login" style="margin-right:20px;"></div><br><br>
           <script type="text/javascript">
           var naver_id_login = new naver_id_login("XqrfuHRaUDzQbxtUxyCT", "http://localhost/Mission-Spring/index.jsp");
           var state = naver_id_login.getUniqState();
           naver_id_login.setButton("white", 1,40);
           // 도메인 설정해야함
           naver_id_login.setDomain("http://localhost/Mission-Spring/index.jsp");
           naver_id_login.setState(state);
           naver_id_login.setPopup();
           naver_id_login.init_naver_id_login();
           </script>
           <script type="text/javascript">
           var naver_id_login = new naver_id_login("XqrfuHRaUDzQbxtUxyCT", "http://localhost/Mission-Spring/index.jsp");
           // 접근 토큰 값 출력
           alert(naver_id_login.oauthParams.access_token);
           // 네이버 사용자 프로필 조회
           naver_id_login.get_naver_userprofile("naverSignInCallback()");
           // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
           function naverSignInCallback() {
             alert(naver_id_login.getProfileData('email'));
             alert(naver_id_login.getProfileData('nickname'));
            alert(naver_id_login.getProfileData('age'));
  }
</script>
  <!-- 여기까지가 네이버 api 적용 -->
  <div></div>
 <a id="custom-login-btn" href="javascript:loginWithKakao()">
<img src="${ pageContext.request.contextPath }/resources/img/icons/kakao.PNG" alt="kakao" width="40" vspace="30" hspace="20" margin-right:20px;/>
</a>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('6f7340383c4163fc44790005db4e8d57');
 // 도메인 설정해야함
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
        success: function(authObj) {
          alert(JSON.stringify(authObj));
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
    };
  //]]>
</script>
<!-- 여기까지가 카카오api 적용 -->
<a href="#" onclick="fb_login();"><img src="${ pageContext.request.contextPath }/resources/img/icons/facebook.PNG" width="40" margin-right:20px; border="0" alt=""></a>
<script>window.fbAsyncInit = function() {
    FB.init({
        appId   : '1186646284870055',
        oauth   : true,
        status  : true, // check login status
        cookie  : true, // enable cookies to allow the server to access the session
        xfbml   : true // parse XFBML
    });

  };

function fb_login(){
    FB.login(function(response) {

        if (response.authResponse) {
            console.log('Welcome!  Fetching your information.... ');
            //console.log(response); // dump complete info
            access_token = response.authResponse.accessToken; //get access token
            user_id = response.authResponse.userID; //get FB UID

            FB.api('/me', function(response) {
                user_email = response.email; //get user email
          // you can store this data into your database             
            });

        } else {
            //user hit cancel button
            console.log('User cancelled login or did not fully authorize.');

        }
    }, {
        scope: 'publish_stream,email'
    });
}
(function() {
    var e = document.createElement('script');
    e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
    e.async = true;
    document.getElementById('fb-root').appendChild(e);
}());</script>
</div>
<div id="status">
            </div>
            <div class="text-center">
               <a href="${ pageContext.request.contextPath }/login/signUp" class="txt2 hov1">
                           회원가입
               </a>
            </div>
         </form>
      </div>
   </div>
</div>
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