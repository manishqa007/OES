<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="SignIn.css">
</head>
<body>

	<div id="top">
		<table id="table_header">
			<tr>
				<td id="tdtitle">
					<h1>
						<a href="OnlineExamination.html"><img src="Home.png" /></a>
					</h1>
					<h1 id="title">
						<img src="onlinelogomaker-100516-1534-2386.png" width="" />
					</h1>
				</td>
				<td id="tdSignIn"><a id="signInReg"
					href="FetchSecurityQuestion" title="click here Sign in/Register"
					title="Click to sign or register"><strong>Sign
							In/Register</strong></a></td>
			</tr>

		</table>

		<div id="menu">
			<ul id="ul_1">
				<li><a href="help.html">Help</a></li>
				<li><a href="about.html">About Us</a></li>
				<li><a href="category.html">Categories</li>
				</a>
				<li><a href="online.html">Online Tests</a></li>
			</ul>
		</div>
		<div id="centerContent">
			<!--center content-->
			<div id="signInRegForm">
				<table id="formTable">
					<tr>
						<td id="signPart" width="400">
							<h3>Sign In</h3>
							<hr />
							<p>Sign is using your registered account:</p>
							<form action="SignIn" method="post">
								<input id="signEmail" type="email" name="email"
									placeholder="Enter email here" required /> <br /> <input
									id="signPass" type="password" name="pass"
									placeholder="Enter Password here" required /> <br /> <input
									id="signSubmit" type="submit" value="SignIn" /><br /> <a
									href="PasswordRecovery.jsp" name=passRecovery
									style="text-decoration: none">Forget Password?/Click here</a> <br />
								<%="Invalid Usename or Password" %>

							</form>
						</td>
						<td id="regPart" width="500">
							<h3>Register</h3>
							<hr />
							<p>Enter your details here:</p>
							<form action="SignUp" method="post">
								<input id="regName" type="text" name="name"
									placeholder="Enter Name here" required /> <br /> <input
									id="regRmail" type="text" name="email"
									placeholder="Enter email here" required /> <br /> <input
									id="regPass" type="password" name="pass"
									placeholder="Enter Password here" required /> <br /> <input
									id="regConfirmPass" type="password" name="confirmPass"
									placeholder="Re-enter Password here" required /> <br /> <input
									id="regContact" type="number" maxlength="10"
									placeholder="Mobile Number" required /> </br>
								<!--	<select id="regSecurity" name="security" >
									<option selected disabled>Choose security question</option>
									<option>Mother maiden name</option>
									<option>Your first school name</option>
									<option>Place of birth</option>
									<option>Your first phone number</option>
							</select> -->
								<input id="regSecurity" type="text" name="security"
									placeholder="Enter Question here" required /> <input id="ans"
									type="text" name="ans" placeholder="Enter security answer here">
								<input type="submit" value="Register" />
							</form>
						</td>
					</tr>
				</table>

			</div>
		</div>
		<div id="footer_part">
			<table id="table_footer">
				<tr id="footerRow">
					<td id="footerList">
						<ul id="ul_footer">
							<li><a href="about.html">About us</li>
							</a>
							<li><a href="online.html">Online Tests</a></li>
							<li><a href="help.html">Help</a></li>
							<li><a href="feedback.html">Feedback</a></li>
						</ul>
					</td>
					<td id="feedback">
						<p id="parafeedback">Feedback :</p> <textarea id="text"
							placeholder="Not more then 150 words...."></textarea> <br /> <input
						id="textSubmit" type="submit" value="Submit" />
					</td>
				</tr>
			</table>
		</div>
		<div id="developer">
			<table>
				<tr>
					<td><img src="MyPic_new(1).png" /><br />
					<p>Manish Patel</p></td>
					<td><img src="MyPic_new(1).png" /><br />
					<p>Sajal Gupta</p></td>
					<td><img src="MyPic_new(1).png" /><br />
					<p>Sunny Agarwal</p></td>
					<td><img src="MyPic_new(1).png" /><br />
					<p>Umang Kesri</p></td>
				</tr>
			</table>
		</div>
	</div>


</body>
</html>