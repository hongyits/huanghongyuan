package com.huanghongyuan.comment.domain;

import java.util.Date;

import com.huanghongyuan.mood.domain.CrmMood;

public class CrmComment {
	private String commentId;
	private String commentContent;
	private String commentSendDate;
	private String commentName;
	
	//多对一 多个回复对应一个心情
	private CrmMood mood;

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentSendDate() {
		return commentSendDate;
	}

	public void setCommentSendDate(String commentSendDate) {
		this.commentSendDate = commentSendDate;
	}

	public String getCommentName() {
		return commentName;
	}

	public void setCommentName(String commentName) {
		this.commentName = commentName;
	}

	public CrmMood getMood() {
		return mood;
	}

	public void setMood(CrmMood mood) {
		this.mood = mood;
	}

	

	
	
	
	

}
