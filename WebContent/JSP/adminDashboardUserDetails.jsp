<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/adminDashboardUserDetails.css">
<link rel="icon"
	href="${pageContext.request.contextPath}/IMAGE/logo.png"
	type="image/x-icon">
<title>User Details</title>
</head>
<body>

	<div id="header">
		<img id="headerLogo"
			src="${pageContext.request.contextPath}/IMAGE/adminLogo.png" />
		<p id="headerTitle">Dashboard</p>
	</div>
	<div id="containerOne">
		<div id="option">
			<p>
				<a href="Check_Admin_Session.Admin_Filter"><button>Home</button></a>
			</p>
			</br>
			<p>
				<a href="Check_Admin_Session_ModifyCategory.Admin_Filter"><button>Modify
						Categories</button></a>
			</p>
			</br>
			<p>
				<a href="Check_Admin_Session_ViewFeedback.Admin_Filter"><button>View
						Feedback</button></a>
			</p>
			</br>
			<p>
				<a href="Check_Admin_Session_UserDetails.Admin_Filter"><button>User
						Details</button></a>
			</p>
			</br>
			<p>
				<a href="Check_Admin_Session_UserScore.Admin_Filter"><button>User
						Score</button></a>
			</p>
			</br>
			<p>
				<a href="Check_Admin_Session_ContentView.Admin_Filter"><button>Content
						View</button></a>
			</p>
			</br>
			<p>
				<a href="Admin_Logout"><button>Logout</button></a>
			</p>
			</br>
		</div>
		<%
				
					Map<Integer,ArrayList<String>> userDetailsMap=new HashMap<Integer,ArrayList<String>>();
					userDetailsMap=(Map<Integer,ArrayList<String>>)request.getAttribute("userDetailsMap");
					Set<Integer> keys=userDetailsMap.keySet();
					Iterator<Integer> keyIterator=keys.iterator();
			%>

		<div id="adminContent">
			<div id="menu">
				<p>User Details</p>
				<div id="tableDiv">
					<table border="1" width="100%">


						<%
						int count=0;
					while(keyIterator.hasNext())
					{
						
						%>

						<tr>

							<% 
						Integer key=keyIterator.next();
						ArrayList<String> userDetailsList=new ArrayList<String>();
						userDetailsList=userDetailsMap.get(key);
						System.out.println(userDetailsList);
						if(count==0)
						{
							count=count+1;
							for(int i=0;i<6;i++)
							{
					%>




							<th><%= userDetailsList.get(i) %></th>




							<%
							}
						}
						else
						{
							for(int i=0;i<6;i++)
							{
							%>



							<td><div>
									<%= userDetailsList.get(i) %>
								</div></td>


							<%
							}
						}
						%>

						</tr>

						<%
					}
						%>



					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>