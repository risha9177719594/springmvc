<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>


<form:form modelAttribute="userPrivate" method="post" >
      
      <fieldset>

        <legend>Search</legend>

        <div class="control-group">
          <label class="control-label">Username</label>
          <div class="controls">
            <form:input path="userName" class="input-large" type="text"
              rel="popover" data-content="Enter Username."
              data-original-title="Username" /> 
            
          </div>
        </div>
        <div class="control-group">
          <label class="control-label">Email</label>
          <div class="controls">
            <form:input path="email" class="input-large" type="text"
              rel="popover" data-content="Enter email."
              data-original-title="email" /> 
            
          </div>
        </div>
        <div class="control-group">
          <label class="control-label">Phone</label>
          <div class="controls">
            <form:input path="phoneNo" class="input-large" type="text"
              rel="popover" data-content="Enter phoneNo."
              data-original-title="phoneNo" /> 
            
          </div>
        </div>


        <div class="control-group">
          <label class="control-label">Password</label>
          
          <div class="controls">
            <form:input path="password" class="input-large" type="text"
              rel="popover" data-content="Enter Password."
              data-original-title="Password" /> 
            
          </div>
        </div>
        <div class="control-group">
          <label class="control-label">Confirm Password</label>
          
          <div class="controls">
            <form:input path="password" class="input-large" type="text"
              rel="popover" data-content="Re-Enter Password."
              data-original-title="Password" /> 
            
          </div>
        </div>

        
        <div class="control-group">
          <label class="control-label"></label>
          <div class="controls">
            <button type="submit" class="btn btn-Success">SignUp</button>
          </div>
        </div>
      <hr/>
      
      </fieldset>


</form:form>