<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>


<form:form modelAttribute="user" method="post">

	<fieldset>

		<legend>Search</legend>

		<div class="control-group">
			<label class="control-label">First Name</label>
			<div class="controls">
				<form:input path="uFname" class="input-large" type="text"
					rel="popover" data-content="Enter First Name."
					data-original-title="uFname" />

			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Last Name</label>
			<div class="controls">
				<form:input path="uLname" class="input-large" type="text"
					rel="popover" data-content="Enter Last Name."
					data-original-title="uLname" />

			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Organization</label>
			<div class="controls">
				<form:input path="organization" class="input-large" type="text"
					rel="popover" data-content="Enter organization."
					data-original-title="organization" />

			</div>
		</div>


		<div class="control-group">
			<label class="control-label">About</label>

			<div class="controls">
				<form:input path="about" class="input-large" type="textArea"
					rel="popover" data-content="Enter about."
					data-original-title="about" />

			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Offer/Ask</label>

			<%-- <div class="controls">
            <form:input path="isAsk" class="input-large" type="checkBox"
              data-original-title="isAsk" /> 
            <form:input path="isOffer" class="input-large" type="checkBox"
              data-original-title="isOffer" /> 
            
          </div> --%>
		</div>
		<div class="control-group">
			<label class="control-label">From</label>

			<div class="controls">
				<form:input path="from" class="input-large" type="text"
					rel="popover" data-content="Enter from." data-original-title="from" />

			</div>
		</div>
		<div class="control-group">
			<label class="control-label">To</label>

			<div class="controls">
				<form:input path="to" class="input-large" type="text" rel="popover"
					data-content="Enter to." data-original-title="to" />

			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Time</label>

			<div class="controls">
				<form:input path="time" class="input-large" type="text"
					rel="popover" data-content="Enter time." data-original-title="time" />

			</div>
		</div>
		<div class="control-group">
			<label class="control-label">vehicle</label>

			<div class="controls">
				<form:input path="vehicle" class="input-large" type="text"
					rel="popover" data-content="Enter vehicle."
					data-original-title="vehicle" />

			</div>
		</div>


		<div class="control-group">
			<label class="control-label"></label>
			<div class="controls">
				<button type="submit" class="btn btn-Success">Update</button>
			</div>
		</div>
		<hr />

	</fieldset>


</form:form>