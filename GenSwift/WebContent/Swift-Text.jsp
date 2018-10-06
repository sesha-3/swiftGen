<html>
<head>
  <meta charset="UTF-8">
  <title>SwiftText</title>
      <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/style/style.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script>

  	var request;

  	function updatemsg(){
  	  	
		    var url="${pageContext.servletContext.contextPath}/coindex.jsp";
		    var dataA, dataB, dataC, dataD;
		    var msg = 1;
		    var vala = "23G";
		    var valb = "22Fqual";
		    var valc = "22Fcode";
		    var vald = "95a";
		    var flag = 1;
		    
	    	dataA = {msg:msg,val:vala};
	    	dataB = {msg:msg,val:"22F"};
	    	dataC = {msg:msg,val:"22F", flag:flag};
	    	dataD = {msg:msg,val:vald};
	    	
		    $.get(url,dataA, function(dataA, status){
				getinfo(vala,dataA);
	        }, "json");
		    $.get(url,dataB, function(dataB, status){
				getinfo(valb,dataB);
	        }, "json");
		    $.get(url,dataC, function(dataC, status){
				getinfo(valc,dataC);
	        }, "json");
		    $.get(url,dataD, function(dataD, status){
				getinfo(vald,dataD);
	        }, "json");

  	  	}
	
	function getinfo(id, val){
		
	    var sel = document.getElementById(id);
		var i;
	    var opt = document.createElement("option");
	    
		//alert(id);
	        for(i in val){
	            var option = document.createElement("option");
	            if(id == "22Fcode"){
	                option.text = val[i].code;
	            }
	            else{
	                option.text = val[i].qualifier;
	            }
	            //alert(option.text);
	            sel.add(option);
	          }
	}
  </script>

</head>
<body onload = "updatemsg()">
<div class="container">
	<div class="bird-container bird-container--one">
		<div class="bird bird--one"></div>
	</div>
	
	<div class="bird-container bird-container--two">
		<div class="bird bird--two"></div>
	</div>
	
	<div class="bird-container bird-container--three">
		<div class="bird bird--three"></div>
	</div>
	
	<div class="bird-container bird-container--four">
		<div class="bird bird--four"></div>
	</div>
  <div class="bird-container bird-container--five">
		<div class="bird bird--five"></div>
	</div>
	
</div>

<!-- <div class="imagText">
	<img id="i" src="resources/white.jpg" />
</div> -->

<div class="img2">
	<img id="image" src="${pageContext.servletContext.contextPath}/resources/img2.jpg" />
</div>

<div class="formText">
<form method="post" action="Swift-Output" enctype="application/x-www-form-urlencoded">
	<fieldset name="name" >
	  <legend style="text-align:center"><strong>General Information</strong></legend>
	    <table>
	      <tr>
	        <td><label for="20C">Sender Message Reference</label></td>
	        <td><input id="20C" type="text" name="20C" required><br/></td>
	      </tr>
	      <tr>
	        <td> <label for="23G"> Function of Message   </label><br/> </td>
	         <td>  <select name="23G" id="23G" required>
	        <option value="">Function</option>
	        </select> </td>
	      </tr>
	      <tr>
	        <td>  <label for="98C"> Date Preparation   </label><br/></td>
	        <td >   <input id="98C" type="date" name="98C" required><br/> </td>
	      </tr>
	    </table>
	  </fieldset>
	  <br>
	  <fieldset >
	    <legend style="text-align:center"><strong>Trade Details</strong></legend>
	      <table>
	        <tr>
	          <td>  <label for="98A">Settlement Date </label> </td>
	          <td >   <input id="98A" type="date" name="98A" required><br/> </td>
	        </tr>
			<tr>
	          <td>  <label for="35B">Identification of Security </label> </td>
	          <td >   <input id="35B" type="text" name="35B" required><br/> </td>
	        </tr>
	      </table>
	</fieldset>
	<br>
	<fieldset >
	    <legend style="text-align:center"><strong>Financial</strong></legend>
	      <table>
	        <tr>
	          <td>  <label for="36B">Quantity to be Settled </label> </td>
	          <td >   <input id="36B" type="text" name="36B" required><br/> </td>
	        </tr>
			<tr>
	          <td>  <label for="97A">Account </label> </td>
	          <td >   <input id="97A" type="text" name="97A" required><br/> </td>
	        </tr>
	      </table>
	</fieldset>
	<br>
	<fieldset >
	    <legend style="text-align:center"><strong>Settlement Details</strong></legend>
	      <table>
	        <tr>
	          <td>  <label for="22Fqual">Indicator</label> </td>
	           <td>  <select id = "22Fqual" name = "22Fqual" required>
	        <option value="">Qualifier</option>
	        </select> </td>
			 <td>  <select id = "22Fcode" name = "22Fcode" required>
	        <option value="">Code</option>
	        </select> </td>
	      </table>
	</fieldset>
	<br>
	<fieldset >
	    <legend style="text-align:center"><strong>Settlement Party</strong></legend>
	      <table>
	        <tr>
	          <td>  <label for="95a">Party</label> </td>
	           <td>  <select id = "95a" name = "95A" required>
	        <option value="">Party</option>
	        </select> 
			</td>
			<td >   <input type="text" name="partyval" required><br/> </td>
	        </tr>
	      </table>
	</fieldset>
	<br/>
	<div class="wrapper" >
	<input type="submit"  value="SUBMIT" />
	</div>
	</form>
</div>

</body>
</html>