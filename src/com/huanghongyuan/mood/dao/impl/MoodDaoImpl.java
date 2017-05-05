package com.huanghongyuan.mood.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.huanghongyuan.mood.dao.MoodDao;
import com.huanghongyuan.mood.domain.CrmMood;

public class MoodDaoImpl extends HibernateDaoSupport implements MoodDao {

	@Override
	public void saveMood(CrmMood mood) {
		this.getHibernateTemplate().save(mood);
	}

	@Override
	public List<CrmMood> findAll() {
		return getHibernateTemplate().find("from CrmMood");
	}

	@Override
	public void delMood(CrmMood mood) {
		this.getHibernateTemplate().delete(mood);
		
	}

	

}
