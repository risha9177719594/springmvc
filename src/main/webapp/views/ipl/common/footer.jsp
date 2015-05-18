<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
(function() {
  var flickerAPI = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.series.past&format=json&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0&callback=";
  $.getJSON( flickerAPI, {
    tags: "mount rainier",
    tagmode: "any",
    format: "json"
  })
    .done(function( data ) {
      $.each( data.query.results.Series, function( i, item ) {
    	//  $("#pas").append($("<li>", {}).text(options[item.SeriesName].text));
        $( "#serP" ).html($( "#serP" ).html()+"<ul><li class='section'>"+item.SeriesName+"</li></ul>");

      });
    });
})();
(function() {
  var flickerAPI = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.series.ongoing&format=json&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0&callback=";
  $.getJSON( flickerAPI, {
    tags: "mount rainier",
    tagmode: "any",
    format: "json"
  })
    .done(function( data ) {
        //$( "#serL" ).html("<ul><li class='section'>"+data.query.results.Series.SeriesName+"</li></ul>");
        if(data.query.results.Series.length>1){
        	$.each( data.query.results.Series, function( i, item ) {
            	$( "#serL" ).html($( "#serL" ).html()+"<ul><li class='section'>"+item.SeriesName+"</li></ul>");
            	if(item.Schedule.Match.length>1){
            		$.each( item.Schedule.Match, function( i, item1 ) {
                		if(item1.status != 'post'){
                			$( "#serL" ).html($( "#serL" ).html()+"<ul><li class='section'><a href='/cricket/id/"+item1.matchid+"' style='color:blue;'>"+item1.MatchNo+"</a></li></ul>");
                		}else{
                			//$( "#serL" ).html("<ul><li class='section'>No Series Live.</li></ul>");
                		}
                    	//$( "#serL" ).html($( "#serL" ).html()+"<ul><li class='section'><a href='/cricket/id/"+item.matchid+"' style='color:blue;'>"+item.MatchNo+"</a></li></ul>");
                    });
            		
            	}else{
            		if(item.Schedule.Match.status != 'post'){
            			$( "#serL" ).html($( "#serL" ).html()+"<ul><li class='section'><a href='/cricket/id/"+item.Schedule.Match.matchid+"' style='color:blue;'>"+item.Schedule.Match.MatchNo+"</a></li></ul>");
            		}else{
            			$( "#serL" ).html("<ul><li class='section'>No Series Live.</li></ul>");
            		}
            	}
            	
            	//$( "#serL" ).html($( "#serL" ).html()+"<ul><li class='section'><a href='/cricket/id/"+item.matchid+"' style='color:blue;'>"+item.MatchNo+"</a></li></ul>");
            });
        }else{
        	$( "#serL" ).html($( "#serL" ).html()+"<ul><li class='section'>"+data.query.results.Series.SeriesName+"</li></ul>");
        	if(data.query.results.Series.Schedule.Match.length>1){
        		$.each( data.query.results.Series.Schedule.Match, function( i, item1 ) {
            		if(item1.status != 'post'){
            			$( "#serL" ).html($( "#serL" ).html()+"<ul><li class='section'><a href='/cricket/id/"+item1.matchid+"' style='color:blue;'>"+item1.MatchNo+"</a></li></ul>");
            		}else{
            			//$( "#serL" ).html("<ul><li class='section'>No Series Live.</li></ul>");
            		}
                	//$( "#serL" ).html($( "#serL" ).html()+"<ul><li class='section'><a href='/cricket/id/"+item.matchid+"' style='color:blue;'>"+item.MatchNo+"</a></li></ul>");
                });
        		
        	}else{
        		if(data.query.results.Series.Schedule.Match.status != 'post'){
        			$( "#serL" ).html($( "#serL" ).html()+"<ul><li class='section'><a href='/cricket/id/"+data.query.results.Series.Schedule.Match.matchid+"' style='color:blue;'>"+data.query.results.Series.Schedule.Match.MatchNo+"</a></li></ul>");
        		}else{
        			$( "#serL" ).html("<ul><li class='section'>No Series Live.</li></ul>");
        		}
        	}
        }
        
    });
})();
(function() {
  var flickerAPI = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.series.upcoming&format=json&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0&callback=";
  $.getJSON( flickerAPI, {
    tags: "mount rainier",
    tagmode: "any",
    format: "json"
  })
    .done(function( data ) {
      $.each( data.query.results.Series, function( i, item ) {
        $( "#serF" ).html($( "#serF" ).html()+"<ul><li class='section'>"+item.SeriesName+"</li></ul>");
        
      });
    });
})();


</script>
<hr>

<div id="footer">
	<div class="row well">
    <div class="bg-fix"></div>
    <div id="" class="col-sm-6 col-md-4">
    <h5><b>Past Series</b></h5>
    <div id="serP" class="">
    
	
      </div>
    </div>
	<div id="" class="col-sm-6 col-md-4">
	<h5><b>Ongoing Series</b></h5>
	<div id="serL" class="">
	<div id="serLM" class="">
	</div>
    
	
     </div> 
    </div>
	<div id="" class="col-sm-6 col-md-4">
	<h5><b>Upcoming Series</b></h5>
	<div id="serF" class="">
    
	
      </div>
    </div>
      
	
    
  </div>
	<div id="networks">
		<p></p>
		<div id="contact">
			<a href="callto:+919177719594" target="blank"> <i
				class="dribbble fa fa-phone"> </i>
			</a> <a href="https://www.facebook.com/pages/ScoreIt/366263700172483" target="blank"> <i
				class="facebook fa fa-facebook"> </i>
			</a> <a href="https://twitter.com/scoreit1" target="blank"> <i
				class="twitter fa fa-twitter"> </i>
			</a> <a href="mailto:risha.9177719594@gmail.com" target="blank"> <i
				class="mail fa fa-envelope"> </i>
			</a>
		</div>
		<p></p>
	</div>
	<p class="footer-link">
		© <a href='/'> <strong>
				ScoreIt </strong>
		</a> 2014 . Powered by <a href="http://www.myrisha.in/" target="blank">MyRishaInc</a>. <br>Developed and supported by <a href="http://rajendar.myrisha.in/">Raj</a>.</br>Thanks to Yahoo! YQL. All data credits to them.
	</p>
</div>