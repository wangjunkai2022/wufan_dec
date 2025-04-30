package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PAPARecentlyBean {
    private String crc_sign_id;
    private String game_name;
    private String screenshot_pic;
    private String title;

    public PAPARecentlyBean() {
    }

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public String getTitle() {
        return this.title;
    }

    public void setCrc_sign_id(String str) {
        this.crc_sign_id = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setScreenshot_pic(String str) {
        this.screenshot_pic = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public PAPARecentlyBean(String str, String str2, String str3, String str4) {
        this.title = str;
        this.crc_sign_id = str2;
        this.game_name = str3;
        this.screenshot_pic = str4;
    }
}
