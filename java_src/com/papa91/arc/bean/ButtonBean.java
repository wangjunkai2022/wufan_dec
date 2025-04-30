package com.papa91.arc.bean;
/* loaded from: classes4.dex */
public class ButtonBean {
    private String buttonHint;
    private Integer eventType;
    private String jumpLink;
    private PopwindowBean popUpWindow;

    public String getButtonHint() {
        return this.buttonHint;
    }

    public Integer getEventType() {
        return this.eventType;
    }

    public String getJumpLink() {
        return this.jumpLink;
    }

    public PopwindowBean getPopUpWindow() {
        return this.popUpWindow;
    }

    public void setButtonHint(String str) {
        this.buttonHint = str;
    }

    public void setEventType(Integer num) {
        this.eventType = num;
    }

    public void setJumpLink(String str) {
        this.jumpLink = str;
    }

    public void setPopUpWindow(PopwindowBean popwindowBean) {
        this.popUpWindow = popwindowBean;
    }
}
