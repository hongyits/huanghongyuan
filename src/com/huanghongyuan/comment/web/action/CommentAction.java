package com.huanghongyuan.comment.web.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.huanghongyuan.comment.dao.CommentDao;
import com.huanghongyuan.comment.domain.CrmComment;
import com.huanghongyuan.mood.domain.CrmMood;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CommentAction extends ActionSupport implements ModelDriven<CrmComment> {

	private CrmComment comment = new CrmComment();
	public CrmComment getModel() {
		return comment;
	}
	private CommentDao commentDao;
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}
	public String saveComment(){
		String remoteHost = ServletActionContext.getRequest().getRemoteHost();
		comment.setCommentName(remoteHost);
		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy/MM/dd HH:mm:ss");
		String formatDate = dateFormat.format(now);
		comment.setCommentSendDate(formatDate);
		commentDao.saveComment(comment);
		return "saveComment";
	}

}
