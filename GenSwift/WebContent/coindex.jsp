<%@ page import="java.sql.*"%>
<%@ page import="org.json.*"%>

<%
	String val = request.getParameter("val");
	String type = request.getParameter("type");
	String msg = request.getParameter("msg");
	String flag = request.getParameter("flag");
	String str = "";
	String bnk = request.getParameter("bank");
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
            if(msg==null){
	            if(val==null || val.trim().equals("")) {  
	                str = "select distinct(country_name) from bic_table order by country_name";
	            	}
	            else{
	            		if(type.equals("country")||type.equals("Country")){
	            			str = "select distinct(bank_name) from bic_table where country_name='"
	            					+val+"' order by bank_name";
	            			
	            		}
	            		if(type.equals("bank")||type.equals("Bank")){
	            			str = "select distinct(city_name) from bic_table where bank_name='"
	            					+val+"' order by city_name";
	            			//bnk = new String(val);
	            		}
	            		if(type.equals("city")||type.equals("City")){
	            			str = "select distinct(branch_name) from bic_table where city_name='"
	            					+val +"' AND bank_name = '"+bnk 
	            					+"' order by branch_name";
	            		} 
	            		if(type.equals("branch")||type.equals("Branch")){
	            			str = "select swift_code from bic_table where branch_name='"
	            					+val+"' AND bank_name = '"+bnk +"'";
	            		}  
	            		
	            	}
            }
            else{
            	if(flag != null){
                	str = "select code from message_tag_table where tag_id='22F'";
                }
                else{
                	str = "select qualifier from message_tag_table where tag_id='"+ val +"'";
                }
            }
        

            PreparedStatement ps=con.prepareStatement(str);
            //ps.setString(1,s);
            //if(type.equals("branch"))	System.out.println(str);
            JSONArray jsonArray = new JSONArray();
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
	                //out.print(rs.getString(1)+" ");
	            int total_rows = rs.getMetaData().getColumnCount();
	            for (int i = 0; i < total_rows; i++) {
		            	if(rs.getObject(i+1)!=null){
			                JSONObject obj = new JSONObject();
			                obj.put(rs.getMetaData().getColumnLabel(i + 1)
			                        .toLowerCase(), rs.getObject(i + 1));
			                jsonArray.put(obj);
		            	}
	            	}
            }
            out.print(jsonArray);
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
%>