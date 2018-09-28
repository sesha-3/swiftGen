<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>SwiftIndex</title>
  
  
  
      <link rel="stylesheet" href="resources/style/style.css">
      <!-- <link rel="text/javascript" href="resources/js/main.js"> -->
      
<script type="text/javascript">
var request;
var bnk;

function sendInfo() {
    //var v=document.country.id;
    var url="coindex.jsp";

    if(window.XMLHttpRequest){
        request=new XMLHttpRequest();
    }
    try {
        request.onreadystatechange=getInfo;
        request.open("GET",url,true);
        request.send();
    }
    catch(e) {
        alert("Unable to connect to server");
    }
    //getInfo();
}

function getInfo() {
    if(request.readyState==4){
        var val = JSON.parse(request.responseText);
        var i;
        var sel = document.getElementById('country');
        var Sel = document.getElementById('Country');
         for(i in val){
            var option = document.createElement("option");
            var Option = document.createElement("option");
            option.text = val[i].country_name;
            Option.text = val[i].country_name;
            //option.id  = val[i].country_code;
            sel.add(option);
            Sel.add(Option);
           }
    }
}

function updateBank(e) {
	var selVal = e.value;
    var url="coindex.jsp?val="+selVal+"&type="+e.id;
    request=new XMLHttpRequest();
    try {
        	if(e.id == "country")
        		request.onreadystatechange=getInfoBank;
        	if(e.id == "Country")
        		request.onreadystatechange=getInfoBankk;
			if(e.id == "bank"){
				request.onreadystatechange=getInfoCity;
				bnk = e.value;
			}
			if(e.id == "Bank"){
				request.onreadystatechange=getInfoCityy;
				bnk = e.value;
			}
			if(e.id == "city"){
				request.onreadystatechange=getInfoBranch;
				url = url + "&bank="+bnk;
			}
			if(e.id == "City"){
				request.onreadystatechange=getInfoBranchh;
				url = url + "&bank="+bnk;
			}
			if(e.id == "branch"){
				request.onreadystatechange=getInfoSwift;
				url = url + "&bank="+bnk;
			}
			if(e.id == "Branch"){
				request.onreadystatechange=getInfoSwiftt;
				url = url + "&bank="+bnk;
			}
        request.open("GET",url,true);
        request.send();
    }
    catch(e) {
        alert("Unable to connect to server"+e);
    }
}
//First select
function getInfoBank() {
    if(request.readyState==4){
        var val = JSON.parse(request.responseText);
        var i;
        var sel = document.getElementById('bank');
        while (sel.hasChildNodes()) {  
            sel.removeChild(sel.firstChild);
        }
        var opt = document.createElement("option");
        opt.text = "Select a Bank";
        sel.add(opt);
         for(i in val){
            var option = document.createElement("option");
            option.text = val[i].bank_name;
            //option.id  = val[i].country_code;
            sel.add(option);
           }
    }
}

function getInfoCity() {
    if(request.readyState==4){
        var val = JSON.parse(request.responseText);
        var i;
        var sel = document.getElementById('city');
        while (sel.hasChildNodes()) {  
            sel.removeChild(sel.firstChild);
        }
        var opt = document.createElement("option");
        opt.text = "Select a City";
        sel.add(opt);
         for(i in val){
            var option = document.createElement("option");
            option.text = val[i].city_name;
            //option.id  = val[i].country_code;
            sel.add(option);
           }
    }
}

function getInfoBranch() {
    if(request.readyState==4){
        var val = JSON.parse(request.responseText);
        var i;
        var sel = document.getElementById('branch');
        while (sel.hasChildNodes()) {  
            sel.removeChild(sel.firstChild);
        }
        var opt = document.createElement("option");
        opt.text = "Select a Branch";
        sel.add(opt);
//        alert(sel);
         for(i in val){
            var option = document.createElement("option");
            option.text = val[i].branch_name;
            //option.id  = val[i].country_code;
            sel.add(option);
           }
    }
}


function getInfoSwift() {
    if(request.readyState==4){
        var val = JSON.parse(request.responseText);
        //alert(val[0].swift_code);
        var option = document.createElement("option");
        var sel = document.getElementById("swiftcode");
        while (sel.hasChildNodes()) {  
            sel.removeChild(sel.firstChild);
        }
        option.text = val[0].swift_code;
        sel.add(option);
           
    }
}


//End of First



function getInfoBankk() {
    if(request.readyState==4){
        var val = JSON.parse(request.responseText);
        var i;
        var sel = document.getElementById('Bank');
        while (sel.hasChildNodes()) {  
            sel.removeChild(sel.firstChild);
        }
        var opt = document.createElement("option");
        opt.text = "Select a Bank";
        sel.add(opt);
         for(i in val){
            var option = document.createElement("option");
            option.text = val[i].bank_name;
            //option.id  = val[i].country_code;
            sel.add(option);
           }
    }
}

function getInfoCityy() {
    if(request.readyState==4){
        var val = JSON.parse(request.responseText);
        var i;
        var sel = document.getElementById('City');
        while (sel.hasChildNodes()) {  
            sel.removeChild(sel.firstChild);
        }
        var opt = document.createElement("option");
        opt.text = "Select a City";
        sel.add(opt);
         for(i in val){
            var option = document.createElement("option");
            option.text = val[i].city_name;
            //option.id  = val[i].country_code;
            sel.add(option);
           }
    }
}

function getInfoBranchh() {
    if(request.readyState==4){
        var val = JSON.parse(request.responseText);
        var i;
        var sel = document.getElementById('Branch');
        while (sel.hasChildNodes()) {  
            sel.removeChild(sel.firstChild);
        }
        var opt = document.createElement("option");
        opt.text = "Select a Branch";
        sel.add(opt);
//        alert(sel);
         for(i in val){
            var option = document.createElement("option");
            option.text = val[i].branch_name;
            //option.id  = val[i].country_code;
            sel.add(option);
           }
    }
}


function getInfoSwiftt() {
    if(request.readyState==4){
        var val = JSON.parse(request.responseText);
        //alert(val[0].swift_code);
        var option = document.createElement("option");
        var sel = document.getElementById("Swiftcode");
        while (sel.hasChildNodes()) {  
            sel.removeChild(sel.firstChild);
        }
        option.text = val[0].swift_code;
        sel.add(option);
        //document.getElementById("Swiftcode").text = val[0].swift_code;
           
    }
}

</script>
  
</head>

<body onload="sendInfo()">

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

<!-- <div class="imag">
	<img id="im" src="resources/white.jpg" />
</div> -->
<div class="img2">
	<img id="image" src="resources/scb.jpg" />
</div>
<form method="post" action="test/Swift-Text" enctype="application/x-www-form-urlencoded">
	<div class="form">
		<fieldset>
			<legend style="text-align:center"><strong>Sender Details</strong></legend>
			<table align="center">
				<tr>
					<td> <label for="SCountryName">Country Name </label></td>
					<td>  <select id = "country" name="country" onchange="updateBank(this)" required>
						<option value="" >Select one country</option>
						</select>  </td>
				</tr>
				<tr>
					<td><label for="sendBank">Bank Name</label></td>
					<td>  <select id = "bank" name="bank" onchange="updateBank(this)" required>
						<option value="">Select one bank</option>
						</select>  </td>
				</tr>
				<tr>
					<td>  <label for="SCityName">City</label></td>
					<td>  <select id = "city" name="city" onchange="updateBank(this)" required>
						<option value="">Select one city</option>
						</select>  </td>
				</tr>
					
				<tr>
					<td>  <label for="SBranch"> Branch   </label></td>
					<td>  <select id = "branch" name="branch" onchange="updateBank(this)" required>
					<option value="">Select one branch</option>
					</select> </td>
				</tr>
			</table>
		</fieldset>
	 <br>
	 <fieldset>
		<legend style="text-align:center"><strong>Application Details</strong></legend>
		<table align="center">
			<tr>
				<td><label>Option</label></td>
				<td><select class="dropdown" id="direction" name="direction" required>
				<option value="">Select</option>
				<option value="I">Input</option>
				<option value="O">Output</option>
				</select> </td>
			</tr>
			<tr>
				<td><label>Message Type</label></td>
				<td><select class="dropdown" id = "MT" name="MT" required>
				<option value="">Select</option>
				<option value="540">MT540</option>
				<option value="542">MT542</option>
				</select> </td>
			</tr>
		</table>
	 </fieldset>
	 <br>
	 <fieldset>
		<legend style="text-align:center"><strong>Receiver Details</strong></legend>
		<table align="center">
				<tr>
					<td> <label for="RCountryName">Country Name </label></td>
					<td>  <select id = "Country" name="Country" onchange="updateBank(this)" required>
						<option value="">Select one country</option>
						</select>  </td>
				</tr>
				<tr>
					<td><label for="recieveBank">Bank Name</label></td>
					<td>  <select id = "Bank" name="Bank" onchange="updateBank(this)" required>
						<option value="">Select one bank</option>
						</select>  </td>
				</tr>
				<tr>
					<td>  <label for="RCityName">City</label></td>
					<td>  <select id = "City" name="City" onchange="updateBank(this)" required>
						<option value="">Select one city</option>
						</select>  </td>
				</tr>
					
				<tr>
					<td>  <label for="RBranch">Branch   </label></td>
					<td>  <select id = "Branch" name="Branch" onchange="updateBank(this)" required>
					<option value="">Select one branch</option>
					</select> </td>
				</tr>
				<tr>
					<td>  <label> Message Priority</label></td>
					<td>  <select name="msgPriority">
					<option value="U">U</option>
					<option value="N">N</option>
					<option value="S">S</option>
					</select> </td>
				</tr>
			</table>
	 </fieldset>
	 	<select id = "swiftcode" name = "swiftcode" style="display: none"></select>
	 	<select id = "Swiftcode" name = "Swiftcode" style="display: none"></select>
	 <br>
		<div class="wrapper">
			<input type="submit" value="SUBMIT"/>
		</div>
	</div>
</form>

</body>

</html>
