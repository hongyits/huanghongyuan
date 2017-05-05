package com.huanghongyuan.mood.dao;

import java.util.List;

import com.huanghongyuan.mood.domain.CrmMood;

public interface MoodDao {
	public void saveMood(CrmMood mood);
	public List<CrmMood> findAll();
	public void delMood(CrmMood mood);
}
