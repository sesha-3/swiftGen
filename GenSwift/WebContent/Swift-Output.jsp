<!DOCTYPE html>
<html>
<head>
<style>
	body, html {
	    height: 100%;
	    margin: 0;
	}
	.bgimg {
	    background-image: url('resource/scb1.jpg');
	    height: 100%;
	    background-position: center;
	    background-size: cover;
	    color: white;
	    font-family: "Courier New", Courier, monospace;
	    font-size: 15px;
	}
	.topleft {
	    position: absolute;
	    top: 5px;
	    left: -10px;
	}
	body div .middle {
	    position: absolute;
	    top: 10%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    text-align: center;
	}
	hr {
	    margin: auto;
	    width: 100%;
	}
	div .transbox {
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
	div .transbox p {
	  margin: 5%;
	  font-weight: bold;
	  color: #000000;
	}
	div .transbox button {
		
	}
</style>
<script type="text/javascript" >

	function download(text) {
		var filename="swift.txt"
		  var pom = document.createElement('a');
		  pom.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
		  pom.setAttribute('download', filename);
		
		  pom.style.display = 'none';
		  document.body.appendChild(pom);
		
		  pom.click();
		  
		  document.body.removeChild(pom);
	}
</script>
</head>
<body class="bgimg">
	<div>
		<div class="topleft">
		 <img src="resources/scblogo.png" alt="logo" style="width:130px;height:130px;">
		</div>
	  
		<div class="middle">
		  <h1>${swiftt}</h1>
		</div>
		<div class="transbox">
		  	<form  onsubmit="download( this['msg'].value)" >
		  	<textarea name="msg">swift</textarea><h2>nothing</h2>
		    <input type="submit" name="button1" value="Download" />
			</form>
		</div>
	</div>
</body>
</html>