<%@page import="vo.News"%>
<%@page import="vo.Pagination"%>
<%@page import="java.util.List"%>
<%@page import="dao.NewsDao"%>
<%@page import="util.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NEWS</title>
<link href="soccer.ico" rel="icon" type="image/x-icon" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="common/nav_news.jsp">
	<jsp:param name="menu" value="news"/>
</jsp:include>
<div class="contaniner">
	<div class="row">
		<div class="col">
		<%
			int currentPage = StringUtil.stringToInt(request.getParameter("page"),1);
			int rows = StringUtil.stringToInt(request.getParameter("rows"),5);
			
			NewsDao newsDao = NewsDao.getInstance();
			
			int totalrows = newsDao.getTotalRows();
			
			Pagination pagination = new Pagination(rows, totalrows, currentPage);
			
			List<News> newsList = newsDao.getNews(pagination.getBeginIndex(), pagination.getEndIndex());
		%>
		<div class="container" style=" cursor: pointer;" onclick="location.href='newsDetail.jsp';">
			<div class="card mb-2" style="max-width: 100%;">
		  		<div class="row g-0">
		    		<div class="col-md-4">
		      			<img src="../News/1.png" class="img-fluid rounded-start" style="width:100%" alt="레알마드리드 우승">
		    		</div>
		   			 <div class="col-md-8">
		      			<div class="card-body">
		        			<h5 class="card-title"><strong>비니시우스 결승골 레알 마드리드, 리버풀에 1-0승</strong></h5>
		        			<p class="card-text">"레알 마드리드가 비니시우스의 결승골과 쿠르투아의 선방쇼 활약에 힘입어 통산 14번째 빅이어를 품으면서 또 한 번의 역사를 썼다. 반면 리버풀은 경기를 지배했음에도 결과적으로 득점을 뽑아내지 못하면서 복수에 실패했다.</p>
							<p class="card-text"> 레알 마드리드는 29일 오전 4시 36분(한국시간) 프랑스 생드니에 위치한 스타드 드 프랑스에서 열린 리버풀과의 2021-22시즌 유럽축구연맹(UEFA) 챔피언스리그(UCL) 결승전에서 1-0으로 승리했다. 비니시우스의 결승골을 끝까지 지켜내며 우승에 성공했다."</p>
		       				<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		      			</div>
		    		</div>
		  		</div>
			</div>
			<div class="row">
				<div class="col">
					<nav>
						<ul class="pagination justify-content-center">
							<li class="page-item">
								<a class="page-link <%=pagination.getCurrentPage() == 1 ? "disabled" : "" %>" href="javascript:clickPageNo(<%=pagination.getCurrentPage() - 1 %>)">이전</a>
							</li>
					<%
						for (int num = pagination.getBeginPage(); num <= pagination.getEndPage(); num++) {
					%>
							
							<li class="page-item">
								<a class="page-link <%=pagination.getCurrentPage() == num ? "active" : "" %>" href="javascript:clickPageNo(<%=num %>)"><%=num %></a>
							</li>
					<%
						}
					%>
							<li class="page-item">
								<a class="page-link<%=pagination.getCurrentPage() == pagination.getTotalPages() ? "disabled" : "" %>" href="javascript:clickPageNo(<%=pagination.getCurrentPage() + 1 %>)">다음</a>
							</li>
		 				</ul>
					</nav>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>