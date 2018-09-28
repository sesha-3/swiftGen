<html>
<head>
  <meta charset="UTF-8">
  <title>SwiftText</title>
      <link rel="stylesheet" href="../resources/style/style.css">
      
  <script>

	function update(e){
	    //var v=e.value;
	    var url="../coindex.jsp?msg=1&val="+e.id;
	    if(e.id == "22Fcode"){
		    var url = "../coindex.jsp?msg=1&val=22F&flag=1";
		    }
	
	    request=new XMLHttpRequest();
	
	    try {
	        request.onreadystatechange=getInfo(e.id);
	        request.open("GET",url,true);
	        request.send();
	    }
	    catch(e) {
	        alert("Unable to connect to server");
	    }
	}
	
	function getInfo(e){
		//alert(e);
	    var sel = document.getElementById(e);
	    while (sel.hasChildNodes()) {  
	        sel.removeChild(sel.firstChild);
	    }
	    var opt = document.createElement("option");
	    opt.text = "Select any one";
	    sel.add(opt);
	    //alert("in dad");
		if(request.readyState==4){
			alert("in d");
			var val = JSON.parse(request.responseText);
			var i;
	        for(i in val){
		        alert("in for");
	            var option = document.createElement("option");
	            if(e.equals("22Fcode")){
	                option.text = val[i].code;
                	alert(e);
	            }
	            else{
	                option.text = val[i].qualifier;
	                alert(e);
	                alert(option.text);
	            }
	            
	            sel.add(option);
	           }
		}
		//alert("in mom");
	}
  </script>

</head>
<body>
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
	<img id="image" src="../resources/scblogo.jpg" />
</div>

<div class="formText">
<form method="post" action="test/Swift-Text" enctype="application/x-www-form-urlencoded">
	<fieldset name="name" >
	  <legend style="text-align:center"><strong>General Information</strong></legend>
	    <table>
	      <tr>
	        <td><label for="20C">Sender Message Reference</label></td>
	        <td><input id="20C" type="text" name="20C" required><br/></td>
	      </tr>
	      <tr>
	        <td> <label for="23G"> Function of Message   </label><br/> </td>
	         <td>  <select name="23G" id="23G" onclick="update(this)" required>
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
	          <td>  <label for="22F">Indicator</label> </td>
	           <td>  <select id = "22F" name = "22Fqual" onclick="update(this)" required>
	        <option value="">Qualifier</option>
	        </select> </td>
			 <td>  <select id = "22Fcode" name = "22Fcode" onclick="update(this)" required>
	        <option value="">Code</option>
	        </select> </td>
	      </table>
	</fieldset>
	<br>
	<fieldset >
	    <legend style="text-align:center"><strong>Settlement Party</strong></legend>
	      <table>
	        <tr>
	          <td>  <label for="95A">Party</label> </td>
	           <td>  <select id = "95A" name = "95A" onclick="update(this)" required>
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