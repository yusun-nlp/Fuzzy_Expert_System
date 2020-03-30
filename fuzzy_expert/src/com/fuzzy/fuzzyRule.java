package com.fuzzy;

import com.alibaba.fastjson.JSON;
import net.sourceforge.jFuzzyLogic.FIS;
import net.sourceforge.jFuzzyLogic.JFuzzyLogic;
//import net.sourceforge.jFuzzyLogic.FunctionBlock;
//import net.sourceforge.jFuzzyLogic.plot.JFuzzyChart;
//import net.sourceforge.jFuzzyLogic.rule.Variable;

import java.io.*;
import java.nio.file.Paths;

class HouseData{
	public HouseAssessment assessment;
	public String name;
	public String location;
	public String room_type;
	public String floor;
	public Integer area;
	public Integer room_chaoxiang;
	public Integer room_status;
	public Integer room_num;
	public Integer room_floor;
	public Integer room_time;
	public Float room_area;
	public Float room_price;
	public boolean if_subway;
}

class HouseAssessment{
	public double budget;
	public double traffic;
	public double num_people;
	public double invest;
	public double rigid;
	public double improvement;
	public double child;
	public double elder;
}

public class fuzzyRule {
	public static void main(String[] args) throws IOException{
		File rootFolder = new File("../Data_Crawler/input");
		for(final File fileEntry : rootFolder.listFiles()) {
			if(fileEntry.isFile()) {
				//System.out.println(fileEntry.getName());
				HouseData house = JSON.parseObject(readFileContents(fileEntry),HouseData.class);
				house.assessment = assess(house);
				writeFile(fileEntry, JSON.toJSONString(house, true));
			}
		}
	}
	
	private static void writeFile(File fileEntry, String jsonString) throws FileNotFoundException{
		 try {
	            //打开文件
	            FileOutputStream fos=new FileOutputStream(Paths.get("result", fileEntry.getName()).toString());
	            //设置编码集
	            OutputStreamWriter osw=new OutputStreamWriter(fos,"UTF-8");

	            //写出数据
	            PrintWriter out=new PrintWriter(osw, true);
	            out.print(jsonString);
	    		out.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	}
	
	@SuppressWarnings("resource")
	private static String readFileContents(File fileEntry) throws IOException{
		BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(fileEntry.getAbsolutePath()), "UTF8"));
		StringBuilder sb = new StringBuilder();
		String line = in.readLine();
		while(line != null) {
			sb.append(line);
			sb.append(System.lineSeparator());
			line = in.readLine();
		}
		return sb.toString();
	}
	
	static HouseAssessment assess(HouseData houseData) {
		HouseAssessment houseAssessment = new HouseAssessment();
		String fileName = "house.fcl";
		FIS fis = FIS.load(fileName, true);
		
		//set inputs
		fis.setVariable("area", houseData.area);
		fis.setVariable("room_chaoxiang", houseData.room_chaoxiang);
		fis.setVariable("room_status", houseData.room_status);
		fis.setVariable("room_num", houseData.room_num);
		fis.setVariable("room_floor", houseData.room_floor);
		fis.setVariable("room_time", houseData.room_time);
		fis.setVariable("room_area", houseData.room_area);
		fis.setVariable("room_price", houseData.room_price);
		fis.setVariable("if_subway", houseData.if_subway?1:0);
		
		//evaluate
		fis.evaluate();
		
		//save results to houseAssessment
		houseAssessment.budget = fis.getVariable("budget").defuzzify();
		houseAssessment.traffic = fis.getVariable("traffic").defuzzify();
		houseAssessment.num_people = fis.getVariable("num_people").defuzzify();
		houseAssessment.invest = fis.getVariable("invest").defuzzify();
		houseAssessment.rigid = fis.getVariable("rigid").defuzzify();
		houseAssessment.improvement = fis.getVariable("improvement").defuzzify();
		houseAssessment.child = fis.getVariable("child").defuzzify();
		houseAssessment.elder = fis.getVariable("elder").defuzzify();
		
		return houseAssessment;
	}
}
