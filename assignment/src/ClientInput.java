import java.util.Scanner;


public class ClientInput {
	Scanner readOrder=new Scanner(System.in);
	String read;
	int inputWordsCt;
	String input1[];
	
	public String[] order()
	{
		System.out.println("...Enter your Order separated by a space...");
		read=readOrder.nextLine();		
		System.out.println();
		input1=new String[inputWordsCt];
		input1=read.split(" ");
		return input1;
	}

	public int wordCount()
	{
		int count=0;
		int length=read.length();
		if(length!=0)
			count=1;
		for(int i=0;i<length;i++)
		{
			if(read.charAt(i)==' ')	
				count++;
		}
		return count;
	}

}
