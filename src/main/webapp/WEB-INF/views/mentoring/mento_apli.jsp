<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
 <head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${R}res/inputModel.css">
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
        .application{ margin-top: 20px; }

        label{
          margin-right: 10px
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
        .information{
          padding-top : 15px;
          padding-bottom : 5px;
          background-color : #E6E6E6;
          border : 1px solid #D8D8D8;
          border-radius : 5px;
          text-align : left;
        }
        .table_first{
          background-color : #F5ECCE;
        }
   </style>
   	<script type="text/javascript" language="javascript">	
   	var auto_refresh=setInterval(
 			function(){
 				$('#dataArea').load('/SKHUMentoring/user/mentoringPopup?type=0').fadeIn('slow');
 			}, 5000
 	);
 	
    $(document).ready(function(){
         
         
        $.ajax({
             
            type : "GET",
            url : "/SKHUMentoring/user/mentoringPopup?type=0",
            dataType : "text",
            error : function(){
                alert('통신실패!!');
            },
            success : function(data){
                $("#dataArea").html(data) ;
            }
             
        });
         
 
    });
 
 
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
          <h1 class="my-4"><strong>멘토링</strong></h1>
          <div class="list-group">
            <a href="${R}user/menti_apli" class="list-group-item ">멘티 신청</a>
            <a href="${R}user/mento_list" class="list-group-item active">멘토 신청</a>
            <a href="${R}user/mento_list" class="list-group-item">멘토/멘티 목록</a>
                <a href="${R}user/groupBBS" class="list-group-item">멘토링 게시판</a>
            <a href="${R}user/mentoringSurvey" class="list-group-item">설문조사</a>
            
          </div>
        </div>
        <!-- /.col-lg-3 -->
        <div class="col-md-9">
      <!-- Introduction Row -->
          <h1 class="my-4"><strong>멘토 신청</strong></h1>
          <hr/>
          <sec:authorize access="hasAnyRole({'ROLE_PROFESSOR', 'ROLE_EMPLOYEE'})">
			<div class="panel panel-warning">
			  <div class="panel-heading">
	    		<h3 class="panel-title">교수와 직원은 접근이 불가능합니다.</h3>
	  		  </div>
		      <div class="panel-body">
				 교수와 직원은 사이트 관리에서 신청한 멘토들의 목록들에 대해서 설정할 수 있습니다.
			  </div>
			</div>
          </sec:authorize>
          <sec:authorize access="hasAnyRole({'ROLE_MENTO', 'ROLE_MENTI', 'ROLE_STUDCHAIRMAN'})">
          <div id="dataArea">
	      </div>
	      <br/>
	      <span class="badge">범례 별 알림</span>
	      <a href="${R}user/mentoringPopup?type=1" onClick="window.open(this.href,'','width=600, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;"><span class="label label-info"><i class="glyphicon glyphicon-plus"></i> 멘토 신청</span></a>
  		  <a href="${R}user/mentoringPopup?type=2" onClick="window.open(this.href,'','width=600, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;"><span class="label label-success"><i class="glyphicon glyphicon-ok"></i> 멘토 선정</span></a>
  		  <a href="${R}user/mentoringPopup?type=3" onClick="window.open(this.href,'','width=600, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;"><span class="label label-warning"><i class="glyphicon glyphicon-user"></i> 멘티 신청</span></a>
  		  <a href="${R}user/mentoringPopup?type=4" onClick="window.open(this.href,'','width=600, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;"><span class="label label-danger"><i class="glyphicon glyphicon-remove"></i> 멘토링 탈락</span></a>
  		  <a href="${R}user/mentoringPopup?type=5" onClick="window.open(this.href,'','width=600, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;"><span class="label label-danger"><i class="glyphicon glyphicon-thumbs-down"></i> 멘티 취소</span></a>
  		  <a href="${R}user/mentoringPopup?type=6" onClick="window.open(this.href,'','width=600, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;"><span class="label label-warning"><i class="glyphicon glyphicon-question-sign"></i> 멘티 전체 삭제</span></a>
  		  <a href="${R}user/mentoringPopup?type=7" onClick="window.open(this.href,'','width=600, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;"><span class="label label-danger"><i class="glyphicon glyphicon-certificate"></i> 멘티 선정 탈락</span></a>
	      <hr/>
          <div class="row">
            <div class="col-md-12">
              <h2><b>현황 확인</b></h2>
              <hr/>
              <table class="table table-bordered">
                <thead class="table_first">
                  <tr>
                    <td>신청 기간</td>
                    <td>멘토링 이름</td>
                    <td>과목</td>
                    <td>멘토 이름</td>
                    <td>선정 결과</td>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="mento" items="${mentos}">
                  	<tr>
                  		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${mento.applicationDate}"/></td>
                  		<td>${mento.teamName }</td>
                  		<td>${mento.subject }</td>
                  		<td>${mento.name }</td>
                  		<c:if test="${mento.permited eq true}"><td class="success">승인</td></c:if>
                  		<c:if test="${mento.permited eq false}"><td>대기</td></c:if>
                  	</tr>
                  </c:forEach>
                </tbody>
              </table>
              <button class="btn btn-warning" type="button" data-toggle="collapse" data-target="#mentoApplicatilon"><i class="glyphicon glyphicon-plus"> 신청하기</i></button>
            </div>
          </div>
          <div class="collapse" id="mentoApplicatilon">
            <hr/>
            <div class="row">
              <div class="col-md-12">
              <h2><b>멘토 신청</b></h2>
              <form:form method="post" modelAttribute="mento" enctype="multipart/form-data">
                <div class="application">
                    <div class="row">
                      <div class="col-md-2">
                        <label>이름</label>
                      </div>
                      <div class="col-md-8">
                        <sec:authentication property="user.userName"/>
                      </div>
                    </div>
                    <br/>
                    <div class="row">
                      <div class="col-md-2">
                        <label>멘토링 교과목(주제)</label>
                      </div>
                      <div class="col-md-8">
                      	<form:input path="subject" placeholder="멘토링 할 과목을 입력하세요" class="form-control w300"/>
                        
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-2">
                        <label>팀 이름</label>
                      </div>
                      <div class="col-md-8">
                      	<form:input path="teamName" placeholder="적당한 팀 이름을 입력하세요" class="form-control w300"/>
                        
                      </div>
                    </div>
                    <br/>
                    <br/>
                    <div class="row">
                      <label style="vertical-align: top;">주제 소개(팀 광고)</label>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                      	<form:textarea path="advertiseContext" placeholder="멘토링에 대한 팀 광고를 입력하세요" class="form-control w400"/>
                        
                      </div>
                    </div>
                    <br/>
                    <div class="row">
                      <div class="col-md-2">
                        <label>팀 광고물</label>
                      </div>
                      <div class="col-md-10">
                        <input type="file" class="form-control" name="advertiseUpload">
                      </div>
                    </div>
                    <br/>
                    <div class="row">
                      <div class="col-md-2">
                        <label>자격 증명</label>
                      </div>
                      <div class="col-md-8">
                      	<form:input path="qualificContext" placeholder="자격 증명할 사항에 대해 입력하세요" class="form-control w300"/>
                       
                      </div>
                    </div>
                    <br/>
                    <div class="row">
                      <div class="col-md-2">
                        <label>자격 증명 사진</label>
                      </div>
                      <div class="col-md-10">
                        <input type="file" class="form-control" name="qualificUpload">
                      </div>
                    </div>
                    <br/>
                      <div class="row">
                        <div class="col-md-12">
                          <label>가능한 시간대</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          
                            <h3>월</h3>
                            <div class="row">
                              <div class="col-md-2 impossible <c:if test="${ timetable.mon1 eq true }">available</c:if>">
                                     9:00<br/>~<br/>10:30
                              </div>
	                          <div class="col-md-2 impossible <c:if test="${ timetable.mon2 eq true }">available</c:if>">
	                                10:30<br/>~<br/>12:00
	                          </div>
	                          <div class="col-md-1 impossible <c:if test="${ timetable.mon3 eq true }">available</c:if>">
	                                12:00<br/>~<br/>13:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.mon4 eq true }">available</c:if>">
                                    13:00<br/>~<br/>14:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.mon5 eq true }">available</c:if>">
                                    14:00<br/>~<br/>15:00
                              </div>
                              <div class="col-md-2 impossible <c:if test="${ timetable.mon6 eq true }">available</c:if>">
                                     15:00<br/>~<br/>16:30
                              </div>
                              <div class="col-md-2 impossible <c:if test="${ timetable.mon7 eq true }">available</c:if>">
                                     16:30<br/>~<br/>18:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.mon8 eq true }">available</c:if>">
                                     18:00<br/>~<br/>21:00
                              </div>
                            </div>
                            <br/>
                        </div>     
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          
                            <h3>화</h3>
                            <div class="row">
                              <div class="col-md-2 impossible <c:if test="${ timetable.tue1 eq true }">available</c:if>">
                                     9:00<br/>~<br/>10:30
                              </div>
	                          <div class="col-md-2 impossible <c:if test="${ timetable.tue2 eq true }">available</c:if>">
	                                10:30<br/>~<br/>12:00
	                          </div>
	                          <div class="col-md-1 impossible <c:if test="${ timetable.tue3 eq true }">available</c:if>">
	                                12:00<br/>~<br/>13:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.tue4 eq true }">available</c:if>">
                                    13:00<br/>~<br/>14:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.tue5 eq true }">available</c:if>">
                                    14:00<br/>~<br/>15:00
                              </div>
                              <div class="col-md-2 impossible <c:if test="${ timetable.tue6 eq true }">available</c:if>">
                                     15:00<br/>~<br/>16:30
                              </div>
                              <div class="col-md-2 impossible <c:if test="${ timetable.tue7 eq true }">available</c:if>">
                                     16:30<br/>~<br/>18:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.tue8 eq true }">available</c:if>">
                                     18:00<br/>~<br/>21:00
                              </div>
                            </div>
                            <br/>
                        </div>     
                      </div>
                        <div class="row">
                        <div class="col-md-12">
                          
                            <h3>수</h3>
                            <div class="row">
                              <div class="col-md-2 impossible <c:if test="${ timetable.wed1 eq true }">available</c:if>">
                                     9:00<br/>~<br/>10:30
                              </div>
	                          <div class="col-md-2 impossible <c:if test="${ timetable.wed2 eq true }">available</c:if>">
	                                10:30<br/>~<br/>12:00
	                          </div>
	                          <div class="col-md-1 impossible <c:if test="${ timetable.wed3 eq true }">available</c:if>">
	                                12:00<br/>~<br/>13:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.wed4 eq true }">available</c:if>">
                                    13:00<br/>~<br/>14:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.wed5 eq true }">available</c:if>">
                                    14:00<br/>~<br/>15:00
                              </div>
                              <div class="col-md-2 impossible <c:if test="${ timetable.wed6 eq true }">available</c:if>">
                                     15:00<br/>~<br/>16:30
                              </div>
                              <div class="col-md-2 impossible <c:if test="${ timetable.wed7 eq true }">available</c:if>">
                                     16:30<br/>~<br/>18:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.wed8 eq true }">available</c:if>">
                                     18:00<br/>~<br/>21:00
                              </div>
                            </div>
                            <br/>
                        </div>     
                      </div>                    
                      <div class="row">
                        <div class="col-md-12">
                          
                            <h3>목</h3>
                            <div class="row">
                              <div class="col-md-2 impossible <c:if test="${ timetable.thu1 eq true }">available</c:if>">
                                     9:00<br/>~<br/>10:30
                              </div>
	                          <div class="col-md-2 impossible <c:if test="${ timetable.thu2 eq true }">available</c:if>">
	                                10:30<br/>~<br/>12:00
	                          </div>
	                          <div class="col-md-1 impossible <c:if test="${ timetable.thu3 eq true }">available</c:if>">
	                                12:00<br/>~<br/>13:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.thu4 eq true }">available</c:if>">
                                    13:00<br/>~<br/>14:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.thu5 eq true }">available</c:if>">
                                    14:00<br/>~<br/>15:00
                              </div>
                              <div class="col-md-2 impossible <c:if test="${ timetable.thu6 eq true }">available</c:if>">
                                     15:00<br/>~<br/>16:30
                              </div>
                              <div class="col-md-2 impossible <c:if test="${ timetable.thu7 eq true }">available</c:if>">
                                     16:30<br/>~<br/>18:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.thu8 eq true }">available</c:if>">
                                     18:00<br/>~<br/>21:00
                              </div>
                            </div>
                            <br/>
                        </div>     
                      </div>
                      
                      <div class="row">
                        <div class="col-md-12">
                          
                            <h3>금</h3>
                            <div class="row">
                              <div class="col-md-2 impossible <c:if test="${ timetable.fri1 eq true }">available</c:if>">
                                     9:00<br/>~<br/>10:30
                              </div>
	                          <div class="col-md-2 impossible <c:if test="${ timetable.fri2 eq true }">available</c:if>">
	                                10:30<br/>~<br/>12:00
	                          </div>
	                          <div class="col-md-1 impossible <c:if test="${ timetable.fri3 eq true }">available</c:if>">
	                                12:00<br/>~<br/>13:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.fri4 eq true }">available</c:if>">
                                    13:00<br/>~<br/>14:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.fri5 eq true }">available</c:if>">
                                    14:00<br/>~<br/>15:00
                              </div>
                              <div class="col-md-2 impossible <c:if test="${ timetable.fri6 eq true }">available</c:if>">
                                     15:00<br/>~<br/>16:30
                              </div>
                              <div class="col-md-2 impossible <c:if test="${ timetable.fri7 eq true }">available</c:if>">
                                     16:30<br/>~<br/>18:00
                              </div>
                              <div class="col-md-1 impossible <c:if test="${ timetable.fri8 eq true }">available</c:if>">
                                     18:00<br/>~<br/>21:00
                              </div>
                            </div>
                            <br/>
                        </div>     
                      </div>
                      
                      <hr/>
                    <div class="row">
                      <div class="col-md-12 information">
                        <p> ⊙ 시간표 조율은 수업이 없는 날만 체크하는 것이 아닙니다. 멘토가 가능한 시간들을 조율해서 체크해주시길 바랍니다.</p>
                        <p> ⊙ 자격 증명이 허위인 경우에는 멘토 참여에 지장이 있으니 사실적으로 보내주시길 바랍니다. </p>
                        <p> ⊙ 팀 광고물은 딱히 안 올리셔도 되지만 주제소개에 어떤 것을 강의할지에 대해서 구체적으로 적어주시길 바랍니다.</p>
                        <p> ⊙ 멘토링 주제가 적당하지 않는 경우에는 참여에 지장이 있습니다. 이는 동아리를 통해서 참여하시길 바랍니다.</p>
                        <p> ⊙ 시간표는 myPage에서 설정할 수 있습니다.</p>
                      </div>
                    </div>
                    <div style="margin-top: 40px">
                      <h3>멘토 신청하시려면 밑에 신청 버튼을 눌러 주세요.</h3>
                      <button id="btn_ok" type="submit" class="btn btn-primary" data-confirm-insert>신청</button>
                      <script>
						$(document).ready( function(){
						    $("#btn_ok").click( function() {
						        if(confirm("추가를 하면 수정이 불가능합니다. 계속 하시겠습니까??")) {
						            $(this).parent().click();
						        } else {
						            return false;
						        }
						    });
						});
						</script>
                      <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#mentoApplicatilon">취소</button>
                    </div>
                	</div>
                </form:form>
              </div>
            </div>
          </div>
      </sec:authorize>
      </div>
    </div>
   </div>
    
    <!-- /.container -->
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
 </body>
</html>

