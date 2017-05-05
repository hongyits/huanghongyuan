package com.huanghongyuan.comment.service.impl;

import com.huanghongyuan.comment.dao.CommentDao;
import com.huanghongyuan.comment.domain.CrmComment;
import com.huanghongyuan.comment.service.CommentService;

public class CommentServiceImpl implements CommentService {

	private CommentDao commentDao;
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}
	public void saveComment(CrmComment comment) {
		commentDao.saveComment(comment);
	}

}
