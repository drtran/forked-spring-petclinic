<%@ page session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags"%>

<petclinic:layout pageName="home">
	<div>
		<h1 id="welcome-field">Welcome To DevSecOps Project</h1>
		<h3 id="date-field">Date: Mar 5 2017 7:36 AM</h3>
		<h3 id="app-name">Application name: Pet Clinic</h3>
	</div>
	<div>
		<span id="version-id">Version: 6.7.4.3</span>
	</div>

	<div class="row">
		<div class="col-md-12">
			<spring:url value="/resources/images/pets.png" htmlEscape="true"
				var="petsImage" />
			<img class="img-responsive" src="${petsImage}" />
		</div>
	</div>
</petclinic:layout>
