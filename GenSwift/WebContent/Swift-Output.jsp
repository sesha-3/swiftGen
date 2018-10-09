<!DOCTYPE html>
<html>
<head>
<title> OUTPUT </title>
<style>
	body, html {
	    height: 100%;
	    margin: 0;
	}
	.bgimg {
	    background-image: url('${pageContext.servletContext.contextPath}/resources/img2.jpg');
	    height: 100%;
	    background-position: center;
	    background-size: cover;
	    color: black;
	    font-family: "Courier New", Courier, monospace;
	    font-size: 15px;
	}
	.topleft {
	    position: absolute;
	    top: 5px;
	    right: 10px;
	}
	.middle {
	    position: absolute;
	    top: 10%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    text-align: center;
	}
	.transbox {
	  margin-left:30%;
	  margin-top:20%;
	  background-color: #ffffff;
	  border: 1px solid black;
	  opacity: 0.9;
	  filter: alpha(opacity=60); /* For IE8 and earlier */
	  float: middle;
	  width: 30%;
	  padding: 50px;
	  height: 40%;
	}
	.central {
		margin-left: 20%;	
	}
	div.transbox {
  margin: 30px;
  background-color: #ffffff;
  border: none;
  opacity: 0.6;
  filter: alpha(opacity=60); /* For IE8 and earlier */
  padding: 10% 10% 10% 10%;
  box-shadow: 10px 10px 5px #999;
}

</style>
</head>
<body class="bgimg">
		<div class="topleft">
		 <img src="${pageContext.servletContext.contextPath}/resources/scblogo.png" alt="logo" style="width:130px;height:130px;">
		</div>
		<div class = "transbox">
		<div class = "central">
			  <h1>YOUR SWIFT MESSAGE HAS BEEN GENERATED AND DOWNLOADED SUCCESSFULLY.</h1>
			  <h3>Check the swift code in the following directory-</h3><br/><h3>
			   E:\JAVA_SOFTWARE\eclipse\</h3><br/>
			  </div>
			  </div>
</body>
</html>