var request;

function sendInfo() {
    //var v=document.country.id;
    var url="index.jsp";

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
    var url="index.jsp?val="+selVal+"&type="+e.id;
    request=new XMLHttpRequest();
    try {
        	if(e.id == "country")
        		request.onreadystatechange=getInfoBank;
        	if(e.id == "Country")
        		request.onreadystatechange=getInfoBankk;
			if(e.id == "bank")
				request.onreadystatechange=getInfoCity;
			if(e.id == "Bank")
				request.onreadystatechange=getInfoCityy;
			if(e.id == "city")
				request.onreadystatechange=getInfoBranch;
			if(e.id == "City")
				request.onreadystatechange=getInfoBranchh;
			if(e.id == "branch")
				request.onreadystatechange=getInfoSwift;
			if(e.id == "Branch")
				request.onreadystatechange=getInfoSwiftt;
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
        var i;
        var sel = document.getElementById('summa').innerHTML = val[0].swift_code;
           
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
        var i;
        var sel = document.getElementById('Summa').innerHTML = val[0].swift_code;
           
    }
}