
public class Calc {
	private int num1;
	private int num2;
	private String op;
	
	public Calc(int num1, int num2, String op) {
		this.num1 = num1;
		this.num2 = num2;
		this.op = op;
	}
	
    // 계산 결과를 반환하는 메서드
    public int getResult() {
        int result = 0; // 결과 변수 초기화

        // 연산자에 따라 계산 수행
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
                    // 0으로 나눌 수 없는 경우에 대한 처리
                    throw new IllegalArgumentException("Cannot divide by zero");
                }
                break;
            default:
                // 지원하지 않는 연산자에 대한 처리
                throw new IllegalArgumentException("Unsupported operator");
        }

        return result; // 결과 반환
    }
}