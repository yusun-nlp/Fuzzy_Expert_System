package com.fuzzy;

import java.io.BufferedReader;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

/**
 * Servlet implementation class Evaluate
 */
@WebServlet("/Evaluate")
public class Evaluate extends HttpServlet {
	public static double ranking(String[] need, HouseData house){
		
		//invest, rigid, improvement, num_people, elder, child, car, budget
		double para[] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}; 
		if(need[0].equals("For Invest"))
			para[0] = 10.0;
		else if(need[0].equals("For Rigid Demand"))
			para[1] = 10.0;
		else if(need[0].equals("For improvement"))
			para[2] = 10.0;
		
		if(need[1].equals("1"))
			para[3] = 1.0;
		else if(need[1].equals("2-3"))
			para[3] = 4.0;
		else if(need[1].equals("4-6"))
			para[3] = 7.0;
		else if(need[1].equals("≥7"))
			para[3] = 10.0;
		
		if(need[2].equals("Yes"))
			para[4] = 10.0;
		
		if(need[3].equals("Yes"))
			para[5] = 10.0;
		
		if(need[4].equals("No"))
			para[6] = 10.0;
		
		if(need[5].equals("Tight"))
			para[7] = -10.0;
		else if(need[5].equals("OK"))
			para[7] = -6.0;
		else if(need[5].equals("Ample"))
			para[7] = -2.0;
		
		double rank = para[0]*house.assessment.invest + para[1]*house.assessment.rigid + para[2]*house.assessment.improvement
				+ para[3]*house.assessment.num_people + para[4]*house.assessment.elder + para[5]*house.assessment.child
				+ para[6]*house.assessment.traffic + para[7]*house.assessment.budget;
		return rank;
	}
	
	private static String readFileContents(File fileEntry) throws IOException{
		BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(fileEntry.getAbsolutePath()), "utf-8"));
		StringBuilder sb = new StringBuilder();
		String line = in.readLine();
		while(line != null) {
			sb.append(line);
			sb.append(System.lineSeparator());
			line = in.readLine();
		}
		return sb.toString();
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	

    public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		List<Map> list =new ArrayList<Map>();
		String purpose = request.getParameter("purpose");
		String num_people = request.getParameter("people-number");
		String elder = request.getParameter("any-elder");
		String child = request.getParameter("any-child");
		String car = request.getParameter("any-car");
		String location = request.getParameter("location");
		String budget = request.getParameter("budget");
		if(purpose == null)
			list = (List<Map>)request.getSession().getAttribute("list");
		else {
		String need[];
		need = new String[6];
		if(location.equals("Jing An"))
			location = "jingan";
		else if(location.equals("Huang Pu"))
			location = "huangpu";
		else if(location.equals("Xu Hui"))
			location = "xuhui";
		else if(location.equals("Chang Ning"))
			location = "changning";
		else if(location.equals("Hong Kou"))
			location = "hongkou";
		else if(location.equals("Pu Tuo"))
			location = "putuo";
		else if(location.equals("Yang Pu"))
			location = "yangpu";
		else if(location.equals("Pu Dong"))
			location = "pudong";
		else if(location.equals("Min Hang"))
			location = "minhang";
		else if(location.equals("Bao Shan"))
			location = "baoshan";
		else if(location.equals("Jia Ding"))
			location = "jiading";
		else if(location.equals("Song Jiang"))
			location = "songjiang";
		else if(location.equals("Qing Pu"))
			location = "qingpu";
		else if(location.equals("Feng Xian"))
			location = "fengxian";
		else if(location.equals("Jin Shan"))
			location = "jinshan";
		need[0] = purpose;
		need[1] = num_people;
		need[2] = elder;
		need[3] = child;
		need[4] = car;
		need[5] = budget;
		
		
		//System.out.println(budget);
		List<Map> house_list =new ArrayList<Map>();
		File rootFolder = new File("F:大三上/人工智能/专家系统PJ/fuzzy_expert/result");
		File [] files = rootFolder.listFiles();  
		for(int i=0;i<files.length;i++) {
			if(files[i].isFile()) {
				if(location.equals("Location(Optional)")==false){
					if(files[i].getName().contains(location)==false) {
						continue;
					}
				}
				HouseData house = JSON.parseObject(readFileContents(files[i]),HouseData.class);
				
				double rank = ranking(need, house);
				String status;
				if(house.room_status==2)
					status = "Refined Decoration";
				else if(house.room_status==1)
					status = "Simple Decoration";
				else
					status = "Rough house";
				String[] areas;
				areas = files[i].getName().split("_");
				
				Map map = new HashMap();
				map.put("rank", rank);
				map.put("name", house.name);
				map.put("location", house.location);
				map.put("room_area", house.room_area);
				map.put("layout", house.room_type);
				map.put("price", house.room_price);
				map.put("area", areas[0]);	//提供了文件名字和所在区
				map.put("year", house.room_time);
				map.put("status", status);
				house_list.add(map);
			}
		}
		
		Collections.sort(house_list, new Comparator<Map>() {
			 
            public int compare(Map o1, Map o2) {
                int map1value = (int)(((Double) o1.get("rank"))*1000);
                int map2value = (int)(((Double) o2.get("rank"))*1000);
 
                return map2value - map1value;
            }
        });
		
		list = house_list.subList(0, 99);
		}
		
		int page=0;
        //得到传过来的当前页
        String str_page= request.getParameter("page");
        Paging paging=new Paging();
        paging.setList(list); //从数据库得到数据存入的list集合
        paging.setCount(); //数据总数
        paging.setPagesize(20); //一个页面的数据多少条
        paging.setPagenumber(); //总的页面数
        paging.setEndpage(); //最后一页
        paging.setIndexpage(1); //第一页
        if (str_page!=null) {
            //将页转换整型判断其大小
            int pag=Integer.parseInt(str_page);
            //当大于零，将传过来的pag值赋给当前页page
            if (pag>=0) {
                page=pag;
                //如果小于最大值时则，将其传过来的值减1在赋值给当前页，让其一直在最后一页
                if (pag>(paging.getPagenumber()-1)) {
                    page=pag-1;
                }
            }
        }
        paging.setPage(page);
        List<Map> list_page =new ArrayList<Map>();
        //将当前页的值传给新的list_page集合中，list集合是全部数据综合，用i调用其中的几条数据给list_page
        for (int i = page*20; i <(page+1)*20-1&&i<99; i++) {
            list_page.add(list.get(i));
        }
//		List<Map> list =new ArrayList<Map>();
//		list = house_list.subList(page.start, page.start+page.count);
		
		request.setAttribute("result", list_page);
		request.getSession().setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.getRequestDispatcher("/Property.jsp").forward(request, response);
		
	}

}
