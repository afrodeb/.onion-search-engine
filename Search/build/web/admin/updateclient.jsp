<%@page import="java.util.ArrayList"%>
<%@page import="models.varwere"%>
<%@include file="header.jsp"%>
<%
varwere v=new varwere();
if(request.getParameter("id") == null){
response.setStatus(200);
response.sendRedirect("clients.jsp?r=Id+not+set");
}else{
if(v.getclient(request.getParameter("id")).size() == 0){
response.setStatus(200);
response.sendRedirect("clients.jsp?r=User+not+found");
}
}
%>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.jsp">Home</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">Clients</a>
				</li>
			</ul>
			<%
                        //varwere v=new varwere();
                        ArrayList user=v.getclient(request.getParameter("id"));
                        %>
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Add New Client</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
                                            <form class="form-horizontal" method="post" action="doclientupdate.jsp">
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Full Name </label>
							  <div class="controls">
                                                              <input type="text" value="<% out.print(user.get(1)); %>" required="" class="span6 typeahead form-control text" id="" name="name">
                                                              <input type="hidden" name="id" value="<% out.print(user.get(0)); %>">
							  </div>
							</div>
							
                                                        <div class="control-group">
							  <label class="control-label" for="typeahead">Email </label>
							  <div class="controls">
                                                              <input type="email" required="" value="<% out.print(user.get(2)); %>"  class="span6 typeahead form-control text" id="" name="email">
								
							  </div>
							</div>
                                                      <div class="control-group">
							  <label class="control-label" for="typeahead">Password </label>
							  <div class="controls">
						          <input type="password" required="" value="<% out.print(user.get(4)); %>"  class="span6 typeahead form-control text" id="" name="password">
								
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