<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>ScoreIt IPL 2014</title>
<style>
           .modal-dialog {
                width: 750px;
            }
        </style>
<script type="text/javascript">
function openIt(a) {

	BootstrapDialog
			.show({
				message : '<div class="alert alert-warning">At any time clicking on "Esc" can take you back to ScoreIt.</div>'
						+ $('#blog'+a).html(),
				title : $('#title'+a).html(),
				size : BootstrapDialog.SIZE_LARGE,
				spinicon : 'fa fa-repeat fa-spin pull-right'
			});

}
</script>
<div class="container">
	<div class="row">
		<c:if test="${not empty blogs}">
			<c:forEach var="itm" items="${blogs}">
				<c:if test="${itm.no<9}">
					<div class="col-xs-6 col-md-3">
						<a href="javascript:openIt('${itm.no}')" class="thumbnail"> <c:if
								test="${not empty blogs}">
      	${itm.image}" alt="${itm.title}">
     </c:if> <c:if test="${empty blogs}">
								<img
									src="http://www.rsc.org/blogs/eic/sites/eic/files/default_images/eic-post-default_0.png"
									alt="...">
							</c:if>
						</a>
					</div>




				</c:if>
			</c:forEach>
		</c:if>







	</div>
	
	<div class="collapse">
		<c:if test="${not empty blogs}">
			<c:forEach var="itm" items="${blogs}">
			<c:if test="${itm.no<9}">
				<div id="title${itm.no}">${itm.title}</div>
				<div id="blog${itm.no}">${itm.description}</div>

			</c:if>



			</c:forEach>
		</c:if>
	</div>
</div>