package com.huanghongyuan.mood.service.impl;

import java.util.List;

import com.huanghongyuan.mood.dao.MoodDao;
import com.huanghongyuan.mood.domain.CrmMood;
import com.huanghongyuan.mood.service.MoodService;

public class MoodServiceImpl implements MoodService{
	private MoodDao moodDao;
	public void setMoodDao(MoodDao moodDao) {
		this.moodDao = moodDao;
	}
	@Override
	public void addMood(CrmMood mood) {
		moodDao.saveMood(mood);
	}
	@Override
	public List<CrmMood> findAll() {
		return moodDao.findAll();
	}
	@Override
	public void delMood(CrmMood mood) {
		moodDao.delMood(mood);
	}
	
	
	

}
