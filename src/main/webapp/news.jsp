<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NEWS</title>
<link href="soccer.ico" rel="icon" type="image/x-icon" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar light bg-light">
	<div class="container">
		<a class="navbar-brand" href="/soccer/home.jsp">
   			<img src="images/soccer_logo.ico" alt="로고" width="150" height="70">	
		</a>
	</div>
	
</nav>
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark mb-5">
	<div class="container">		
		<div class ="navbar-toggler">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" 
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse justify-content-center" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="/soccer/news.jsp">NEWS</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" aria-current="page" href="/soccer/goals.jsp">GOALS</a>
				</li>
			</ul>
		</div>
		<!-- 
			네비바 드롭다운으로 페이지 이동
		 -->
		<ul class="nav nav-tabs">
			<li class="nav-item dropdown">
   			 	<a class="navbar-toggler-icon" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false"></a>
    			<ul class="dropdown-menu">
      				<li><a class="dropdown-item" href="/soccer/home.jsp">홈</a></li>
     				<li><a class="dropdown-item" href="/soccer/league.jsp">리그</a></li>
      				<li><a class="dropdown-item" href="/soccer/home.jsp">굿즈</a></li>
      				<li><hr class="dropdown-divider"></li>
      				<li><a class="dropdown-item" href="/soccer/news.jsp">뉴스</a></li>
    			</ul>
  			</li>
  		</ul>
	</div>
</nav>
<div class="container">
	<div class="card mb-2" style="max-width: 100%;">
  		<div class="row g-0">
    		<div class="col-md-4">
      			<a class="card-img" href="/soccer/news.jsp">
      			<img src="images/real.jpeg" class="img-fluid rounded-start" alt="레알마드리드 우승">
				</a>
    		</div>
   			 <div class="col-md-8">
      			<div class="card-body">
        			<h5 class="card-title">레알마드리드 챔피언스리그 우승</h5>
        			<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
       				<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      			</div>
    		</div>
  		</div>
	</div>

		<div class="card mb-2" style="max-width: 100%;">
  		<div class="row g-0">
    		<div class="col-md-4">
    			<a class="card-img" href="/soccer/news.jsp">
      			<img src="images/real.jpeg" class="img-fluid rounded-start" alt="레알마드리드 우승">
    			</a>
    		</div>
   			 <div class="col-md-8">
      			<div class="card-body">
        			<h5 class="card-title">레알마드리드 챔피언스리그 우승</h5>
        			<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
       				 <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      			</div>
    		</div>
  		</div>
	</div>
		<div class="card mb-2" style="max-width: 100%;">
  		<div class="row g-0">
    		<div class="col-md-4">
      			<a class="card-img" href="/soccer/news.jsp">
      			<img src="images/real.jpeg" class="img-fluid rounded-start" alt="레알마드리드 우승">
    			</a>
    		</div>
   			 <div class="col-md-8">
      			<div class="card-body">
        			<h5 class="card-title">레알마드리드 챔피언스리그 우승</h5>
        			<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
       				 <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      			</div>
    		</div>
  		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>