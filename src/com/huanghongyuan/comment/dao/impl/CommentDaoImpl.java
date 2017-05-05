package com.huanghongyuan.comment.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.huanghongyuan.comment.dao.CommentDao;
import com.huanghongyuan.comment.domain.CrmComment;

public class CommentDaoImpl extends HibernateDaoSupport implements CommentDao{

	@Override
	public void saveComment(CrmComment comment) {
		this.getHibernateTemplate().save(comment);
	}



}
