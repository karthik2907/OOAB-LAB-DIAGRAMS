<%@ page import="java.sql.*" %>

<%
            Connection con=null;
            Statement stmt=null;
            ResultSet rs=null;
                 String n=request.getParameter("uname");
		
		String r=request.getParameter("pwd");
               try{
		
                    Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","2907");
		PreparedStatement ps=con.prepareStatement("insert into student values(?,?)");
		ps.setString(1,n);
		ps.setString(2,r);
		//ps.setString(3,k);
		 int i=ps.executeUpdate();
		if(i>0)
                    //response.sendRedirect("mohan.html"); 
                   out.print("You are successfully registered...");
                }
                catch(Exception e)
			{
				out.println(e);	
			}
%>




