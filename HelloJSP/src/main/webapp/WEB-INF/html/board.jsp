<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<h3>글상세화면</h3>

<c:if test="${!empty msg }">
	<div style="color: red;">${msg }</div>
</c:if>

<form action="modifyForm.do">
<input type="hidden" value="${board_info.boardNo }" name="bno">
<input type="hidden" value="${page }" name="page">
<table class="table">
	<tr>
		<th>글번호</th>
		<td><c:out value="${board_info.boardNo }" /></td>
		<th>조회수</th>
		<td><c:out value="${board_info.viewCnt }" /></td>
	</tr>
	<tr>
		<th>제목</th>
		<td colspan='3'><c:out value="${board_info.title }" /></td>
		<c:choose>
			<c:when test="${!empty board_info.image }">
			<td rowspan='2'><img width= "130px" src='upload/${board_info.image }'></td>
			 </c:when>
			<c:otherwise>
			<td rowspan='2'><img src='https://dummyimage.com/130X100/ffffff/0011ff.jpg&text=no+image'></td>
			</c:otherwise>
		</c:choose>
	</tr>
	<tr>
		<th>내용</th>
		<td colspan='3'><c:out value="${board_info.content }" /></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><c:out value="${board_info.writer }" /></td>
		<th>작성일시</th>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
				value="${board_info.creationDate}" /></td>
	</tr>
	<tr>
		<td colspan="4" align="center">
		<input type="submit" value="수정" class="btn btn-success">
		<button type="button" class="btn btn-danger" ${logId eq board_info.writer ? '' : 'disabled'}>삭제</button></td>
	</tr>

</table>
</form>
