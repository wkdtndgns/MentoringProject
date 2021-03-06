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
    <link rel="stylesheet" href="${R}res/summernote/summernote.css">
    <script src="${R}res/summernote/summernote.js"></script>
    <style>

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



   </style>
 </head>

 <body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
      	<sec:authorize access="not authenticated">
	      <a class="navbar-brand" href="${R}"><img src="${R}img\title.png"/></a>
	    </sec:authorize>
	    <sec:authorize access="authenticated">
	      <a class="navbar-brand" href="${R}user/index"><img src="${R}img\title.png"/></a>
	    </sec:authorize>
      </div>
      <ul class="nav navbar-nav">
        <sec:authorize access="not authenticated">
        <li><a href="${R}">
          <i class="glyphicon glyphicon-home"> 홈</i></a></li>
      	</sec:authorize>
        <sec:authorize access="authenticated">
        <li><a href="${R}user/index">
          <i class="glyphicon glyphicon-home"> 홈</i></a></li>
        </sec:authorize>
        <li class="dropdown active">
          <a class="dropdown-toggle" data-toggle="dropdown">알립니다
          <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li <c:if test="${param.bd eq 1}">class="active"</c:if>><a href="${R}user/notice/list?bd=1">공지사항</a></li>
              <li <c:if test="${param.bd eq 2}">class="active"</c:if>><a href="${R}user/notice/list?bd=2">참여마당</a></li>
            </ul>
        </li>
        <li>
        	<sec:authorize access="not authenticated">
	      		<a href="${R}guest/intro">멘토링 사업소개</a>
		    </sec:authorize>
		  	<sec:authorize access="authenticated">
		      	<a href="${R}user/intro">멘토링 사업소개</a>
		  	</sec:authorize>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown">멘토링
          <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="menti_apli.html">멘티 신청</a></li>
              <li><a href="${R}user/mento_apli">멘토 신청</a></li>
              <li ><a href="mento_list.html">멘토/멘티 목록</a></li>
              <li><a href="mento_board.html">멘토링 게시판</a></li>
              <li><a href="survey.html">설문조사</a></li>
            </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown">멘토링 관리
          <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="mento_timetable.html">멘티 시간표 확인</a></li>
              <li><a href="report_write.html">보고서 작성</a></li>
              <li><a href="board_manage.html">멘토링 과제게시판 관리</a></li>
            </ul>
        </li>
        <li class="dropdown ">
          <a class="dropdown-toggle" data-toggle="dropdown">사이트 관리
          <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="mento_open.html">멘토링 개설/폐쇄</a></li>
              <li><a href="report_confirm.html">보고서 확인</a></li>
              <li ><a href="survey_manage.html">설문조사 관리</a></li>
              <li><a href="candidate_boolean.html">멘토, 멘티 신청기간 여부</a></li>
              <li><a href="student_manage.html">회원 목록 관리</a></li>
              <li><a href="intro_update.html">사업 안내문 수정</a></li>
            </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <sec:authorize access="not authenticated">
	      <li><a href="${R}guest/login"><i class="glyphicon glyphicon-user"> 로그인</i></a></li>
	      <li><a href="${R}guest/create.do"><i class="glyphicon glyphicon-pencil"> 회원가입</i></a></li>
	    </sec:authorize>
	    <sec:authorize access="authenticated">
	      <li style="text-align : right;"><sec:authentication property="user.userName"/><br/><b><sec:authentication property="user.userType"/></b>님 환영합니다.</li>
	      <li><a href="${R}user/logout_processing"><i class="glyphicon glyphicon-user"> 로그아웃</i></a></li>
	    </sec:authorize>
      </ul>
    </div>
   </nav>
   <div>
      <img src="${R}img/topimage.jpg" class="img-responsive"/>
  </div>


  <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h1 class="my-4"><strong>알립니다</strong></h1>
          <div class="list-group">
            <sec:authorize access="not authenticated">
            	<a href="${R}guest/notice/list?bd=1" class="list-group-item <c:if test="${param.bd eq 1}">active</c:if>">공지사항</a>
            </sec:authorize>
          	<sec:authorize access="authenticated">
            	<a href="${R}user/notice/list?bd=1" class="list-group-item <c:if test="${param.bd eq 1}">active</c:if>">공지사항</a>
            </sec:authorize>
            <a href="${R}user/notice/list?bd=2" class="list-group-item <c:if test="${param.bd eq 2}">active</c:if>">참여마당</a>
          </div>
        </div>


        <!-- /.col-lg-3 -->
        <div class="col-md-9">
      <!-- Introduction Row -->
          <h1 class="my-4"><strong>${noticeBBS.bbsName} ${ newPost.id > 0 ? "수정" : "등록" }</strong></h1>
          
          <hr/>

          <!-- Team Members Row -->
          <div class="row">
            <div class="col-md-12">
                <div class="application">
                	<form:form method="post" modelAttribute="newPost">
                      <div class="control-group">
                        <div class="form-group floating-label-form-group controls">
                          <label>이름 </label>
                          <sec:authentication property="user.userName"/>
                        </div>
                      </div>
                      <div class="control-group">
                        <div class="form-group floating-label-form-group controls">
                          <label>제목 </label>
                          <form:input path="title" class="form-control form-inline"/>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          <div id="summernote">${ newPost.context }</div>
                          <input type="hidden" name="context">
                        </div>
                      </div>
                      <div class="control-group">
                        <div class="form-group floating-label-form-group controls">
                          <label>첨부파일 </label>
                          <input type="file" class="form-control" >
                          <p class="help-block text-danger"></p>
                        </div>
                      </div>
                    </form:form>
                      <hr/>
                      <div class="search" align="right">
                        <button type="submit" onclick="save()" class="btn btn-default"><i class="glyphicon glyphicon-pencil"> 작성</i></button>
                        <a href="list?bd=${noticeBBS.id}"><button type="button" class="btn btn-default"><i class="glyphicon glyphicon-remove"> 취소</i></button></a>
                      </div>
                      <script>
                        $('#summernote').summernote({height : 400});
                        function save(){
                          var s=$('#summernote').summernote('code');
                          $('input[name=context]').val(s);
                          $('form').submit();
                        }
                      </script>
                </div>
                
              </div>
            </div>
          </div>
        </div>
       </div>
    <!-- /.container -->
  <hr/>
  <div class="row">
    <div class="col-md-3" align="center">
      <img src="${R}img/skhuniv.jpg"/>
    </div>
    <div class="col-md-9">
      <p>08359 서울시 구로구 연동로 320 / 지하철 1, 7호선 온수역(성공회대입구역)</p>
      <p><i class="glyphicon glyphicon-earphone"></i> TEL : 02-2610-4114 &nbsp&nbsp|&nbsp&nbsp <i class="glyphicon glyphicon-print"></i> FAX : 02-2683-8858</p>
    </div>
  </div>
 </body>
</html>
