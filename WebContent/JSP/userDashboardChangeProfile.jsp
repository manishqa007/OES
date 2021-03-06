<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/CSS/userDashboardChangeProfile.css">
<title>Change Profile</title>
</head>
<body>

	<div id="header">
		<img id="headerLogo"
			src="${pageContext.request.contextPath}/IMAGE/userLogo.png" />
		<p id="headerTitle">Dashboard</p>
	</div>
	<div id="containerOne">
		<div id="option">
			<p>
				<a href="<%=request.getContextPath()%>/Check_User_Session_MainHome"><button>Home</button></a>
			</p>
			</br>
			<p>
				<a
					href="<%=request.getContextPath()%>/Check_User_Session_Home.User_Filter"><button>Dashboard</button></a>
			</p>
			</br>
			<p>
				<a
					href="<%=request.getContextPath()%>/Check_User_Session_Category.User_Filter"><button>Take
						Test</button></a>
			</p>
			</br>
			<p>
				<a
					href="<%=request.getContextPath()%>/Check_User_Session_ScoreCard.User_Filter"><button>Score
						Card</button></a>
			</p>
			</br>
			<p>
				<a
					href="<%=request.getContextPath()%>/Check_User_Session_DashboardChangePassword.User_Filter"><button>Change
						Password</button></a>
			</p>
			</br>
			<p>
				<a
					href="<%=request.getContextPath()%>/Check_User_Session_Feedback.User_Filter"><button>Feedback</button></a>
			</p>
			</br>
			<p>
				<a
					href="<%=request.getContextPath()%>/Check_User_Session_EditProfile.User_Filter"><button>Edit
						Profile</button></a>
			</p>
			</br>
			<p>
				<a
					href="<%=request.getContextPath()%>/Check_User_Session_LeaderBoard.User_Filter"><button>Leader
						Board</button></a>
			</p>
			</br>
			<p>
				<a href="<%=request.getContextPath()%>/logout.User_Filter"><button>Logout</button></a>
			</p>
			</br>
		</div>

		<%
            	System.out.println("**JSP**userDashboardChangeProfile.jsp");
            	List<String> profileData=new LinkedList<String>();
            	profileData=(List<String>)request.getAttribute("profileData");
            	System.out.println(profileData);
            
            %>

		<div id="viewContent">
			<div id="changeProfile">
				<h3>Fill Profile</h3>
				<hr />

				<form
					action="<%=request.getContextPath() %>/Check_User_Session_UpdateProfile.User_Filter"
					method="post">
					<br /> Name:<br /> <input id="givefeedback" type="text"
						name="userName" value="<%=profileData.get(0) %>" required /> <br />
					<%-- Password:<br/>
								<input id="givefeedback" type="text" name="password" value="<%=profileData.get(1) %>"  required/> <br/>
								Re-Password:<br/>
								<input id="givefeedback" type="text" name="repassword" value="<%=profileData.get(1) %>"  required/> <br/> --%>
					MobileNumber:<br /> <input id="givefeedback" type="text"
						name="mobileNumber" value="<%=profileData.get(1) %>" required /> <br />



					<input type="submit" value="Submit" />
				</form>
			</div>
		</div>

	</div>


</body>
</html>