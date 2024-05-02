
public class Calc {
	private int num1;
	private int num2;
	private String op;
	
	public Calc(int num1, int num2, String op) {
		this.num1 = num1;
		this.num2 = num2;
		this.op = op;
	}
	
    // ��� ����� ��ȯ�ϴ� �޼���
    public int getResult() {
        int result = 0; // ��� ���� �ʱ�ȭ

        // �����ڿ� ���� ��� ����
        switch (op) {
            case "+":
                result = num1 + num2;
                break;
            case "-":
                result = num1 - num2;
                break;
            case "*":
                result = num1 * num2;
                break;
            case "/":
                if (num2 != 0) {
                    result = num1 / num2;
                } else {
                    // 0���� ���� �� ���� ��쿡 ���� ó��
                    throw new IllegalArgumentException("Cannot divide by zero");
                }
                break;
            default:
                // �������� �ʴ� �����ڿ� ���� ó��
                throw new IllegalArgumentException("Unsupported operator");
        }

        return result; // ��� ��ȯ
    }
}