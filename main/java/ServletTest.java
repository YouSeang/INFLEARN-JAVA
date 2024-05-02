import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.util.Calendar;

@WebServlet("/test")
public class ServletTest extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{ 
		//get规侥栏肺 贸府窍绰规过 <-> post规侥(=do?)
		response.setContentType("text/html");
		response.setCharacterEncoding("euc-kr");
		Calendar c=Calendar.getInstance();
		int hour=c.get(Calendar.HOUR_OF_DAY);
		int minute=c.get(Calendar.MINUTE);
		int second=c.get(Calendar.SECOND);
		PrintWriter out=response.getWriter();
		out.write("<HTML><HEAD><TITLE>ServletTest</TITLE></HEAD>");
		out.write("<BODY><H1>");
		out.write("time ");
		out.write(Integer.toString(hour));
		out.write("hour ");
		out.write(Integer.toString(minute));
		out.write("minutes ");
		out.write(Integer.toString(second));
		out.write("second");
		out.write("</H1></BODY></HTML>");
		out.close();
	}
}