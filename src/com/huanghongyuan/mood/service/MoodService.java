package com.huanghongyuan.mood.service;

import java.util.List;

import com.huanghongyuan.mood.domain.CrmMood;

public interface MoodService {
	/**
	 * 添加心情
	 * @param mood
	 */
	public void addMood(CrmMood mood);
	/**
	 * 找到所有心情
	 * @return
	 */
	public List<CrmMood> findAll();
	
	/**
	 * 删除心情
	 */
	public void delMood(CrmMood mood);
}
