<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<c:import url="/WEB-INF/views/head.jsp"></c:import>
<c:import url="/WEB-INF/views/navbar.jsp"></c:import>
<body>
	<c:if test="${ addIssueFailed }">
		<h4>Adding issue failed.. Check valid inputs.</h4>
	</c:if>
	<div id="add-user" class="options">
		<c:choose>
			<c:when test="${ not empty sessionScope.user }">
				<div class="login-div">
					<form action="addIssueProc" method="POST">
						<div class="form-group">
							<span class="input-group-addon"> <i
								class="fa fa-exclamation"> Title of Issue</i>
							</span> <input class="form-control" name="title"
								placeholder="Title of your Issue" type="text" required />
						</div>
						<div class="form-group">
							<span class="input-group-addon"> <i
								class="fa fa-info-circle"> Description of Issue</i>
							</span>
							<textarea class="form-control" name="userDescription"
								placeholder="Description of issue" required></textarea>
						</div>
						<div class="login-button">
							<span>
								<button type="submit" class="btn btn-primary btn-pill">Submit Issue</button>
								<a href="issues" class="btn btn-danger btn-pill">Cancel</a>
							</span>
						</div>
					</form>
				</div>
			</c:when>
			<c:otherwise>
				<p>You're not already logged in.</p>
			</c:otherwise>
		</c:choose>
	</div>
</body>
<c:import url="/WEB-INF/views/footer.jsp"></c:import>
</html>