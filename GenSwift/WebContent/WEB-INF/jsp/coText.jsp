<%@ page import="java.sql.*"%>
<%@ page import="org.json.*"%>

<%
	String val = request.getParameter("val");
	//String type = request.getParameter("type");
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
            String str = "select qualifier from message_tag_table where tag='"+ val +"'";
            		
            	

            PreparedStatement ps=con.prepareStatement(str);
            //ps.setString(1,s);
            //if(type.equals("branch"))	System.out.println(str);
            JSONArray jsonArray = new JSONArray();
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
	                //out.print(rs.getString(1)+" ");
	            int total_rows = rs.getMetaData().getColumnCount();
	            for (int i = 0; i < total_rows; i++) {
	                JSONObject obj = new JSONObject();
	                obj.put(rs.getMetaData().getColumnLabel(i + 1)
	                        .toLowerCase(), rs.getObject(i + 1));
	                jsonArray.put(obj);
	            	}
            }
            out.print(jsonArray);
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
%>