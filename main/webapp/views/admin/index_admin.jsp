<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">

<head>
    <title>${page.title}</title>
   
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

      <link rel="stylesheet" href="/assignment/views/nicepage.css" media="screen">
    <link rel="stylesheet" href="/assignment/views/home.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.3.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

</head>

<body>
    <!-- main class container style="background-color: yellowgreen;" -->
    <main class="container" >
        <header class="row pt-5 pb-3">
            <!-- style="background-color: antiquewhite;" -->
            <div class="col-8" >
                <h1 style="padding-left: 30px;">Admin Tool</h1>
            </div>
            <div class="col-3">
                <img src="https://fpt.edu.vn/Content/images/assets/Poly.png" style="width: 100%; padding-left: -30px;" alt="" >
            </div>


        </header>
        <hr>
        <nav class="row" style=" font-size: 23px; font-weight: bold; cursor: pointer;">

            <div class="u-custom-menu u-nav-container">
                <ul class="u-nav u-spacing-30 u-unstyled u-nav-1">
                    <li class="u-nav-item"><a
                            class="u-border-4 u-border-active-grey-75 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90"
                            style="padding: 2px 42px;" href="/assignment/UsersHomeServlet">Home</a>
                    <li class="u-nav-item"><a
                            class="u-border-4 u-border-active-grey-75 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90"
                            href="My-Account.html" style="padding: 2px 40px 2px 42px;">Report Users</a>
                        <div class="u-nav-popup">
                            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2">
                                <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="/assignment/UsersManagementServlet">User Management</a>
                                </li>
                   
                                <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="/assignment/RegisServlet">....</a>
                                </li>
  
                                
                            </ul>
                        </div>
                    </li>
                    <li class="u-nav-item"><a
                            class="u-border-4 u-border-active-grey-75 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90"
                            href="My-Account.html" style="padding: 2px 40px 2px 42px;">Report Videos</a>
                        <div class="u-nav-popup">
                            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2">
                                <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="/assignment/Admin/VideosManagement">Video Management</a>
                                </li>
                   
                                <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="/assignment/slSeverlet">Favorite Count</a>
                                </li>
                                
                                <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="/assignment/Keywordservlet">Find Videos</a>
                                </li>
                               
                            </ul>
                        </div>
                    </li>
                   
                    <li class="u-nav-item"><a
                            class="u-border-4 u-border-active-grey-75 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90"
                            href="My-Account.html" style="padding: 2px 40px 2px 42px;">My Account</a>
                        <div class="u-nav-popup">
                            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2">
                                <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="/assignment/views/login/login.jsp">Login</a>
                                </li>
                   
                                <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="/assignment/views/login/register.jsp">Registration</a>
                                </li>
                                
                                <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="/assignment/views/login/chancePass.jsp">Chance Password</a>
                                </li>
                                <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="/assignment/views/login/editProfile.jsp">Edit Profile</a>
                                </li>
                                <li class="u-nav-item"><a class="u-button-style u-nav-link u-white">Logoff</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <hr>
        <div style="position: relative; right: 14px;">

            <jsp:include page="${page.contenUrl}"></jsp:include>
         
        </div>
        <br>
        <br>
        <!-- trang next duoi  -->
        

    </main>
    <footer class="u-clearfix u-footer u-grey-80" id="sec-d4e5">
        <div class="u-clearfix u-sheet u-sheet-1">
            <div class="u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
                <div class="u-gutter-0 u-layout">
                    <div class="u-layout-row">
                        <div
                            class="u-align-center-sm u-align-center-xs u-align-left-md u-align-left-xl u-container-style u-layout-cell u-left-cell u-size-20 u-size-20-md u-layout-cell-1">
                            <div class="u-container-layout u-valign-middle u-container-layout-1">
                                <!--position-->
                                <div data-position="" class="u-position">
                                    <!--block-->
                                    <div class="u-block">
                                        <div class="u-block-container u-clearfix">
                                            <!--block_header-->
                                            <h5 class="u-block-header u-text">
                                                <!--block_header_content--> Block header
                                                <!--/block_header_content-->
                                            </h5>
                                            <!--/block_header-->
                                            <!--block_content-->
                                            <div class="u-block-content u-text">
                                                <!--block_content_content--> Block contedasdsadnt. Lorem ipsum dolor sit amet,
                                                consectetur adipiscing
                                                elit nullam nunc justo sagittis suscipit ultrices.
                                                <!--/block_content_content-->
                                            </div>
                                            <!--/block_content-->
                                        </div>
                                    </div>
                                    <!--/block-->
                                </div>
                                <!--/position-->
                            </div>
                        </div>
                        <div
                            class="u-align-center-sm u-align-right-md u-container-style u-layout-cell u-size-20 u-size-20-md u-layout-cell-2">
                            
                        </div>
                        <div
                            class="u-align-center-sm u-align-center-xs u-align-left-md u-align-right-lg u-align-right-xl u-container-style u-layout-cell u-right-cell u-size-20 u-size-20-md u-layout-cell-3">
                            
                            <div class="u-container-layout u-valign-middle u-container-layout-3">
                                <!-- icon xiu xiu  -->
                                <div class="u-social-icons u-spacing-10 u-social-icons-1" style="position: relative; left: -100px;">
                                    <a class="u-social-url" title="facebook" target="_blank" href=""><span
                                            class="u-icon u-social-facebook u-social-icon u-icon-1"><svg
                                                class="u-svg-link" preserveAspectRatio="xMidYMin slice"
                                                viewBox="0 0 112 112" style="">
                                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-d108">
                                                </use>
                                            </svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0"
                                                id="svg-d108">
                                                <circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle>
                                                <path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
                    c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path>
                                            </svg></span>
                                    </a>
                                    <a class="u-social-url" title="twitter" target="_blank" href=""><span
                                            class="u-icon u-social-icon u-social-twitter u-icon-2"><svg
                                                class="u-svg-link" preserveAspectRatio="xMidYMin slice"
                                                viewBox="0 0 112 112" style="">
                                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f5e8">
                                                </use>
                                            </svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0"
                                                id="svg-f5e8">
                                                <circle fill="currentColor" class="st0" cx="56.1" cy="56.1" r="55">
                                                </circle>
                                                <path fill="#FFFFFF" d="M83.8,47.3c0,0.6,0,1.2,0,1.7c0,17.7-13.5,38.2-38.2,38.2C38,87.2,31,85,25,81.2c1,0.1,2.1,0.2,3.2,0.2
                    c6.3,0,12.1-2.1,16.7-5.7c-5.9-0.1-10.8-4-12.5-9.3c0.8,0.2,1.7,0.2,2.5,0.2c1.2,0,2.4-0.2,3.5-0.5c-6.1-1.2-10.8-6.7-10.8-13.1
                    c0-0.1,0-0.1,0-0.2c1.8,1,3.9,1.6,6.1,1.7c-3.6-2.4-6-6.5-6-11.2c0-2.5,0.7-4.8,1.8-6.7c6.6,8.1,16.5,13.5,27.6,14
                    c-0.2-1-0.3-2-0.3-3.1c0-7.4,6-13.4,13.4-13.4c3.9,0,7.3,1.6,9.8,4.2c3.1-0.6,5.9-1.7,8.5-3.3c-1,3.1-3.1,5.8-5.9,7.4
                    c2.7-0.3,5.3-1,7.7-2.1C88.7,43,86.4,45.4,83.8,47.3z"></path>
                                            </svg></span>
                                    </a>
                                    <a class="u-social-url" title="instagram" target="_blank" href=""><span
                                            class="u-icon u-social-icon u-social-instagram u-icon-3"><svg
                                                class="u-svg-link" preserveAspectRatio="xMidYMin slice"
                                                viewBox="0 0 112 112" style="">
                                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b5d6">
                                                </use>
                                            </svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0"
                                                id="svg-b5d6">
                                                <circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle>
                                                <path fill="#FFFFFF"
                                                    d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
                    z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z">
                                                </path>
                                                <path fill="#FFFFFF"
                                                    d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z">
                                                </path>
                                                <path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
                    C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
                    c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path>
                                            </svg></span>
                                    </a>
                                    <a class="u-social-url" title="linkedin" target="_blank" href=""><span
                                            class="u-icon u-social-icon u-social-linkedin u-icon-4"><svg
                                                class="u-svg-link" preserveAspectRatio="xMidYMin slice"
                                                viewBox="0 0 112 112" style="">
                                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-32fb">
                                                </use>
                                            </svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0"
                                                id="svg-32fb">
                                                <circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle>
                                                <path fill="#FFFFFF" d="M41.3,83.7H27.9V43.4h13.4V83.7z M34.6,37.9L34.6,37.9c-4.6,0-7.5-3.1-7.5-7c0-4,3-7,7.6-7s7.4,3,7.5,7
                    C42.2,34.8,39.2,37.9,34.6,37.9z M89.6,83.7H76.2V62.2c0-5.4-1.9-9.1-6.8-9.1c-3.7,0-5.9,2.5-6.9,4.9c-0.4,0.9-0.4,2.1-0.4,3.3v22.5
                    H48.7c0,0,0.2-36.5,0-40.3h13.4v5.7c1.8-2.7,5-6.7,12.1-6.7c8.8,0,15.4,5.8,15.4,18.1V83.7z"></path>
                                            </svg></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- <section class="u-backlink u-clearfix u-grey-80">
        <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
          <span>Website Templates</span>
        </a>
        <p class="u-text">
          <span>created with</span>
        </p>
        <a class="u-link" href="" target="_blank">
          <span>Website Builder Software</span>
        </a>.
      </section> -->
	<c:if test="${not empty page.scripUrl}">
		<jsp:include page="${page.scripUrl}"></jsp:include>
	</c:if>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>