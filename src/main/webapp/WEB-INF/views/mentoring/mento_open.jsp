<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
 <head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <style>


.navbar {
  background-color: #ffffff;
}
.navbar .navbar-brand {
  color: #9aadb2;
}
.navbar .navbar-brand:hover,
.navbar .navbar-brand:focus {
  color: #090909;
}
.navbar .navbar-text {
  color: #9aadb2;
}
.navbar .navbar-nav .nav-link {
  color: #9aadb2;
  border-radius: .25rem;
  margin: 0 0.25em;
}
.navbar .navbar-nav .nav-link:not(.disabled):hover,
.navbar .navbar-nav .nav-link:not(.disabled):focus {
  color: #090909;
}
.navbar .navbar-nav .nav-item.active .nav-link,
.navbar .navbar-nav .nav-item.active .nav-link:hover,
.navbar .navbar-nav .nav-item.active .nav-link:focus,
.navbar .navbar-nav .nav-item.show .nav-link,
.navbar .navbar-nav .nav-item.show .nav-link:hover,
.navbar .navbar-nav .nav-item.show .nav-link:focus {
  color: #090909;
  background-color: #a2a39f;
}
.navbar .navbar-toggle {
  border-color: #a2a39f;
}
.navbar .navbar-toggle:hover,
.navbar .navbar-toggle:focus {
  background-color: #a2a39f;
}
.navbar .navbar-toggle .navbar-toggler-icon {
  color: #9aadb2;
}
.navbar .navbar-collapse,
.navbar .navbar-form {
  border-color: #9aadb2;
}
.navbar .navbar-link {
  color: #9aadb2;
}
.navbar .navbar-link:hover {
  color: #090909;
}

@media (max-width: 575px) {
  .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item {
    color: #9aadb2;
  }
  .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item:hover,
  .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item:focus {
    color: #090909;
  }
  .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item.active {
    color: #090909;
    background-color: #a2a39f;
  }
}

@media (max-width: 767px) {
  .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item {
    color: #9aadb2;
  }
  .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item:hover,
  .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item:focus {
    color: #090909;
  }
  .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item.active {
    color: #090909;
    background-color: #a2a39f;
  }
}

@media (max-width: 991px) {
  .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item {
    color: #9aadb2;
  }
  .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item:hover,
  .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item:focus {
    color: #090909;
  }
  .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item.active {
    color: #090909;
    background-color: #a2a39f;
  }
}

@media (max-width: 1199px) {
  .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item {
    color: #9aadb2;
  }
  .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item:hover,
  .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item:focus {
    color: #090909;
  }
  .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item.active {
    color: #090909;
    background-color: #a2a39f;
  }
}

.navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item {
  color: #9aadb2;
}
.navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item:hover,
.navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item:focus {
  color: #090909;
}
.navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item.active {
  color: #090909;
  background-color: #a2a39f;
}


      td.entity{
        background-color : #E0F8F1;
        padding-left : 8px;
        padding-right : 8px;
        padding-top : 8px;
        padding-bottom : 8px;
        text-align : center;
      }
      td.context{
        padding-left : 8px;
        padding-right : 8px;
        padding-top : 8px;
        padding-bottom : 8px;
        text-align : left;
      }
      div.row{
        margin-left : auto;
        margin-right : auto;
      }

      .footer { border: 1px padding: 30px 10px; }
      .footer{ position: absolute; bottom: 0; text-align: center; width: 100% }
      .footer img { margin-right: 20px;  }
      .footer div:nth-child(2) { font: normal 9pt 굴림; color: #666;  }
      .footer div:nth-child(3) { font: normal 9pt arial; color: #aaa; }
      .container { margin-top: 30px;  }
      .mentoProfile{
        padding-top : 30px;
        padding-bottom : 20px;
        padding-left : 10px;
        padding-right : 10px;
      }
      .impossible{
        border : 1px solid #01DF3A;
        border-radius : 10px;
        text-align : center
      }
      .available{
        background-color : #81F79F;
        border : 1px solid #01DF3A;
        border-radius : 10px;
        text-align : center;
      }



        .container > .switch {

          display: block;

          margin: 12px auto;


          }

          .switch {
            margin-left: 40px;
            margin-bottom: 20px;

            position: relative;

            display: inline-block;

            vertical-align: top;

            width: 70px;

            height: 40px;

            padding: 3px;

            background-color: white;

            border-radius: 30px;

            box-shadow: inset 0 -1px white, inset 0 1px 1px rgba(0, 0, 0, 0.05);

            cursor: pointer;

            background-image: -webkit-linear-gradient(top, #eeeeee, white 25px);

            background-image: -moz-linear-gradient(top, #eeeeee, white 25px);

            background-image: -o-linear-gradient(top, #eeeeee, white 25px);

            background-image: linear-gradient(to bottom, #eeeeee, white 25px);

          }

          .switch-input {

            position: absolute;

            top: 0;

            left: 0;

            opacity: 0;

          }

          .switch-label {

            position: relative;

            display: block;

            height: inherit;

            font-size: 14px;

            text-transform: uppercase;

            background: #eceeef;

            border-radius: inherit;

            box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.12), inset 0 0 2px rgba(0, 0, 0, 0.15);

            -webkit-transition: 0.15s ease-out;

            -moz-transition: 0.15s ease-out;

            -o-transition: 0.15s ease-out;

            transition: 0.15s ease-out;

            -webkit-transition-property: opacity background;

            -moz-transition-property: opacity background;

            -o-transition-property: opacity background;

            transition-property: opacity background;

          }

          .switch-label:before, .switch-label:after {

            position: absolute;

            top: 50%;

            margin-top: -.5em;

            line-height: 1;

            -webkit-transition: inherit;

            -moz-transition: inherit;

            -o-transition: inherit;

            transition: inherit;

          }

          .switch-label:before {

            content: attr(data-off);

            right: 11px;

            color: #aaa;

            text-shadow: 0 1px rgba(255, 255, 255, 0.5);

          }

          .switch-label:after {

            content: attr(data-on);

            left: 11px;

            color: white;

            text-shadow: 0 1px rgba(0, 0, 0, 0.2);

            opacity: 0;

          }
          .switch-input:checked ~ .switch-label {

            background: #47a8d8;

            box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.15), inset 0 0 3px rgba(0, 0, 0, 0.2);

          }

          .switch-input:checked ~ .switch-label:before {

            opacity: 0;

          }

          .switch-input:checked ~ .switch-label:after {

            opacity: 1;

          }
        .title{
          font-size: 20px;
        }
       .section{
        text-align: center;
        margin-top: 50px


       }

       .during{
        text-align: center;
       }
   </style>
   <script src="text/javascript">
     $('#myTab a').click(function (e) {
      e.preventDefault()
      $(this).tab('show')
    })

   </script>
   <script>
   $(function() {
	   $("[data-confirm-apply]").click(function() {
	     return confirm("멘토링을 승인합니다. 계속 하시겠습니까?");
	   })
	   $("[data-confirm-cancel]").click(function() {
	     return confirm("신청한 멘토의 기록이 사라집니다. 계속 하시겠습니까?");
	   })
	   $("[data-confirm-mentiRemove").click(function() {
	     return confirm("멘티의 기록이 사라집니다. 계속 하시겠습니까?");
	   })
	})

   </script>
 </head>

 <body>

 <%@ include file="/WEB-INF/views/include/menu_for_user.jsp" %>
   
   	<div>
      <img src="${R}img/topimage.jpg" class="img-responsive"/>
  	</div>

  	<div class="container">
      <div class="row">
        <div class="col-md-3">
          <h1 class="my-4"><strong>사이트 관리</strong></h1>
          <div class="list-group">
           <a href="${R}user/mento_open" class="list-group-item active ">멘토링 개설/폐쇄</a>
            <a href="${R}user/report/confirm" class="list-group-item ">보고서 확인</a>
            <a href="${R}user/survey" class="list-group-item ">설문조사 관리</a>
            <a href="${R}user/schedule" class="list-group-item  ">멘토, 멘티 신청기간 여부</a>
            <a href="${R}user/list" class="list-group-item ">회원 목록 관리</a>
            <a href="${R}user/intro/titleList" class="list-group-item ">사업 안내문 수정</a>
          </div>
        </div>
        <!-- /.col-lg-3 -->
        <div class="col-md-9">
          
       <h1 class="my-4"><strong>멘토링 개설/폐쇄</strong></h1>
          <hr/>
          <div role="tabpanel">
            <ul class="nav nav-tabs" role="tablist">
            <c:forEach var="mento" items="${mentos}" varStatus="status">
              <li role="presentation" <c:if test="${status.index eq 0 }">class="active"</c:if>><a href="#mentoring${mento.id}" role="tab" data-toggle="tab">${mento.teamName}</a></li>
            </c:forEach>  
            </ul>
            <div class="tab-content mentoProfile">
              <c:forEach var="mento" items="${mentos}" varStatus="status">
              <div role="tabpanel" class="tab-pane fade in <c:if test="${status.index eq 0 }">active</c:if>" id="mentoring${mento.id}">
                <div class="row">
                  <div class="col-md-4 col-sm-6 text-center mb-4">
                    <img class="rounded-circle img-fluid d-block mx-auto" 
                    src="<c:choose><c:when test="${mento.profileId ne -1}">${R}user/image/profile/${mento.profileId}</c:when><c:otherwise>${R}img/mento_photo.jpg</c:otherwise></c:choose>" alt="" width="200" height="200">
                    <h3>${mento.name}
                      <small>${mento.departmentName }</small>
                    </h3>
                    <p>${mento.advertiseContext }</p>
                  </div>
                  <div class="col-md-8">
                    <table class="table-bordered" width="100%">
                      <tr>
                        <td class="entity">멘토링 주제</td>
                        <td colspan="3" class="context">${mento.subject }</td>
                      </tr>
                      <tr>
                        <td class="entity">전화번호</td>
                        <td colspan="3" class="context">${mento.phoneNumber }</td>
                      </tr>
                      <tr>
                        <td class="entity">이메일</td>
                        <td colspan="3" class="context">${mento.email }</td>
                      </tr>
                      <tr>
                        <td class="entity">멘토링 자격 증명</td>
                        <td colspan="3" class="context">${mento.qualificContext }</td>
                      </tr>
                      <c:if test="${mento.advFileName ne null }">
                      <tr>
                      	<td colspan="4" class="entity">
                      		팀 광고 파일
                      	</td>
                      </tr>
                      <tr>
                      	<td colspan="4" class="context">
                      		<i class="glyphicon glyphicon-floppy-disk"></i> <a href="${R}user/mento_open/advDownload?id=${mento.advId }">${mento.advFileName }</a>
                      	</td>
                      </tr>
                      </c:if>
                      <c:if test="${mento.quaFileName ne null }">
                      <tr>
                      	<td colspan="4" class="entity">
                      		자격 증명 파일
                      	</td>
                      </tr>
                      <tr>
                      	<td colspan="4" class="context">
                      		<i class="glyphicon glyphicon-floppy-disk"></i> <a href="${R}user/mento_open/quaDownload?id=${mento.quaId }">${mento.quaFileName }</a>
                      	</td>
                      </tr>
                      </c:if>
                      <c:if test="${ mento.menties.size() ne 0 and mento.menties ne null }">
                      <tr>
                        <td colspan="4" class="entity">
                        	  멘티 목록
                        </td>
                      </tr>

                      <tr>
                        <td class="entity">학번</td>
                        <td class="entity">이름</td>
                        <td class="entity">이메일</td>
                        <td class="entity">멘티 승인</td>
                      </tr>
                      
                      	<c:forEach var="mentiList" items="${mento.menties}">
	                      <tr>
	                        <td class="context">${mentiList.studentNumber}</td>
	                        <td class="context">${mentiList.name}</td>
	                        <td class="context">${mentiList.email }</td>
	
	                        <td><center><a href="${R}user/mento_open/menti_remove?groupId=${ mento.mentoGroupId }&userId=${mentiList.userId}"><button type="button" class="btn btn-danger" data-confirm-mentiRemove><i class="glyphicon glyphicon-remove">삭제</i></button> </a></center></td>
	                      </tr>
	                    </c:forEach>
                      </c:if>
                    </table>
                  </div>
                </div>
                <br/>
            	<div  align="right" style="margin-right: 10px">
				<c:choose>
				    <c:when test="${mento.mentoGroupId eq -1 }">
				        <a href="${R}user/mento_open/insert?id=${mento.id}"><button type="button" class="btn btn-primary" data-confirm-apply><i class="glyphicon glyphicon-ok">개설</i></button></a>
				    </c:when>
				    <c:otherwise>
				       	<button type="button" class="btn btn-success"><i class="glyphicon glyphicon-ok">이미 승인된 멘토입니다.</i></button>
				    </c:otherwise>
				</c:choose>
	                <a href="${R}user/mento_open/delete?id=${mento.id}"><button type="button" class="btn btn-danger" data-confirm-cancel><i class="glyphicon glyphicon-remove">폐쇄</i></button></a>
              	</div>
              	</div>
				</c:forEach>
	          </div>
	          
	      </div>
          
		
          <!-- Introduction Row -->
        </div>
      </div>
    </div>
    <!-- /.container -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
 </body>
</html>