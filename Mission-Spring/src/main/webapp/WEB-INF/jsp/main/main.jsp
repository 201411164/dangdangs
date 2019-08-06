<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<html>
<head>

		<title>DANGDANG'S</title>
 
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
      	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/animate.css">
        <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/style.css">
        <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/media-queries.css">

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="${ pageContext.request.contextPath }/resources/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ pageContext.request.contextPath }/resources/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${ pageContext.request.contextPath }/resources/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${ pageContext.request.contextPath }/resources/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="${ pageContext.request.contextPath }/resources/ico/apple-touch-icon-57-precomposed.png">

</head>





    <body>

        <!-- Top content -->
        <div class="top-content">
             <div class="row no-gutters">
                <div class="col">
                   <div id="carousel-example" class="carousel slide" data-ride="carousel">
                      
                      <div class="carousel-inner">
                         <div class="carousel-item active">
                            <img src="${ pageContext.request.contextPath }/resources/img/backgrounds/1.jpg" class="d-block w-100" alt="img1">
                        <div class="carousel-caption">
                            <p class="wow fadeInLeftBig" 
                            p style="font-size:2.7em;font-weight:300";>               소중한 우리 아이<br></p>
                            <p class="wow fadeInLeftBig" 
                            p style="font-size:2.7em;font-weight:800";>더 이상 아프지 않도록</p>
                           <p class="wow fadeInLeftBig" p style="font-size:1.1em;
                           font-weight:400";>이제 우리 댕댕이가 어떤 병에 걸렸는지, <br>어떻게 치료해야 할 지 알아보세요. 
                          
                       </p>
                           <div class="description wow fadeInUp" >
                              <button type="button" class="btn btn-outline-light"  onclick="location.href='${ pageContext.request.contextPath }/diag/selectAge'">진단하러 가기
                               
                              </button>
                              <ol class="carousel-indicators" style="position: absolute; top: 105%; left : 35%;transform : translate(-50%,-50%);" >
                         
                         <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                         <li data-target="#carousel-example" data-slide-to="1"></li>
                         <li data-target="#carousel-example" data-slide-to="2"></li>                      
                      </ol>
                           </div>
                        </div>
                         </div>
                         <div class="carousel-item">
                            <img src="${ pageContext.request.contextPath }/resources/img/backgrounds/2.jpg" class="d-block w-100" alt="img2">
                            <div class="carousel-caption">
                             <p style="font-size:2.7em;font-weight:300";>               소중한 우리 아이<br></p>
                            <p style="font-size:2.7em;font-weight:800";>더 이상 아프지 않도록</p>
                           <p style="font-size:1.1em;
                           font-weight:400";>이제 우리 댕댕이가 어떤 병에 걸렸는지, <br>어떻게 치료해야 할 지 알아보세요.
                          


                            </p>
                           <div class="description wow fadeInUp">
                           <button type="button" class="btn btn-outline-light" onclick="location.href='${ pageContext.request.contextPath }/diag/selectAge'">진단하러 가기
                           
                      </button>
                      <ol class="carousel-indicators" style="position: absolute; top: 105%; left : 35%;transform : translate(-50%,-50%);" >
                         
                         <li data-target="#carousel-example" data-slide-to="0" ></li>
                         <li data-target="#carousel-example" data-slide-to="1" class="active"></li>
                         <li data-target="#carousel-example" data-slide-to="2"></li>                      
                      </ol>
                           </div>
                        </div>
                         </div>
                         <div class="carousel-item">
                            <img src="${ pageContext.request.contextPath }/resources/img/backgrounds/3.jpg" class="d-block w-100" alt="img3">
                            <div class="carousel-caption">
                           <p style="font-size:2.7em;font-weight:300";>               소중한 우리 아이<br></p>
                            <p style="font-size:2.7em;font-weight:800";>더 이상 아프지 않도록</p>
                           <p style="font-size:1.1em;
                           font-weight:400";>이제 우리 댕댕이가 어떤 병에 걸렸는지, <br>어떻게 치료해야 할 지 알아보세요.
                           

                            </p>
                           <div class="description wow fadeInUp">
                                 <button type="button" class="btn btn-outline-light" onclick="location.href='${ pageContext.request.contextPath }/diag/selectAge'">진단하러 가기
                                 
                                 </button>
                                 <ol class="carousel-indicators" style="position: absolute; top: 105%; left : 35%;transform : translate(-50%,-50%);" >
                         
                         <li data-target="#carousel-example" data-slide-to="0" ></li>
                         <li data-target="#carousel-example" data-slide-to="1" ></li>
                         <li data-target="#carousel-example" data-slide-to="2" class="active"></li>                      
                      </ol>
                                 
                           </div>
                        </div>
                         </div>
                      </div>
                  <a class="carousel-control-prev" href="#carousel-example" role="button" data-slide="prev"  >
                     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                     <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carousel-example" role="button" data-slide="next">
                     <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     <span class="sr-only">Next</span>
                  </a>
                   </div>
                </div>
             </div>
        </div>
        

        

    </body>

<!-- Javascript -->
      <script src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
      <script src="${ pageContext.request.contextPath }/resources/js/jquery-migrate-3.0.0.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
      <script src="${ pageContext.request.contextPath }/resources/js/jquery.backstretch.min.js"></script>
        <script src="${ pageContext.request.contextPath }/resources/js/wow.min.js"></script>
        <script src="${ pageContext.request.contextPath }/resources/js/waypoints.min.js"></script>
        <script src="${ pageContext.request.contextPath }/resources/js/scripts.js"></script>
</html>