<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="utf-8">
  <meta name="keywords" content="Online Entertainment, $10 Off withEmail Signup">
  <meta name="description" content="">
  <meta name="page_type" content="np-template-header-footer-from-plugin">
  <title>videoEdition</title>
  <!-- ok -->
  <link rel="stylesheet" href="/assignment/views/nicepage_editvideo.css" media="screen">
  <!-- ok -->
  <link rel="stylesheet" href="/assignment/views/videoEdition.css" media="screen">
  <!-- bootstrap -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
  <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
  <meta name="generator" content="Nicepage 4.3.3, nicepage.com">
  <link id="u-theme-google-font" rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">








  <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png",
		"sameAs": []
}</script>
  <meta name="theme-color" content="#478ac9">
  <meta property="og:title" content="videoEdition">
  <meta property="og:type" content="website">
</head>


<div>
			<nav>
				<div class="nav nav-tabs" id="myTab" role="tablist">
					<a class="nav-link active" id="videoEditting-tab" data-toggle="tab"
						href="#videoEditting" role="tab" aria-controls="videoEditting"
						aria-selected="true">Favorites</a> 
						
					<a class="nav-link"
						id="videoList-tab" data-toggle="tab" href="#videoList" role="tab"
						aria-controls="videoList" aria-selected="false">Favorite Users</a>
						
					<a class="nav-link"
						id="shareFriends-tab" data-toggle="tab" href="#shareFriends" role="tab"
						aria-controls="shareFriends" aria-selected="false">Share friends</a>	
				</div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade show active" id="videoEditting"
					role="tabpanel" aria-labelledby="videoEditting-tab">
					<jsp:include page="/views/admin/videos/editVideo.jsp"></jsp:include>
				</div>
				
				<div class="tab-pane fade" id="videoList" role="tabpanel"
					aria-labelledby="videoList-tab">
					<jsp:include page="/views/admin/videos/videoList.jsp"></jsp:include>
				</div>
				
				<div class="tab-pane fade" id="shareFriends" role="tabpanel"
					aria-labelledby="shareFriends-tab">
					<jsp:include page="/views/admin/videos/videoList.jsp"></jsp:include>
				</div>

			</div>
		</div>
