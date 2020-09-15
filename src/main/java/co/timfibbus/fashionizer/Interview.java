package co.timfibbus.fashionizer;

public class Interview {

	public static void main(String[] args) {
		
		int[] theArray = {1,2,3};
		topTwo(theArray);
	}
	
	public static void topTwo(int[] array) {
		
		int top = array[0];
		int second = 0;
		
		for (int i = 0 ; i<array.length ; i++) {
			if (array[i] > top) {
				second = top;
				top = array[i];
			}
		}
		
		System.out.println("the top number is " + top);
		System.out.println("second is " + second);
		
	}
	
}
