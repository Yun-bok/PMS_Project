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
    <!-- Helpers -->
    <script src="${path}/resources/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${path}/resources/assets/js/config.js"></script>
    <style>
    	.empnock_1{
    		color:green;
    		display:none;
    	}
    	.empnock_2{
    		color:red;
    		display:none;
    	}
    </style>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="${path}/DS.do" class="app-brand-link">
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
              <span class="app-brand-text demo menu-text fw-bolder ms-2">4PRO</span>
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
                <div data-i18n="대시보드">대시보드</div>
              </a>
            </li>
              <!--로그아웃 -->
            <li class="menu-item logout-li">
            	<div class="menu-link">
                <i class="menu-icon tf-icons bx bx-log-out"></i>
                <div data-i18n="로그아웃" onclick="logOut()">로그아웃</div>
                </div>
            </li>
            <!-- 프로젝트 관리 -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">프로젝트관리</span></li>
            <li class="menu-item">
              <a href="${path}/PM.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="프로젝트 관리">프로젝트 관리</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="${path}/FM.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="파일 관리">파일 관리</div>
              </a>
            </li>
            
			<!-- 일정관리 -->
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text">일정관리</span>
            </li>
            <!-- 캘린더 -->
            <li class="menu-item">
              <a href="${path}/calendar.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-table"></i>
                <div data-i18n="캘린더">캘린더</div>
              </a>
            </li>
            <!-- 간트차트 -->
            <li class="menu-item">
              <a href="${path}/gantt.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="간트차트">간트차트</div>
              </a>
            </li>
            <!-- 업무관리 -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">업무관리</span></li>
            <!-- 전체 업무 -->
            <li class="menu-item">
              <a href="${path}/allSchedule.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="전체 업무">전체 업무</div>
              </a>
            </li>
           
            <!-- 리스크관리 -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">리스크관리</span></li>
            <li class="menu-item">
              <a href="${path}/RM.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-error"></i>
                <div data-i18n="리스크 관리">리스크 관리</div>
              </a>
            </li> 

            <!-- 인적자원관리 -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">인적자원관리</span></li>
            <!-- Forms -->
            <li class="menu-item">
              <a href="${path}/hresList.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="사원정보조회">사원정보조회</div>
              </a>
            </li>
            
            <li class="menu-item active">
              <a href="${path}/hresPrjList.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="사원정보조회">업무인원관리</div>
              </a>
              </li>
              
              <li class="menu-item ">
              <a href="${path}/join.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="사원등록">사원등록</div>
              </a>
              </li>
              
              <li class="menu-item ">
              <a href="${path}/hresInfo.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="개인정보수정">개인정보수정</div>
              </a>
              </li>
          
             <!-- 의사소통관리 -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">의사소통관리</span></li>
            <li class="menu-item">
              <a href="${path}/directMessage.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-message"></i>
                <div data-i18n="채팅">채팅</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="${path}/minutes.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-clipboard"></i>
                <div data-i18n="회의록">회의록</div>
              </a>
            </li>
          </ul>
          
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content  메인화면 비워둠-->
			<div class="container-xxl flex-grow-1 container-p-y">
				<div class="row">
					<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">인적자원관리 / 업무인원관리 /</span> 소속 프로젝트등록</h4>
					<div class="card">
						<form id="frm01" class="form" name="form" method="get" action="${path}/hresProjList.do">
						<br><br>
							<div class="input-group mb-3">
					        	<div class="input-group-prepend">
					            	<span class="text-center input-group-text">사원번호</span>
					         	</div>
					         	<input name="empno" class="form-control"/>   
					         	<button type="button" id="ckBtn" class="btn btn-primary float-end">중복확인</button>
							</div>  
							<div class="input-group mb-3">
					        	<div class="input-group-prepend">
					            	<span class="text-center input-group-text">프로젝트번호</span>
					         	</div>
					         	<input name="project_no" class="form-control"/>   
							</div>  
							<div class="text-right">
								<button type="button" onclick="insertProc()" class="btn btn-success float-end">등록</button>
							</div>
						</form> 
					</div>
				</div>
			</div>
			<script type="text/javascript">
				var check = false;
				
				
				$(document).ready(function(){
					$("#ckBtn").on("click", function(){
						var empnoVal = $("[name=empno]").val();
						if(empnoVal.length==10 && !isNaN(empnoVal)){
							$.ajax({
								url:"${path}/hasProj.do",
								data:"empno="+empnoVal,
								dataType:"json",
								success:function(data){
									if(data.hasProj==1){
										alert("등록된 사원번호입니다\n다시 입력해주세요")
										$("[name=empno]").val("").focus();
										check = false;
									}else{
										alert("등록가능한 사원번호입니다.")
										check = true;
									}
								},
								error:function(err){
									console.log(err)
								}
							})
						}else{
							alert("사원번호는 10자리 숫자입니다.");
							return;
						}
					})
					
				})
				function insertProc(){
					if(check == true){
						if(confirm("등록하시겠습니까?")){
							if($("[name=project_no]").val()==""){
								alert("프로젝트 번호를 입력해주세요");
								$("[name=project_no]").val().focus();
								return;
							}
							$("form").attr("action","${path}/hresProjInsert.do");
							$("form").submit();
						}
					}else{
						alert("사원번호 중복확인을 해주세요.")
						return;
					}
				}
				var proc = "${proc}"
				if(proc=="ins"){
					if(confirm("등록되었습니다.\n리스트페이지로 이동하겠습니까?")){
						location.href="${path}/hresPrjList.do";
					}
				}
			</script>


            <!-- / Content 여기까지 -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  ©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  , made with ❤️ by
                  <a href="https://themeselection.com" target="_blank" class="footer-link fw-bolder">Team2</a>
                </div>
                <div>
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a
                    href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
                    target="_blank"
                    class="footer-link me-4"
                    >Documentation</a
                  >

                  <a
                    href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                    target="_blank"
                    class="footer-link me-4"
                    >Support</a
                  >
                </div>
              </div>
            </footer>
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="${path}/resources/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="${path}/resources/assets/vendor/libs/popper/popper.js"></script>
    <script src="${path}/resources/assets/vendor/js/bootstrap.js"></script>
    <script src="${path}/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="${path}/resources/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="${path}/resources/assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="${path}/resources/assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="${path}/resources/assets/js/dashboards-analytics.js"></script>
    <script type="text/javascript">
		function logOut(){
			if(confirm("로그아웃 하시겠습니까?")){
				alert("로그아웃 되었습니다. 로그인 페이지로 이동합니다");
				location.href="${path}/logout.do";
			}
		}
	</script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>