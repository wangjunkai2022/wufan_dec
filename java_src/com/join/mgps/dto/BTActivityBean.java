package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class BTActivityBean implements Serializable {
    private Integer beginTime;
    private String content;
    private Integer endTime;
    private String jump_url;
    private int noticeType;
    private Integer periodFlag;
    private String sub_head;
    private String title;
    private String type;

    public Integer getBeginTime() {
        return this.beginTime;
    }

    public String getContent() {
        return this.content;
    }

    public Integer getEndTime() {
        return this.endTime;
    }

    public String getJump_url() {
        return this.jump_url;
    }

    public int getNoticeType() {
        return this.noticeType;
    }

    public Integer getPeriodFlag() {
        return this.periodFlag;
    }

    public String getSub_head() {
        return this.sub_head;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public void setBeginTime(Integer num) {
        this.beginTime = num;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setEndTime(Integer num) {
        this.endTime = num;
    }

    public void setJump_url(String str) {
        this.jump_url = str;
    }

    public void setNoticeType(int i2) {
        this.noticeType = i2;
    }

    public void setPeriodFlag(Integer num) {
        this.periodFlag = num;
    }

    public void setSub_head(String str) {
        this.sub_head = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(String str) {
        this.type = str;
    }
}
