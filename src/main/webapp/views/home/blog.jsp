<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
<!--
.share_pfb:hover,.share_pgo:hover,.share_pli:hover,.share_ptwi:hover {
	color: #fff !important
}

.share_pfb,.share_pgo,.share_pli,.share_ptwi {
	color: #fff;
	float: left;
	padding: 6px 24px;
	border-radius: 3px;
	font-size: 15px;
	line-height: 20px
}

.share_pfb {
	background: #4c66a4
}

.share_ptwi {
	background: #00c3f3
}

.share_pli {
	background: #0274B3
}

.share_pgo {
	background: #DB4A37
}

.rowpost {
	margin: 0 !important;
	padding: 10px 0 6px;
	border-radius: 3px
}

.post-sharing-menu {
	padding: 5px;
	height: 50px
}

.post-sharing-menu li {
	padding: 5px 0;
	display: block;
	float: left;
	margin: 0 10px 0 0 !important;
	margin-right: 5px
}
-->
</style>
<c:if test="${empty blogItm }">
	<div class="container">

		<div class="row">

			<div class="col-lg-12">
				<h1 class="page-header">
					News Letters or Blogs <small>Blog Homepage</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li class="active">Blog Home</li>
				</ol>
			</div>

		</div>

		<div class="row">

			<div class="col-lg-8">
				<script async
					src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- blogAdd -->
				<ins class="adsbygoogle"
					style="display: inline-block; width: 728px; height: 90px"
					data-ad-client="ca-pub-0723290601938478" data-ad-slot="5557715938"></ins>
				<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
				<c:if test="${not empty blogs}">
					<c:forEach var="itm" items="${blogs}" varStatus="blogId">
						<c:if test="${itm.no<5}">


							<h1>
								<a href="blog/${itm.no}">${itm.title}</a>
							</h1>
							<p class="lead">
								by <a href="#">Risha Raj</a>
							</p>
							<hr>
							<p>
								<i class="fa fa-clock-o"></i> ${itm.pubDate}
							</p>
							<hr>
							<a href="blog/${itm.no}"> ${itm.image}/> </a>
							<hr>

							<a class="btn btn-primary" href="blog/${itm.no}">Read More <i
								class="fa fa-angle-right"></i></a>

							<hr>
							<div class="row rowpost">
								<ul class="post-sharing-menu">
									<li><a class="share_pgo"
										href="https://plus.google.com/share?u=http://www.scoreit.in/cricket/blog&amp;t=${itm.title}"
										target="_blank" title="Share on Google +"> <i
											class="fa fa-google-plus"> </i>
									</a></li>
									<li><a class="share_pfb"
										href="http://www.facebook.com/sharer.php?u=http://www.scoreit.in/cricket/blog&amp;t=${itm.title}"
										target="_blank" title="Share on facebook"> <i
											class="fa fa-facebook"> </i>
									</a></li>
									<li><a class="share_ptwi"
										href="http://twitter.com/intent/tweet?text=${itm.title}&amp;url=http://www.scoreit.in/cricket/blog"
										target="_blank" title="Share on Twitter"> <i
											class="fa fa-twitter"> </i>
									</a></li>
								</ul>
							</div>

						</c:if>
					</c:forEach>
				</c:if>



				<hr>

				<ul class="pager">
					<li class="previous"><a href="#">&larr; Older</a></li>
					<li class="next"><a href="#">Newer &rarr;</a></li>
				</ul>

			</div>

			<div class="col-lg-4">
				<div class="well">
					<script async
						src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- blogSideAdd -->
					<ins class="adsbygoogle"
						style="display: inline-block; width: 300px; height: 600px"
						data-ad-client="ca-pub-0723290601938478" data-ad-slot="7034449138"></ins>
					<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
				</div>
				<div class="well">
					<h4>Blog Search</h4>
					<div class="input-group">
						<input type="text" class="form-control"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
					<!-- /input-group -->
				</div>
				<!-- /well -->
				<div class="well">
					<h4>Popular Blog Categories</h4>
					<div class="row">
						<div class="col-lg-6">
							<ul class="list-unstyled">
								<li><a href="#dinosaurs">Dinosaurs</a></li>
								<li><a href="#spaceships">Spaceships</a></li>
								<li><a href="#fried-foods">Fried Foods</a></li>
								<li><a href="#wild-animals">Wild Animals</a></li>
							</ul>
						</div>
						<div class="col-lg-6">
							<ul class="list-unstyled">
								<li><a href="#alien-abductions">Alien Abductions</a></li>
								<li><a href="#business-casual">Business Casual</a></li>
								<li><a href="#robots">Robots</a></li>
								<li><a href="#fireworks">Fireworks</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /well -->
				<div class="well">
					<h4>Side Widget Well</h4>
					<p>Bootstrap's default well's work great for side widgets! What
						is a widget anyways...?</p>
				</div>
				<!-- /well -->
			</div>
		</div>

	</div>
</c:if>
<c:if test="${not empty blogItm or blogItm != null}">

	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					${blogItm.title } <small>by <a href="#">scoreIt</a>
					</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li class="active">Blog Post</li>
				</ol>
			</div>
		</div>
		<!-- /.row -->

		<!-- Content Row -->
		<div class="row">

			<!-- Blog Post Content Column -->
			<div class="col-lg-8">

				<!-- Blog Post -->

				<hr>

				<!-- Date/Time -->
				<p>
					<i class="fa fa-clock-o"></i> ${blogItm.pubDate }
				</p>

				<hr>

				${blogItm.description }
				<hr>

				<!-- Blog Comments -->

				<!-- Comments Form -->
				<div class="well">
					<div class="row rowpost">
						<ul class="post-sharing-menu">
							<li><a class="share_pgo"
								href="https://plus.google.com/share?u=http://www.scoreit.in/cricket/blog&amp;t=${itm.title}"
								target="_blank" title="Share on Google +"> <i
									class="fa fa-google-plus"> </i>
							</a></li>
							<li><a class="share_pfb"
								href="http://www.facebook.com/sharer.php?u=http://www.scoreit.in/cricket/blog&amp;t=${itm.title}"
								target="_blank" title="Share on facebook"> <i
									class="fa fa-facebook"> </i>
							</a></li>
							<li><a class="share_ptwi"
								href="http://twitter.com/intent/tweet?text=${itm.title}&amp;url=http://www.scoreit.in/cricket/blog"
								target="_blank" title="Share on Twitter"> <i
									class="fa fa-twitter"> </i>
							</a></li>
						</ul>
					</div>
					<h4>Leave a Comment:</h4>
					<form role="form">
						<div class="form-group">
							<textarea class="form-control" rows="3"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>

				<hr>

				<!-- Posted Comments -->

				<!-- Comment -->
				<div class="media">
					<a class="pull-left" href="#"> <img class="media-object"
						src="http://placehold.it/64x64" alt="">
					</a>
					<div class="media-body">
						<h4 class="media-heading">
							Start Bootstrap <small>August 25, 2014 at 9:30 PM</small>
						</h4>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
						scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
						in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
					</div>
				</div>

				<!-- Comment -->
				<div class="media">
					<a class="pull-left" href="#"> <img class="media-object"
						src="http://placehold.it/64x64" alt="">
					</a>
					<div class="media-body">
						<h4 class="media-heading">
							Start Bootstrap <small>August 25, 2014 at 9:30 PM</small>
						</h4>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
						scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
						in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
						<!-- Nested Comment -->
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="http://placehold.it/64x64" alt="">
							</a>
							<div class="media-body">
								<h4 class="media-heading">
									Nested Start Bootstrap <small>August 25, 2014 at 9:30
										PM</small>
								</h4>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
								scelerisque ante sollicitudin commodo. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis. Fusce
								condimentum nunc ac nisi vulputate fringilla. Donec lacinia
								congue felis in faucibus.
							</div>
						</div>
						<!-- End Nested Comment -->
					</div>
				</div>

			</div>

			<!-- Blog Sidebar Widgets Column -->
			<div class="col-md-4">

				<!-- Blog Search Well -->
				<div class="well">
					<h4>Blog Search</h4>
					<div class="input-group">
						<input type="text" class="form-control"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
					<!-- /.input-group -->
				</div>

				<!-- Blog Categories Well -->
				<div class="well">
					<h4>Blog Categories</h4>
					<div class="row">
						<div class="col-lg-6">
							<ul class="list-unstyled">
								<li><a href="#">Category Name</a></li>
								<li><a href="#">Category Name</a></li>
								<li><a href="#">Category Name</a></li>
								<li><a href="#">Category Name</a></li>
							</ul>
						</div>
						<div class="col-lg-6">
							<ul class="list-unstyled">
								<li><a href="#">Category Name</a></li>
								<li><a href="#">Category Name</a></li>
								<li><a href="#">Category Name</a></li>
								<li><a href="#">Category Name</a></li>
							</ul>
						</div>
					</div>
					<!-- /.row -->
				</div>

				<!-- Side Widget Well -->
				<div class="well">
					<h4>Side Widget Well</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Inventore, perspiciatis adipisci accusamus laudantium odit aliquam
						repellat tempore quos aspernatur vero.</p>
				</div>

			</div>

		</div>
	</div>

</c:if>
<!-- /.container -->


