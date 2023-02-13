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
	<link rel="stylesheet" href="assets/css/review.css">
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
		if (session.getAttribute("login") == -1) {		// 이거 안되고 있음...
			window.history.forward();
		}
	}*/

</script>	<!--  onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="" -->
 
<body>
  <header id="header">
        <div class="container">
            <div class="row">
                <div class="header clearfix">
                    <h1>
                        <a href="index.jsp">
                            <em><img src="assets/img/logo.png" alt="MEGABOX"></em>   
                        <!--     <strong><img src="assets/img/logo-sub.png" alt="LIFE THEATER"></strong> -->
                        </a>
                    </h1>
                    <nav id="mNav">
                        <h2 class="ir_so">메가박스 전체메뉴</h2>
                        <a href="#" class="ham"><span></span></a>
                    </nav>
                    <nav class="nav">
                    <c:if test="${login != 1 || delete == 1 }">
                        <ul class="clearfix">
                            <li><a href="login.jsp">로그인</a></li>
                            <li><a href="userJoin.jsp">회원가입</a></li>
                        </ul>
                    </c:if>
                    <c:if test="${login == 1}">
                        <ul class="clearfix">
                            <!-- <form action="logout.do" method="post" id="out">
                            	<li onclick="out.submit()"><a href="#">로그아웃</a></li> -->
                            	<li><a href="userUpdate.jsp">내정보수정</a></li>
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
    
    
   
    
        
    <section id="movie">
        <div class="container">
            <div class="row">
                <div class="movie">
                    <h2 class="ir_so">최신 영화 정보</h2>
                    <div class="movie_title">
                        <ul>
                            <li class="active"><a href="#">영화정보</a></li>
                         <!--    <li><a href="#">최신개봉작</a></li>
                            <li><a href="#">상영예정작</a></li>
                            <li><a href="#">큐레이션</a></li> -->
                        </ul>
                    </div>
                    <div class="movie_chart">
                        <div class="chart_cont1">
                            <div>
                                <div class="poster">
                                  <figure>
                                        <img src="assets/img/영웅포스터01.jpg" srcset="assets/img/영웅포스터01@.jpg 2x"  alt="영웅">
                                    </figure>
                            </div>
                           
                       </div>
                        
                       
                                    <h1>영웅</h1>

                              
                            <hr>
                            어머니 ‘조마리아’(나문희)와 가족들을 남겨둔 채 고향을 떠나온 대한제국 의병대장 ‘안중근’(정성화). 동지들과 함께 네 번째 손가락을 자르는 
                            단지동맹으로 조국 독립의 결의를 다진 안중근은 조선 침략의 원흉인 ‘이토 히로부미’를 3년 내에 처단하지 못하면 자결하기로 피로 맹세한다. 
                            그 약속을 지키기 위해 블라디보스토크를 찾은 안중근. 오랜 동지 ‘우덕순’(조재윤), 명사수 ‘조도선’(배정남), 독립군 막내 ‘유동하’(이현우), 독립군을 보살피는 동지 ‘마진주’(박진주)와 함께 거사를 준비한다.
                             한편 자신의 정체를 감춘 채 이토 히로부미에게 접근해 적진 한복판에서 목숨을 걸고 정보를 수집하던 독립군의 정보원 ‘설희’(김고은)는 이토 히로부미가 곧 러시아와의 회담을 위해 하얼빈을 찾는다는 일급 기밀을 다급히 전한다. 
                             드디어 1909년 10월 26일,이날만을 기다리던 안중근은 하얼빈역에 도착한 이토 히로부미를 향해 주저 없이 방아쇠를 당긴다. 현장에서 체포된 그는 전쟁 포로가 아닌 살인의 죄목으로, 
                             조선이 아닌 일본 법정에 서게 되는데… 누가 죄인인가, 누가 영웅인가!
                            <br><br><br><br><br><br><br><br><br>
                          
                          
                            
   
							<a href="rscreen.do"><button class="blue">예매하기</button></a>


                            
                       </div>
                          
                    </div>
                           <hr>
 <form class="mb-3" name="myform" id="myform" method="post">
	<fieldset>
		
		<input type="radio" name="reviewStar" value="5" id="rate1"><label
			for="rate1">★</label>
		<input type="radio" name="reviewStar" value="4" id="rate2"><label
			for="rate2">★</label>
		<input type="radio" name="reviewStar" value="3" id="rate3"><label
			for="rate3">★</label>
		<input type="radio" name="reviewStar" value="2" id="rate4"><label
			for="rate4">★</label>
		<input type="radio" name="reviewStar" value="1" id="rate5"><label
			for="rate5">★</label>
	</fieldset>
	<div>
		<textarea class="col-auto form-control" type="text" id="reviewContents"
				  placeholder="영화 리뷰를 남겨주세요"></textarea>
				  			<div style="float: right;">
							<button class="blue" >리뷰 작성</button>
				  			</div>
	</div>
</form>				
                           
                
                </div>
                           
            </div>
                            
        </div>
                         
    </section>
    <!-- //movie -->
                      
    
    <!-- movie  -->
    
	<!-- end 배너  -->




    <footer id="footer">
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