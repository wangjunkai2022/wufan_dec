package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class FeedbackQuestionDetialBean {
    private String info;
    private int showtype;
    private String url;

    public FeedbackQuestionDetialBean() {
    }

    public String getInfo() {
        return this.info;
    }

    public int getShowtype() {
        return this.showtype;
    }

    public String getUrl() {
        return this.url;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setShowtype(int i2) {
        this.showtype = i2;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public FeedbackQuestionDetialBean(String str, int i2, String str2) {
        this.info = str;
        this.showtype = i2;
        this.url = str2;
    }
}
