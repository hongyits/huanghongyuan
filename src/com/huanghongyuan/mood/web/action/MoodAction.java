package com.huanghongyuan.mood.web.action;

import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;

import org.apache.struts2.ServletActionContext;

import com.google.common.collect.Sets.SetView;
import com.huanghongyuan.mood.dao.MoodDao;
import com.huanghongyuan.mood.domain.CrmMood;
import com.huanghongyuan.mood.service.MoodService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MoodAction extends ActionSupport implements ModelDriven<CrmMood> {
	private MoodService moodService;

	public void setMoodService(MoodService moodService) {
		this.moodService = moodService;
	}

	private CrmMood mood = new CrmMood();

	public CrmMood getModel() {
		return mood;
	}

	public String findAll() {
		List<CrmMood> allMood = moodService.findAll();
		Collections.reverse(allMood);
		if(allMood.size()>0)
		ActionContext.getContext().put("allMood", allMood);
		return "findAll";
	}

	public String saveMood() {
		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String formatDate = dateFormat.format(now);
		mood.setMoodSendDate(formatDate);
		moodService.addMood(mood);
		return "saveMood";
	}
	
	public String login(){
		String loginPwd = ServletActionContext.getRequest().getParameter("loginPwd");
		 Map<String, Object> session = ActionContext.getContext().getSession();
		if(loginPwd.equals("hongyits")){
			session.put("isLogin", "yes");
		}
		return "login";
	}
	public String zhuxiao(){
		//清除session，退出管理员模式
		 Map<String, Object> session = ActionContext.getContext().getSession();
		 session.clear();
		return "zhuxiao";
	}
	public String delMood(){
		moodService.delMood(mood);
		return "delMood";
	}
}
