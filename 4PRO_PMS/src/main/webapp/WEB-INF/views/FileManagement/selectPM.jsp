<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="${path}/resources/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>pms</title>

    <meta name="description" content="" />

     <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="${path}/resources/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="${path}/resources/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="${path}/resources/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="${path}/resources/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="${path}/resources/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="${path}/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="${path}/resources/assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Helpers -->
    <script src="${path}/resources/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${path}/resources/assets/js/config.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <!-- Page CSS -->
     <script src="${path}/resources/assets/js/config.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="${path}/login.do" class="app-brand-link">
              <span class="app-brand-logo demo">
                <svg
                  width="25"
                  viewBox="0 0 25 42"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                >
                  <defs>
                    <path
                      d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                      id="path-1"
                    ></path>
                    <path
                      d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                      id="path-3"
                    ></path>
                    <path
                      d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                      id="path-4"
                    ></path>
                    <path
                      d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                      id="path-5"
                    ></path>
                  </defs>
                  <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                      <g id="Icon" transform="translate(27.000000, 15.000000)">
                        <g id="Mask" transform="translate(0.000000, 8.000000)">
                          <mask id="mask-2" fill="white">
                            <use xlink:href="#path-1"></use>
                          </mask>
                          <use fill="#696cff" xlink:href="#path-1"></use>
                          <g id="Path-3" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-3"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                          </g>
                          <g id="Path-4" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-4"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                          </g>
                        </g>
                        <g
                          id="Triangle"
                          transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) "
                        >
                          <use fill="#696cff" xlink:href="#path-5"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                        </g>
                      </g>
                    </g>
                  </g>
                </svg>
              </span>
              <span class="app-brand-text demo menu-text fw-bolder ms-2">4pro</span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
             <!-- Dashboard -->
            <li class="menu-item">
              <a href="${path}/goDS.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="????????????">????????????</div>
              </a>
            </li>
              <!--???????????? -->
            <li class="menu-item logout-li">
            	<div class="menu-link">
                <i class="menu-icon tf-icons bx bx-log-out"></i>
                <div data-i18n="????????????" onclick="logOut()">????????????</div>
                </div>
            </li>
            
            <!-- ???????????? ?????? -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">??????????????????</span></li>
            <li class="menu-item  active">
              <a href="${path}/PM.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="???????????? ??????">???????????? ??????</div>
              </a>
            </li>
            
			<!-- ???????????? -->
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text">????????????</span>
            </li>
            <!-- ????????? -->
            <li class="menu-item">
              <a href="${path}/calendar.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-table"></i>
                <div data-i18n="?????????">?????????</div>
              </a>
            </li>
            <!-- ???????????? -->
            <li class="menu-item">
              <a href="${path}/gantt.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="????????????">????????????</div>
              </a>
            </li>
            <!-- ???????????? -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">????????????</span></li>
            <!-- ?????? ?????? -->
            <li class="menu-item">
              <a href="${path}/allSchedule.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="?????? ??????">?????? ??????</div>
              </a>
            </li>
           
            <!-- ??????????????? -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">???????????????</span></li>
            <li class="menu-item">
              <a href="${path}/RM.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-error"></i>
                <div data-i18n="????????? ??????">????????? ??????</div>
              </a>
            </li> 

            <!-- ?????????????????? -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">??????????????????</span></li>
            <!-- Forms -->
            <li class="menu-item">
              <a href="${path}/hresList.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="??????????????????">??????????????????</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="${path}/hresPrjList.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="??????????????????">??????????????????</div>
              </a>
              </li>
              
              <li class="menu-item">
              <a href="${path}/join.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="????????????">????????????</div>
              </a>
              </li>
        
              
              <li class="menu-item ">
              <a href="${path}/hresInfo.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="??????????????????">??????????????????</div>
              </a>
              </li>
          
             <!-- ?????????????????? -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">??????????????????</span></li>

           
            <li class="menu-item">
              <a href="${path}/directMessage.do" target="_blank" class="menu-link">

                <i class="menu-icon tf-icons bx bx-message"></i>
                <div data-i18n="??????">??????</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="${path}/minutes.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-clipboard"></i>
                <div data-i18n="?????????">?????????</div>
              </a>
            </li>
          </ul>
          
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

    

          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content  ???????????? ?????????-->
            <div class="container-xxl flex-grow-1 container-p-y">
            	

              
              
        
	<div class="jumbotron text-center">
		<h2 class="plogo">???????????? ?????? ?????????</h2>
	</div>


	<div class="container" style="width:800px;">
	<div class="card">
		<form id="frm01" action="${path}/InsertPM.do" class="form" method="post" style="margin:50px;">
			 
			<div class="input-group mb-2 ">
			<div class="input-group-prepend ">
				<span class="text-center input-group-text ">?????????</span>
			</div>
			
			<input type="text"name="project_no" class="form-control" 
				value="${pmboard.project_no}" readonly/>	
		 </div>
		 
			<!--
			<div class="input-group-prepend">
				<span class="text-center input-group-text">???????????????</span>
			</div>
			<input name="refno" class="form-control" 
				value="${pmboard.refno}" readonly/>	
			 -->
			
		<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="text-center input-group-text">???????????? ???:</span>
				</div>
				<input name="pname" class="form-control" value="${pmboard.pname}"
					placeholder="???????????? ????????? ???????????????" readonly/>
			</div>

<nav class="navbar navbar-expand-sm">
			
			
			<div class="input-group mb-3">
			<div class="input-group-prepend" >
				<span class="text-center input-group-text" >??????????????? :</span>
			</div>
			<input name="pname" class="form-control" value="${pmboard.auth}"
				readonly/>
			</div>
			<div class="input-group mb-3">
			<div class="input-group-prepend" >
				<span class="text-center input-group-text" >????????? :</span>
			</div>
			<input name="name" class="form-control" value="${pmboard.name}"
				readonly/>
			</div>
			
			</nav>
			<nav class="navbar navbar-expand-sm">
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="text-center input-group-text">????????? :</span>
				</div>
				<input name="pname" class="form-control" value="${pmboard.readcnt}"
					readonly/>
			</div>
			
			<!-- ${pcategory} ${pmboard.progress}-->
			<!--  ????????? 
			
			
			 -->
			<div class="input-group mb-3">
			<div class="input-group-prepend" >
				<span class="text-center input-group-text" >???????????? ??????:</span>
			</div>
			<input name="pname" class="form-control" value="${pmboard.pcategory}"
				readonly />
			</div>
			
			<div class="input-group mb-3">
			<div class="input-group-prepend" >
				<span class="text-center input-group-text" >?????????:</span>
			</div>
			<input name="pname" class="form-control" value="${pmboard.progress}"
				readonly/>
			</div>
			</nav>
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="text-center input-group-text" >??? ???</span>
				</div>
				<textarea name="content" rows="5" class="form-control"
					placeholder="?????? ???????????????" readonly>${pmboard.content}</textarea>
			</div>



			<div class="text-right">	
			<button type="button" onclick="goMain()" class="btn btn-outline-info">????????????</button>
			<!-- ?????? ?????? ?????? -->
			
			</div>
		</form>
	</div>

</div>

	<script type="text/javascript">
	function updateProc(){
		if(confirm("?????????????????????????")){
			// ????????? check updateBoard.do
			var subjectVal = $("[name=project_no]").val();
		if (subjectVal == "") {
			alert("???????????? ???????????????");
			$("[name=project_no]").focus();
			return; // ??????????????? ?????? ??????
		}	
				
			$("form").attr("action","${path}/updateBoard.do");
			$("form").submit();
		}
	}
	function deleteProc(){
		if(confirm("?????????????????????????")){
			var subjectVal = $("[name=project_no]").val();
			if (subjectVal == "") {
				alert("???????????? ???????????????");
				$("[name=project_no]").focus();
				return; // ??????????????? ?????? ??????
			}	
			$("form").attr("action","${path}/deleteBoard.do");
			$("form").submit();		
		}
	}
	var proc = "${proc}"
		if(proc=="pmb"){
			if(confirm("????????????!\n??????????????????????????? ?????????????????????????")){
				location.href="${path}/PM.do";
			}
		}
		if(proc=="del"){
			alert("????????????\n?????? ????????????????????? ??????!")
			location.href="${path}/PM.do";
		}
	
		function goMain() {
			location.href = "${path}/PM.do";
		}
		
	</script>
	

	
		
		
		</div>
		</div>
		</div>
		</div>
		</div>
	
	 <!-- Page JS -->
    <script src="${path}/resources/assets/js/orderStatisticsChart.js"></script>
	<script type="text/javascript">
		function logOut(){
			if(confirm("???????????? ???????????????????")){
				alert("???????????? ???????????????. ????????? ???????????? ???????????????");
				location.href="${path}/logout.do";
			}
		}
	</script>

</body>
</html>