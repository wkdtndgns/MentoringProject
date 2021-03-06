<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

      .row {
        margin-left : auto;
        margin-right : auto;
      }

      .container {
        margin-top: 30px;
        margin-left : auto;
        margin-right : auto;
      }
      .information{
        padding-top : 10px;
        padding-bottom : 5px;
        background-color : #E6E6E6;
        border : 1px solid #D8D8D8;
        border-radius : 5px;
        text-align : left;
      }
      .reportEntity{
        padding-left : 10px;
        padding-right : 10px;
        padding-top : 12px;
        padding-bottom : 12px;
        border : 1px solid #A4A4A4;
        background-color : #D8D8D8;
        font-weight : bold;
        text-align : center;
      }
       .reportEntity2{
        padding-left : 10px;
        padding-right : 10px;
        padding-top : 5px;
        padding-bottom : 5px;
        border : 1px solid #A4A4A4;
        background-color : #D8D8D8;
        font-weight : bold;
        text-align : center;
      }
      .reportInput{
        padding-left : 5px;
        padding-right : 5px;
        padding-top : 5px;
        padding-bottom : 4px;
        border : 1px solid #A4A4A4;
      }
      .reportInput2{
        padding-left : 5px;
        padding-right : 5px;
        padding-top : 10px;
        padding-bottom : 7px;
        border : 1px solid #A4A4A4;
      }
      .mentiList{
        padding-top : 12px;
        padding-bottom : 11px;
        border : 1px solid #A4A4A4;
      }
      .mentoPicture{
        border : 1px solid #A4A4A4;
        background-color : #D8D8D8;
        text-align : center;
        font-weight : bold;
        padding-top : 10px;
        padding-bottom : 10px;
      }
      .mentoPictureDisplay{
        border : 1px solid #A4A4A4;
        padding-left : 20px;
        padding-right : 20px;
        padding-top : 20px;
        padding-bottom : 20px;
      }
      .upload{
        border : 1px solid #A4A4A4;
        background-color : #D8D8D8;
        font-weight : bold;
        padding-top : 7px;
        padding-bottom : 7px;
      }
      .complete{
        margin-top : 20px;
      }
      .input_time{
        width : 60px;
      }
      .inside_percent{
        padding-left : 0px;
        padding-right : 0px;
        border : 1px solid #58FA58;
      }
      .true_percent{
        border : 1px solid #58FA58;
        background-color : #A9F5BC;
        text-align : right;
      }
      .time{
      	display : inline;
      }
	  .number_input{
	  	width : 40px;
	  }
   </style>
   <script type="text/javascript">
    $(function () {
      $('[data-toggle="popover"]').popover();
    });
    $('#myModal').on('shown.bs.modal', function () {
      $('#myInput').focus()
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
          <h1 class="my-4"><strong>멘토링 관리</strong></h1>
          <div class="list-group">
            <a href="${R}user/mento_timetable?timetableView=공강" class="list-group-item">멘티 시간표 확인</a>
            <a href="${R}user/report/write" class="list-group-item active">보고서 작성</a>
            <a href="${R}user/board_manage" class="list-group-item">멘토링 과제게시판 관리</a>
          </div>
        </div>
        <div class="col-md-9">
          <h1 class="my-4">보고서 확인</h1>
          <!-- Team Members Row -->
          <div class="row">
            <div class="col-md-12">
              <h3><b>${ report.teamName }</b></h3>
          <table class="table table-bordered">
            <tr>
              <td class="reportEntity">멘토 이름</td>
              <td class="reportValue">${ report.mentoName }</td>
              <td class="reportEntity">제출 일자</td>
              <td class="reportValue"><fmt:formatDate value="${report.presentDate}" pattern="yyyy-MM-dd HH:mm"/></td>
            </tr>
            <tr>
              <td class="reportEntity">팀 이름</td>
              <td class="reportValue">${ report.teamName }</td>
              <td class="reportEntity">진행 장소</td>
              <td class="reportValue">${ report.classPlace }</td>
            </tr>
            <tr>
              <td class="reportEntity">교과목</td>
              <td class="reportValue">${ report.mentoSubject}</td>
              <td class="reportEntity">수업 방식</td>
              <td class="reportValue">${ report.classType }</td>
            </tr>
            <tr>
              <td class="reportEntity">수업 일자</td>
              <td class="reportValue">${ report.classDate }</td>
              <td class="reportEntity">시간</td>
              <td class="reportValue"><fmt:formatDate value="${report.startTime}" pattern="HH:mm"/> ~ <fmt:formatDate value="${report.endTime}" pattern="HH:mm"/></td>
            </tr>
            <c:if test="${ report.absentPerson ne null }">
	            <tr>
	              <td class="reportEntity">멘토 결석 여부</td>
	              <td colspan="3" class="reportValue">${ report.absentPerson }</td>
	            </tr>
	            <tr>
	              <td colspan="4" class="reportEntity">결석 사유</td>
	            </tr>
	            <tr>
	            	<td colspan="4" class="reportValue">${ report.absentContext }</td>
	            </tr>
	        </c:if>
            <tr>
              <td class="reportEntity">수업 주제</td>
              <td colspan="3" class="reportValue">${ report.classSubject}</td>
            </tr>
            <tr>
              <td class="reportEntity">수업 목표</td>
              <td colspan="3" class="reportValue">${ report.classTarget }</td>
            </tr>
            <tr>
              <td colspan="4" class="reportEntity">수업 진행과 소감</td>
            </tr>
            <tr>
              <td colspan="4" class="reportValue">${ report.classImplass }</td>
            </tr>
            <tr>
              <td colspan="4" class="reportEntity">멘토 사진</td>
            </tr>
            <tr>
              <td colspan="4" class="reportValue"><center><img class="img-responsive" src="${R}user/image/mentoring/${report.id}"/></center></td>
            </tr>
          </table>
            </div>
            <a href="${R}user/report/write"><button class="btn btn-info"><i class="glyphicon glyphicon-folder-close"> 보고서 목록으로</i></button></a>
            <c:if test="${report.confirm eq true}"><a href="${R}user/report/download?id=${report.id}"><button class="btn btn-info"><i class="glyphicon glyphicon-floppy-disk"> 보고서 다운로드</i></button></a></c:if>
            <c:if test="${report.confirm eq false}"><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal"><i class="glyphicon glyphicon-pencil"> 수정</i></button></c:if>
          </div>
          <c:if test="${ report.confirm eq false }">
          <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	          <div class="modal-dialog modal-lg">
	            <div class="modal-content">
	              <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h2><b>보고서 수정</b></h2>
	              </div>
	              <div class="modal-body">
	                <form:form method="post" modelAttribute="editReport" enctype="multipart/form-data">
	                <form:hidden path="mentoId" />
	                <div class="row">
	                  <div class="col-md-2 reportEntity2">멘토 이름</div>
	                  <div class="col-md-4 reportInput">${report.mentoName }</div>
	                  <div class="col-md-2 reportEntity2">제출 일자</div>
	                  <div class="col-md-4 reportInput"><fmt:formatDate value="${report.presentDate}" pattern="yyyy-MM-dd"/></div>
	                </div>
	                <div class="row">
	                  <div class="col-md-2 reportEntity2">팀 이름</div>
	                  <div class="col-md-4 reportInput">${report.teamName }</div>
	                  <div class="col-md-2 reportEntity2">교과목</div>
	                  <div class="col-md-4 reportInput">${report.mentoSubject }</div>
	                </div>
	                <div class="row">
	                  <div class="col-md-2 reportEntity">진행 장소</div>
	                  <div class="col-md-4 reportInput"><form:input path="classPlace" class="form-control" placeholder="강의실 입력(축제는 장소)"/></div>
	                  <div class="col-md-2 reportEntity">수업 방식</div>
	                  <div class="col-md-4 reportInput">
	                  	<form:select path="classType" class="form-control" itemValue="value" itemLabel="label" items="${ classType }" />
	                  </div>
	                </div>
	                <div class="row">
	                  <div class="col-md-2 reportEntity">수업 일자</div>
	                  <div class="col-md-4 reportInput">
	                    <input type="date" name="classDate" class="form-control" value="${ editReport.classDate }"/>
	                  </div>
	                  <div class="col-md-1 reportEntity">시간</div>
	                  <div class="col-md-5 reportInput2 time">
						<form:input path="start1" class="number_input" />&nbsp;:&nbsp;<form:input path="start2" class="number_input" />
	                    <h7>&nbsp;&nbsp;~&nbsp;&nbsp;</h7>
	                    <form:input path="end1" class="number_input" />&nbsp;:&nbsp;<form:input path="end2" class="number_input" />
	                  </div>
	                </div>
	                <div class="row">
	                  <div class="col-md-2 reportEntity">결석 인원</div>
	                  <div class="col-md-10 reportInput">
	                    <form:input path="absentPerson" class="form-control" placeholder="결석 인원을 작성해 주세요. 없으면 비워도 됩니다."/>
	                  </div>
	                </div>
	                <div class="row">
	                  <div class="col-md-12 reportEntity">결석 사유</div>
	                </div>
	                <div class="row">
	                  <div class="col-md-12 reportInput"><form:textarea path="absentContext" class="form-control" rows="7" placeholder="결석 사유를 입력해주세요. 멘티와 이유를 구분해서 써주세요. 없으면 생략해도 됩니다."/></div>
	                </div>
	                <div class="row">
	                  <div class="col-md-2 reportEntity">수업 주제</div>
	                  <div class="col-md-10 reportInput"><form:input path="classSubject" class="form-control" placeholder="수업 주제 입력(축제, 컴퍼런스는 참석한 축제, 컴퍼런스 이름 작성.)"/></div>
	                </div>
	                <div class="row">
	                  <div class="col-md-2 reportEntity">수업 목표</div>
	                  <div class="col-md-10 reportInput"><form:input path="classTarget" class="form-control" placeholder="수업 목표 입력(축제, 컴퍼런스는 비워두셔도 됩니다.)"/></div>
	                </div>
	                <div class="row">
	                  <div class="col-md-12 reportEntity">수업 진행과 소감</div>
	                </div>
	                <div class="row">
	                  <div class="col-md-12 reportInput"><form:textarea path="classImplass" class="form-control" rows="7" placeholder="적어도 500자 이내로 입력(축제, 컴퍼런스도 해당됩니다.)"/></div>
	                </div>
	                <div class="row">
	                  <div class="col-md-2 reportEntity">사진 다시 올리기</div>
	                  <div class="col-md-10 reportInput">
	                    <input type="file" name="classPhoto" class="form-control"/>
	                  </div>
	                </div>
	                <hr/>
	                <div class="row">
	                  <div class="col-md-12 information">
	                    <p> ⊙ 보고서의 제출 기한은 따로 없습니다. 다만 수업 끝나는데로 작성해주시면 감사하겠습니다. </p>
	                    <p> ⊙ 수업 진행 방식에 기타라고 체크하신 분은 수업 진행 내용과 소감 내부 첫 줄에 수업 방식을 제기해주시길 바랍니다. </p>
	                    <p> ⊙ 시간은 멘토와 멘티들이 협상한 시간대에서 작성을 해주셔야 인정됩니다. </p>
	                    <p> ⊙ 멘토링 참석 비율이 2/3 미만인 경우에는 인정이 되지 않으니 참고하시길 바랍니다. </p>
	                    <p> ⊙ 축제, 컨퍼런스 참석 보고서에 대해서는 수업 방식에 축제/컴퍼런스 참석으로 선택하시고, 수업 주제에는 참석한 축제, 컴퍼런스 이름을 작성해주고, 목표는 비워두셔도 됩니다. 교과목은 그대로 작성해주시면 되고 진행 장소는 축제나 컴퍼런스를 진행한 장소를 작성해주시면 됩니다</p>
	                    <p> ⊙ 사진은 jpg, png 등 쉽게 구분이 가능한 확장명으로 올려주시고, 학번_n번째_멘토링.jpg, 학번_n번째_축제.jpg 이름으로 올려주셔야 합니다. </p>
	                    <p> ⊙ 사진을 다시 올리실 분들만 업로드를 진행해주시면 됩니다. 사진 변경이 없으신 분은 보고서만 수정하고 저장하기를 누르세요. </p>
	                  </div>
	                </div>
	                <div class="modal-footer">
	                	<button type="button" class="btn btn-info" data-dismiss="modal"><i class="glyphicon glyphicon-remove"> 취소</i></button>
	                	<button type="submit" class="btn btn-info"><i class="glyphicon glyphicon-ok"> 완료</i></button>
	              	</div>
	                </form:form>
	              </div>
	            </div>
	          </div>
        	</div>
        </c:if>
      </div>
      </div>
    </div>
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
 </body>
</html>
