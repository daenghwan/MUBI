<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   int login = 0;
   int delete = 0;
   
   String id = "";

   if(session.getAttribute("login") != null) {
      login = (int)session.getAttribute("login");
   }
   
   if(session.getAttribute("delete") != null) {
      delete = (int)session.getAttribute("delete");
   }
   
   if(session.getAttribute("id") != null) {
      id = (String)session.getAttribute("id");
   }
%>
<!DOCTYPE html>
<html>
<style>
body, talbe, th, td, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6,
   pre, form, fieldset, textarea, blockquote, span, * {
   font-family: 'Noto Sans KR', sans-serif;
}

</style>
<head>
<meta charset="UTF-8">
   <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
   <!-- 
   <meta name-"viewport" content="속성"> 피시화면의 비율을 줄여 모바일  화면에서 보일 수 있도록 하는 기술
   initial-scale : 초기배율을 설정 기본값 1
   minimum-scale : viewport의 최소 배율값, 기본값은 0.25
   maximum-scale : viewport의 최대 배율값, 기본값은 1.6
   user-scalable : 사용자의 확대/축소 기능을 설정, 기본값을 yes입니다
   user-scalable=no : 화면확대 금지
   width=device-width : 디바이스 가로값 설정
    -->    
    
    
<title>Mubi</title>
<!-- CSS 경로  -->
   <link rel="stylesheet" href="assets/css/myPage.css">
   <link rel="stylesheet" href="assets/css/reset01.css">
   <link rel="stylesheet" href="assets/css/style02.css">
    <link rel="stylesheet" href="assets/css/swiper.css">
     <link rel="stylesheet" href="assets/css/font-awesome.css">
   
   <!-- 파비콘 -->
    <link rel="shortcut icon" href="assets/icons/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="assets/icons/favicon_72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="96x96" href="assets/icons/favicon_96.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/icons/favicon_144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="192x192" href="assets/icons/favicon_192.png" />
    
    <!-- 굳이 쓸모없음 -->
   
   <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
</head>
<script> // 로그아웃 후 뒤로가기 막기위해 사용 
window.history.forward();
   function noBack() {
      window.history.forward();
   }
 /* window.history.forward();
   int login = 0;
   function noBack() {
      if (session.getAttribute("login") == -1) {      // 이거 안되고 있음...
         window.history.forward();
      }
   }*/

</script>   <!--  onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="" -->
 
<body>
  <header id="header">
        <div class="container">
            <div class="row">
                <div class="header clearfix">
                    <h1>
                        <a href="index.jsp">
                            <em><img src="assets/img/logo.png" alt="MEGABOX"></em>   
                           <!--  <strong><img src="assets/img/logo-sub.png" alt="LIFE THEATER"></strong> -->
                        </a>
                    </h1>
                    <nav id="mNav">
                        <h2 class="ir_so">메가박스 전체메뉴</h2>
                        <a href="#" class="ham"><span></span></a>
                    </nav>
                    <nav class="nav">
                    <c:if test="${login != 1 || delete == 1 }">
                        <ul class="clearfix">
                           <!--  <li><a href="#">게시판</a></li> -->
                            <li><a href="login.jsp">로그인</a></li>
                            <li><a href="userJoin.jsp">회원가입</a></li>
                        </ul>
                    </c:if>
                    <c:if test="${login == 1}">
                        <ul class="clearfix">
                            <!-- <form action="logout.do" method="post" id="out">
                               <li onclick="out.submit()"><a href="#">로그아웃</a></li> -->
                               <li><a href="userUpdate.jsp">내정보수정</a></li>
                               <li><a href="rscreen.do">빠른 예매</a></li>
                               <li><a href="logout.do">로그아웃</a></li>
                            <!-- </form> -->
                        </ul>
                    </c:if>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- //header -->
    
  
     <div>
      <div class="my-page-container">
         <div class="my-page-wrapper">
            <div class="my-page-header">예약한 영화 목록</div>
            <div class="movie-reserve-list">
            
               
               <c:forEach var="tvo" items="${tlist1 }">
               	<div class="movie-reserve">
                  
                  <div class="movie-reserve-title">${tvo.title }</div>
                  <div class="movie-reserve-theater-wrapper">
                     <div>${tvo.theater }</div>
                     
                  </div>
                  <div class="movie-reserve-date-wrapper">
                     <div class="movie-reserve-date">${tvo.scheduleDate }</div>
                     <div class="movie-reserve-runningTime">${tvo.scheduleTime }</div>
                  </div>
                  <div class="movies"></div>

                  <div class="pay-information-wrapper">
                     

                     <div class="pay-information-money-wrapper">
                        <div class="pay-information-money-title">결제한 비용</div>
                        <div class="pay-information-money">${tvo.price }원</div>
                     </div>

                     <div class="barcode-wrapper">
                        <div>MUBI</div>
                        <img src="https://www.shutterstock.com/image-vector/barcode-on-white-background-vector-260nw-1490283347.jpg">
                     </div>

                  </div>
               </div>
               </c:forEach>
            </div>
         </div>
      </div>
   </div>
                

    
    
    
   
                  
    


    <footer id="footer" class="footer">
        <div id="footer_sns">
            <div class="container">
                <div class="footer_sns">
                    <ul>
                        <li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
                        <li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
                        <li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
                        <li class="icon s4"><a href="#"><span class="ir_pm">구글 플레이</span></a></li>
                        <li class="icon s5"><a href="#"><span class="ir_pm">아이폰 앱스토어</span></a></li>
                    </ul>    
                    <div class="tel">
                        <a href="#">ARS <em>1544-0070</em></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer_infor">
            <div class="container">
                <div class="row">
                    <div class="footer_infor">
                        <h2><a href="index.jsp"><img src="assets/img/logo_footer.png" alt="megabox"></a></h2>
                        <ul>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">채용정보</a></li>
                            <li><a href="#">제휴/광고/부대사업 문의</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">윤리경영</a></li>
                        </ul>
                        <address>
                            <p>서울특별시 동작구 노량진동, 2층 Mubi(주) (노량진, KG아이티뱅크)<br><span class="bar2">대표자명 김동환</span> 개인정보보호 책임자 경영지원실 실장 김지은<br><span class="bar2">사업자등록번호 031-123-59478</span> 통신판매업신고번호 제 777호</p>
                            <p>Copyright 2014 by MegaboxJoongAng Inc. All right reserved</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </footer>
  
    <!-- //footer -->


<!-- 자바스크립트 라이브러리 -->
   <script src="assets/js/jquery.min_1.12.4.js"></script>
    <script src="assets/js/modernizr-custom.js"></script>
    <script src="assets/js/ie-checker.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container',{
            pagination: {
                el: '.swiper-pagination',
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            autoplay: {
                delay: 5000,
            },
        });
    </script>
</body>
</html>