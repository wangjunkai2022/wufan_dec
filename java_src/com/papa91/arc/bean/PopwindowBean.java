package com.papa91.arc.bean;
/* loaded from: classes4.dex */
public class PopwindowBean {
    private ButtonBean buttonCenter;
    private ButtonBean buttonClose;
    private ButtonBean buttonLeft;
    private ButtonBean buttonRight;
    private Integer endDuration;
    private boolean noAge;
    private boolean popup;
    private String subTitle;
    private String subTitle2;
    private String subTitle3;
    private String title;
    private int status = -1;
    private int type = 0;

    public ButtonBean getButtonCenter() {
        return this.buttonCenter;
    }

    public ButtonBean getButtonClose() {
        return this.buttonClose;
    }

    public ButtonBean getButtonLeft() {
        return this.buttonLeft;
    }

    public ButtonBean getButtonRight() {
        return this.buttonRight;
    }

    public Integer getEndDuration() {
        return this.endDuration;
    }

    public Boolean getPopup() {
        return Boolean.valueOf(this.popup);
    }

    public int getStatus() {
        return this.status;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public String getSubTitle2() {
        return this.subTitle2;
    }

    public String getSubTitle3() {
        return this.subTitle3;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public boolean isNoAge() {
        return this.noAge;
    }

    public boolean isPopup() {
        return this.popup;
    }

    public void setButtonCenter(ButtonBean buttonBean) {
        this.buttonCenter = buttonBean;
    }

    public void setButtonClose(ButtonBean buttonBean) {
        this.buttonClose = buttonBean;
    }

    public void setButtonLeft(ButtonBean buttonBean) {
        this.buttonLeft = buttonBean;
    }

    public void setButtonRight(ButtonBean buttonBean) {
        this.buttonRight = buttonBean;
    }

    public void setEndDuration(Integer num) {
        this.endDuration = num;
    }

    public void setNoAge(boolean z3) {
        this.noAge = z3;
    }

    public void setPopup(Boolean bool) {
        this.popup = bool.booleanValue();
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setSubTitle(String str) {
        this.subTitle = str;
    }

    public void setSubTitle2(String str) {
        this.subTitle2 = str;
    }

    public void setSubTitle3(String str) {
        this.subTitle3 = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setPopup(boolean z3) {
        this.popup = z3;
    }
}
