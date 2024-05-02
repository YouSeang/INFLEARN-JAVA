

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("CalcServlet")
// Ŭ���� ���� HttpServlet�� ��� �޴´�.
public class CalcServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	// GET ��û�� ó���ϱ� ���� �޼���
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//doPost()�� ������ �ϰ� �ִ�. 
		doPost(req, res); // �ؿ��ִ� �޼��� ȣ��
	}

	// POST ��û�� ó���ϱ� ���� �޼���
	// doGet()�޼��� ȣ���ϰ� �ֱ⶧���� ��� ��û�� doPost(0 ���� ó���Ǵ� �����̴�.
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// ��������
		int num1, num2;
		int result; // ����� �����ϱ� ���� ����
		String op;
		
		// Ŭ���̾�Ʈ ����� ���޵� �������� ���� mime type �� ĳ���ͼ� ����
		res.setContentType("text/html; charset=euc-kr");
		
		// Ŭ���̾�Ʈ ������ ���� ��� ��Ʈ�� Ȯ��
		PrintWriter out = res.getWriter();
		
		//HTML form �� ���� ���޵� num1, num2 �з����� ���� ������ �Ҵ�.
		//�̶� getParameter() �޼����� ���ڿ��� �����ϹǷ� ������ �������� ��� Integer.parseInt() �� 
		num1 = Integer.parseInt(req.getParameter("num1")); // html�� name�� ���� �޾ƿ� ���
		num2 = Integer.parseInt(req.getParameter("num2"));		
		op = req.getParameter("operator");
		// calc() �޼��� ȣ��� ��� �޾ƿ�.
		// result = calc(num1, num2, op);
		Calc calc = new Calc(num1, num2, op);
		result = calc.getResult();
	
		// ��� ��Ʈ���� ���� ȭ�鱸��
		out.println("<HTML>");
		out.println("<HEAD><TITLE>����</TITLE></HEAD>");
		out.println("<BODY><CENTER>");
		out.println("<H2>�����</H2>");
		out.println("<HR>");
		out.println(num1+""+op+""+num2+"="+result);
		out.println("</BODY></HTML>");
	}
	
	
	
	// calc �޼���: �� ���ڿ� �����ڸ� �޾Ƽ� ����� ����� ��ȯ�ϴ� �޼���
//	private int calc(int num1, int num2, String op) {
//	    int result = 0; // ��� ���� �ʱ�ȭ
//
//	    // �����ڿ� ���� ��� ����
//	    switch (op) {
//	        case "+":
//	            result = num1 + num2;
//	            break;
//	        case "-":
//	            result = num1 - num2;
//	            break;
//	        case "*":
//	            result = num1 * num2;
//	            break;
//	        case "/":
//	            if (num2 != 0) {
//	                result = num1 / num2;
//	            } else {
//	                // 0���� ���� �� ���� ��쿡 ���� ó��
//	                throw new IllegalArgumentException("Cannot divide by zero");
//	            }
//	            break;
//	        default:
//	            // �������� �ʴ� �����ڿ� ���� ó��
//	            throw new IllegalArgumentException("Unsupported operator");
//	    }
//	    return result; // ��� ��ȯ
//	}
	

}
