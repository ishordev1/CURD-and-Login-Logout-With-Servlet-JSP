<%@page import="com.Entity.Student"%>
<%
Student student=(Student)session.getAttribute("student");
%>

<%@include file="helper/css&jsfile.jsp" %>
<!-- Navbar Start -->
	<div class="container-fluid bg-Color">
		<div class="container ">
			<nav class="navbar navbar-expand-lg navbar-dark">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">Navbar</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="index.jsp">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
									Dropdown </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#">Action</a></li>
									<li><a class="dropdown-item" href="#">Another action</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="#">Something else
											here</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link disabled" href="#"
								tabindex="-1" aria-disabled="true">Disabled</a></li>
						</ul>
						
						<%
						if(student==null){
						%>
					<div>
						<a href="signup.jsp" class="btn btn-success mx-2" >Sing up</a>
							<a href="signin.jsp" class="btn btn-warning" >Sing in</a>
							
					</div>
						<%
						}
						else{
							
						%>
						<div class=" ">
						<a  class=" mx-2 text-white" ><b><%=student.getName() %></b></a>
							<a href="logout.jsp" class="btn btn-warning" >logout</a>
							
					</div>
					
						
						<%} %>
					</div>
				</div>
			</nav>
		</div>

	</div>
	<!-- Navbar End -->