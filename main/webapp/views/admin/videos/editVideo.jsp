<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html style="font-size: 16px;">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords"
	content="Online Entertainment, $10 Off withEmail Signup">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>videoEdition</title>
<!-- ok -->
<link rel="stylesheet" href="/assignment/views/nicepage_editvideo.css"
	media="screen">
<!-- ok -->
<link rel="stylesheet" href="/assignment/views/videoEdition.css"
	media="screen">
<!-- bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!--  
<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="nicepage.js"
	defer=""></script>
-->	
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

<body class="u-body">
	<form action="/assignment/Admin/VideosManagement" method="post"
		enctype="multipart/form-data">
		<section class="u-clearfix u-section-1" id="sec-e085">
			<div class="u-clearfix u-sheet u-sheet-1">
				<div
					class="u-clearfix u-expanded-width u-gutter-20 u-layout-wrap u-layout-wrap-1">
					<div class="u-layout">
						<div class="u-layout-row">
							<!-- div1  -->
							<div
								class="u-container-style u-layout-cell u-size-30 u-layout-cell-1">
								<div
									class="u-border-1 u-border-grey-75 u-container-layout u-valign-bottom u-container-layout-1">
									<div class="u-expanded-width u-video u-video-contain u-video-1">
										<div class="embed-responsive embed-responsive-1">
											<iframe
												style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
												class="embed-responsive-item"
												src="https://www.youtube.com/embed/B9YKnNtFqds?mute=0&amp;showinfo=0&amp;controls=0&amp;start=0"
												frameborder="0" allowfullscreen=""></iframe>

										</div>
										<hr>

									</div>
									<section>
										<div style="position: relative; left: 90px;">
											<br> <br>
											<button class="btn btn-primary"
												formaction="/assignment/Admin/VideosManagement/create">Create</button>
											<button class="btn btn-warning"
												formaction="/assignment/Admin/VideosManagement/update">Update</button>
											<button class="btn btn-danger"
												formaction="/assignment/Admin/VideosManagement/delete">Delete</button>
											<button class="btn btn-info"
												formaction="/assignment/Admin/VideosManagement/reset">Reset</button>
										</div>
									</section>
								</div>
							</div>
							<!-- div2  -->
							<div
								class="u-container-style u-layout-cell u-size-30 u-layout-cell-2">
								<div
									class="u-border-1 u-border-grey-75 u-container-layout u-valign-middle u-container-layout-2">

									<div class="col">
										<div class="row">
											<div class="col">


												<div class="form-group">
													<label for="videoID">You Tube ID</label> <input type="text"
														id="videoID" name="videoID" class="form-control" value="${videoEdit.videoID}" />
												</div>
												<div class="form-group">
													<label for="fullname">Video Title</label> <input
														type="text" id="videoTitle" name="videoTitle"
														class="form-control" value="${videoEdit.title}"/>
												</div>
												<div class="form-group">
													<label for="fullname">View Count</label> <input type="text"
														id="videoCount" name="videoCount" class="form-control"value="${videoEdit.views}" />
												</div>
												<div class="form-group">

													<div class="form-check form-check-inline">
														<input type="radio" class="form-check-input"
															id="active" name="active" value="true" ${videoEdit.active? 'checked' : ''}  /> <label>Active</label>
													</div>
													<div class="form-check form-check-inline">
														<input type="radio" class="form-check-input"
															id="Inactive" name="active" value="false"  ${!videoEdit.active? 'checked' : ''}/> <label>Inactive</label>

													</div>
												</div>
												<div class="form-group">
													<label for="note">Description</label>
													<textarea name="note" id="note" cols="30" rows="3"
														class="form-control" value="">${videoEdit.description}</textarea>
												</div>
												<div>
													<c:if test="${not empty messageVideo}">
														<div class="alert alert-success">${messageVideo}</div>
													</c:if>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>





	<!-- <section class="u-clearfix u-section-5" id="sec-9d7a">
    <div class="u-clearfix u-sheet u-sheet-1"></div>
  </section> -->


	<!-- popuppp -->

	<!-- <style>
    .u-section-9 {
      min-height: 826px;
    }

    .u-section-9 .u-dialog-1 {
      width: 566px;
      min-height: 431px;
      margin: 60px auto;
    }

    .u-section-9 .u-container-layout-1 {
      padding: 40px 30px;
    }

    .u-section-9 .u-text-1 {
      text-transform: uppercase;
      letter-spacing: 5px;
      margin: 0 auto;
    }

    .u-section-9 .u-text-2 {
      font-size: 2.5rem;
      text-transform: uppercase;
      letter-spacing: 2px;
      margin: 21px auto 0;
    }

    .u-section-9 .u-form-1 {
      height: 104px;
      width: 400px;
      margin: 19px auto 0;
    }

    .u-section-9 .u-form-group-1 {
      width: 100%;
    }

    .u-section-9 .u-label-1 {
      font-size: 1rem;
    }

    .u-section-9 .u-form-group-2 {
      width: 100%;
    }

    .u-section-9 .u-btn-1 {
      padding-left: 60px;
      padding-right: 60px;
      background-image: none;
      border-style: none;
      text-transform: none;
      width: 100%;
    }

    .u-section-9 .u-icon-1 {
      width: 15px;
      height: 15px;
      left: auto;
      top: 17px;
      position: absolute;
      right: 16px;
    }

    @media (max-width: 991px) {
      .u-section-9 .u-container-layout-1 {
        padding-bottom: 30px;
      }
    }

    @media (max-width: 767px) {
      .u-section-9 .u-dialog-1 {
        width: 540px;
      }

      .u-section-9 .u-container-layout-1 {
        padding-top: 30px;
        padding-left: 40px;
        padding-right: 40px;
      }
    }

    @media (max-width: 575px) {
      .u-section-9 .u-dialog-1 {
        width: 340px;
        min-height: 400px;
        height: auto;
      }

      .u-section-9 .u-container-layout-1 {
        padding-top: 40px;
        padding-left: 25px;
        padding-right: 25px;
      }

      .u-section-9 .u-text-2 {
        font-size: 2.125rem;
      }

      .u-section-9 .u-form-1 {
        height: 152px;
        margin-right: initial;
        margin-left: initial;
        width: auto;
      }
    }
  </style> -->

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

</body>

</html>