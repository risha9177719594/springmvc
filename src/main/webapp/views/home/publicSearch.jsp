<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>


<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
<script src='<c:url value="/resources/js/map.js"/>'></script>
<script src='<c:url value="/resources/js/map2.js"/>'></script>


<form:form modelAttribute="route" method="post" class="well">
      
      <fieldset>

        <legend>Search</legend>

        <div class="control-group">
          <label class="control-label">From</label>
          <div class="controls">
            <input id="pac-input" class="input-large" placeholder="From">
            <form:hidden path="from"/>
            <%-- <form:input path="from" class="input-large" type="text"
              rel="popover" data-content="Enter from location."
              data-original-title="from" /> --%>
            
          </div>
        </div>


        <div class="control-group">
          <label class="control-label">To</label>
          
          <div class="controls">
            <input id="to-input" class="input-large" placeholder="to">
            <form:hidden path="to"/>
            <%-- <form:input path="to" class="input-large" type="text"
              rel="popover" data-content="Enter to location."
              data-original-title="to" /> --%>
            
          </div>
        </div>

        
        <div class="control-group">
          <label class="control-label"></label>
          <div class="controls">
            <button type="submit" class="btn btn-warning">Search</button>
          </div>
        </div>
 <div id="map-canvas" class="collapse"></div>
      </fieldset>


</form:form>