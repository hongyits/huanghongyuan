package com.huanghongyuan.comment.dao;

import com.huanghongyuan.comment.domain.CrmComment;

public interface CommentDao {
	/**
	 * 保存评论
	 */
	public void saveComment(CrmComment comment);
}
