<%@ page import="java.sql.*" %>
<%
            Connection con=null;
            Statement stmt=null;
            ResultSet rs=null;
            String username=request.getParameter("uname");
            String password=request.getParameter("pwd");
             String staff_name="";
             String staff_password="";
			try
			{

				//Database connection
		 		Class.forName("oracle.jdbc.driver.OracleDriver");
		        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","2907");     stmt=con.createStatement(); 
rs=stmt.executeQuery("select * from staff where username='"+username+"' and password='"+password+"'");
				
	          while(rs.next())
				{				         
				      staff_name=rs.getString("username");
					  staff_password=rs.getString("password");         					                        
				} 
				if((username.equals(staff_name)&&password.equals(staff_password)))
				{
					out.println("<h1>Login success</h1>");
				}
				else
				{
					out.println("<h1>Login fail</h1>");
				}
			}
			catch(Exception e)
			{
				out.println(e);	
			}
%>



