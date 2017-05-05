package com.huanghongyuan.mood.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import com.huanghongyuan.comment.domain.CrmComment;

public class CrmMood {
	private String moodId;		//心情ID
	private String moodContent;//心情发表内容
	private String moodSendDate;//心情发表时间
	//一对多  一个心情对应多个回复
	private Set<CrmComment> commentsSet = new HashSet<CrmComment>();
	public String getMoodId() {
		return moodId;
	}
	public void setMoodId(String moodId) {
		this.moodId = moodId;
	}
	public String getMoodContent() {
		return moodContent;
	}
	public void setMoodContent(String moodContent) {
		this.moodContent = moodContent;
	}
	public String getMoodSendDate() {
		return moodSendDate;
	}
	public void setMoodSendDate(String moodSendDate) {
		this.moodSendDate = moodSendDate;
	}
	public Set<CrmComment> getCommentsSet() {
		return commentsSet;
	}
	public void setCommentsSet(Set<CrmComment> commentsSet) {
		this.commentsSet = commentsSet;
	}

	
	

}
