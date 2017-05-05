package com.huanghongyuan.comment.service;

import com.huanghongyuan.comment.domain.CrmComment;

public interface CommentService {
	/**
	 * 保存评论
	 * @param comment
	 */
	public void saveComment(CrmComment comment);
	
}
