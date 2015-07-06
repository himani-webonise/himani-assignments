import java.io.FileReader;
import java.io.FileWriter;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;

public class Menu extends ClientInput{
	
	public ArrayList value_in_Row;
	public ArrayList allMenuRows;
	String inputDataArray[][];
	public static String inputOrder[];
	Restaurant restaurant[];
	public void read()
	{
		try{
		FileReader file= new FileReader("sample_data.csv");
		BufferedReader restaurantMenu=new BufferedReader(file);
		FileWriter e= new FileWriter("dataaa.csv");
		String removedCommaRowMenu[];
		value_in_Row=new ArrayList();
		allMenuRows=new ArrayList();
		while((read=restaurantMenu.readLine())!=null)
		{
				removedCommaRowMenu=read.split(",", 3);				
				value_in_Row.add(removedCommaRowMenu[0]);
				value_in_Row.add(removedCommaRowMenu[1]); 
				value_in_Row.add(removedCommaRowMenu[2]);				
				allMenuRows.add(removedCommaRowMenu[0]+removedCommaRowMenu[1]+removedCommaRowMenu[2]);					
		}
		}
		catch(IOException e)
		{
			
		}

		int noOfRowsInMenu=allMenuRows.size();
		int ar2=value_in_Row.size()/noOfRowsInMenu;
		inputDataArray=new String[noOfRowsInMenu][ar2];

			noOfRowsInMenu=value_in_Row.size();
			for(int i=0,j=0,k=0;i<noOfRowsInMenu;i++)
			{
				
				if(i!=0)
				{
				if(i%3==0)
				{
					j++;
					k=0;
				}
				}
				
				inputDataArray[j][k]=value_in_Row.get(i).toString().trim();
				//System.out.println(inputDataArray[j][k]);
				k++;	
				
				
			}
			ClientInput input=new ClientInput();
			inputOrder=input.order(); // Contains filename fooditems...
			inputWordsCt=input.wordCount();
			
			noOfRowsInMenu=allMenuRows.size();
			int j=0,k=0;
			boolean flag=false;
		
			allMenuRows.clear();
			int countOfMatchedMenuRow=0;
			for(int i=0;i<inputWordsCt;i++)
			{
				for(j=0;j<noOfRowsInMenu;j++)
				{
					//System.out.println(inputDataArray[j][2]+" "+inputOrder[i]);					
					flag=inputDataArray[j][2].contains(inputOrder[i]);
					if(flag)
					{
						//System.out.println(inputDataArray[j][2]);
						allMenuRows.add(Integer.parseInt(inputDataArray[j][0]));
						allMenuRows.add(Double.parseDouble(inputDataArray[j][1]));
						allMenuRows.add(inputDataArray[j][2]);
						countOfMatchedMenuRow++;
					}
				}									
			}
			restaurant= new Restaurant[countOfMatchedMenuRow];			
			value_in_Row.clear();
			
			for(int i=0,no=0;no<countOfMatchedMenuRow;i++,no++)
				restaurant[no]=new Restaurant(Integer.parseInt(allMenuRows.get(i++).toString()),Double.parseDouble(allMenuRows.get(i++).toString()),allMenuRows.get(i).toString());
		
			
			allMenuRows.clear();								
			
			int noOfItemsInEachRest[]=new int[6];
			double totalCostOfEachRest[]=new double[6];
			for(int i=0;i<6;i++)
			{
				totalCostOfEachRest[i]=0.0;
				noOfItemsInEachRest[i]=0;
			}
	
			
			for(int i=0;i<countOfMatchedMenuRow;i++)
			{
				switch (restaurant[i].restId)
				{
				case 1:
					noOfItemsInEachRest[0]++;
					totalCostOfEachRest[0]=totalCostOfEachRest[0]+restaurant[i].price;
					break;
					
				case 2:
					noOfItemsInEachRest[1]++;
					totalCostOfEachRest[1]=totalCostOfEachRest[1]+restaurant[i].price;
					break;
				
				case 3:
					noOfItemsInEachRest[2]++;
					totalCostOfEachRest[2]=totalCostOfEachRest[2]+restaurant[i].price;
					break;
					
				case 4:
					noOfItemsInEachRest[3]++;
					totalCostOfEachRest[3]=totalCostOfEachRest[3]+restaurant[i].price;
					break;
					
				case 5:
					noOfItemsInEachRest[4]++;
					totalCostOfEachRest[4]=totalCostOfEachRest[4]+restaurant[i].price;
					break;
				
				case 6:
					noOfItemsInEachRest[5]++;
					totalCostOfEachRest[5]=totalCostOfEachRest[5]+restaurant[i].price;
					break;
				}
			}
			
	int restId=0;
	double minPrice=10000.0;
	for(int i=0;i<6;i++)
	{
		if(noOfItemsInEachRest[i]==inputWordsCt)
		{
			if(minPrice>totalCostOfEachRest[i])
			{
				minPrice=totalCostOfEachRest[i];
				restId=i+1;
				
			}
		}
	}			
	if(restId==0)
		System.out.println("Sorry!! Your order is not available in any restaurant");
	else 
		System.out.println("Your order is present in Restaurant= " +restId +"\nTotal Amount to Pay is="+minPrice);
	}
	public static class Restaurant
	{
		int restId;
		double price;
		String item;
		
		Restaurant(){}
		Restaurant(int id,double price,String item)
		{
			restId=id;
			this.price=price;
			this.item=item;
			
		}
		
	}

}
