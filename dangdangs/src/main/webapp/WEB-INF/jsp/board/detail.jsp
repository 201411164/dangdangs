<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("replaceChar", "\n");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, th, td {
   border: 1px solid #D4E0EE;
   border-collapse: collapse;
   color: #555;
}

th, td {
   padding: 5px;
}

table.list tr:nth-child(odd) {
   background-color: #F7F9D2;
}
</style>
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
</head>
<body>
   <h2>상세보기</h2>
   <hr>
   <div align="center">
      <table style="width: 80%;">
         <tr>
            <th style="width: 7%">${ vo.bno }</th>
            <th style="width: 80%">${ vo.dname }</th>
            <td>${ vo.bdate }</td>
         </tr>
         <tr>
            <th style="width: 7%">요약</th>
            <td colspan="2">${fn:replace(vo.bsum, replaceChar, "<br/>") }</td>
         </tr>
         <tr>
            <th style="width: 7%">원인</th>
            <td colspan="2">${fn:replace(vo.bcause, replaceChar, "<br/>") }</td>
         </tr>
         <tr>
            <th style="width: 7%">치료법</th>
            <td colspan="2">${fn:replace(vo.btreat, replaceChar, "<br/>") }</td>
         </tr>
         <tr>
            <th style="width: 7%">관리법</th>
            <td colspan="2">${fn:replace(vo.bcare, replaceChar, "<br/>") }</td>
         </tr>
      </table>
   </div>
   <br><br>
   <div align="center">
   		<c:if test="${ commentList != null }">
   		<table style="width: 80% ">
   			<c:forEach items="${ commentList }" var="comment">
            <tr>
               <th style="width: 5%">작성자</th>
               <td style="width: 7%">${ comment.mnick }</td>
               <th style="width: 5%">내용</th>
               <td>${ comment.ccontent }</td>
               <td style="width: 7%">${ comment.cdate }</td>
            </tr>
            </c:forEach>
        </table>
    	</c:if>
      <form method="post" action="${ pageContext.request.contextPath }/comment/${ vo.bno }">
         <%-- 댓글 달기 폼 cno, mnick, bno, ccontent, cdate, ctype --%>
         <input type="hidden" name="mnick" value="${ loginVO.mnick }">
         <input type="hidden" name="bno" value="${ vo.bno }">
         <table style="width: 80% ">
            <tr>
               <th>작성자</th>
               <td>${ loginVO.mnick }</td>
               <th>내용</th>
               <td><textarea name="ccontent" rows="3" cols="150"></textarea>
         <button type="submit" class="btn btn-outline-dark" >댓글작성</button></td>
            </tr>
         </table>
      </form>
   </div>
</body>
</html>