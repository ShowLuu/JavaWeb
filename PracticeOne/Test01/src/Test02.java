
public class Test02 {
	
	public static void main(String[] args) {
		for(int i=9;i>=1;i--){
   			for(int j=i;j>=1;j--){
   				if((i==2&&j==1)||(i==3&&j==2)){
   					System.out.print(" ");
   				}
   				System.out.print(i+"x"+j+"="+i*j+" ");
   			}
   			System.out.println();
   		}
	}

}
