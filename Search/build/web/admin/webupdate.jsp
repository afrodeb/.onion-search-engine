<%@page import="java.util.ArrayList"%>
<%@page import="models.varwere"%>
<%@include file="header.jsp"%>
<%
String id="0";
    if(request.getParameter("id") != null){
     id = request.getParameter("id");
      }else{
     response.setStatus(200);
     response.sendRedirect("websites.jsp?r=Website+id+missing");
      }
varwere v=new varwere();                                                
ArrayList website=v.getWebsiteById(id);
if(website.size() < 1){
 response.setStatus(200);
 response.sendRedirect("websites.jsp?r=Website+information+missing");
}
%>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">Home</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">Forms</a>
				</li>
			</ul>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Form Elements</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
                                            <form class="form-horizontal" method="post" action="dowebsiteupdate.jsp">
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Update URL </label>
							  <div class="controls">
                                                              <input type="text" value="<% out.print(website.get(0)); %>" class="span6 typeahead form-control text" id="" name="web">
                                                              <input type="hidden" name="id" value="<% out.print(website.get(1)); %>">	
							  </div>
							</div>
							

							
							<div class="form-actions">
							  <button type="submit" class="btn btn-primary">Save changes</button>
							  <button type="reset" class="btn">Cancel</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->

			
		
    

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">�</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	
	<div class="clearfix"></div>
	
<%@include file="footer.jsp" %>
