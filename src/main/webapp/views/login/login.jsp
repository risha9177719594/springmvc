<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<body onload='document.f.j_username.focus();'>
  <c:if test="${not empty error}">
    <div class="errorblock">
      Your login attempt was not successful, try again.<br /> Caused :
      ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
    </div>
  </c:if>
<%-- <form:form modelAttribute="userPrivate" method="post" >
      
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
          <label class="control-label">Password</label>
          
          <div class="controls">
            <form:input path="password" class="input-large" type="text"
              rel="popover" data-content="Enter Password."
              data-original-title="Password" /> 
            
          </div>
        </div>

        
        <div class="control-group">
          <label class="control-label"></label>
          <div class="controls">
            <button type="submit" class="btn btn-Success">Login</button>
          </div>
        </div>
      <hr/>
      
      </fieldset>


</form:form> --%>    
<form name='f' method="post" action="<c:url value='j_spring_security_check' />">
      
      <fieldset>

        <legend>Login</legend>

        <div class="control-group">
          <label class="control-label">UserName</label>
          <div class="controls">
            <input name="j_username" class="input-large" type="text"
              rel="popover" data-content="Enter Username."
              data-original-title="Job Name" />
            
          </div>
        </div>


        <div class="control-group">
          <label class="control-label">Password</label>
          
          <div class="controls">
            <input name="j_password" class="input-large" type="password"
              rel="popover" data-content="Enter Job name."
              data-original-title="App Name" />
            
          </div>
        </div>

        
        <div class="control-group">
          <label class="control-label"></label>
          <div class="controls">
            <button type="submit" class="btn btn-success">Login</button>
          </div>
        </div>

      </fieldset>


    </form>

    
</body>
