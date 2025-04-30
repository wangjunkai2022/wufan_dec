package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ArenaPopupInfoBean {
    private int daily_count;
    private int id;
    private int is_popup;
    private BannerBean jump_info;
    private String popup_img;
    private long show_time;

    public int getDaily_count() {
        return this.daily_count;
    }

    public int getId() {
        return this.id;
    }

    public int getIs_popup() {
        return this.is_popup;
    }

    public BannerBean getJump_info() {
        return this.jump_info;
    }

    public String getPopup_img() {
        return this.popup_img;
    }

    public long getShow_time() {
        return this.show_time;
    }

    public void setDaily_count(int i2) {
        this.daily_count = i2;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setIs_popup(int i2) {
        this.is_popup = i2;
    }

    public void setJump_info(BannerBean bannerBean) {
        this.jump_info = bannerBean;
    }

    public void setPopup_img(String str) {
        this.popup_img = str;
    }

    public void setShow_time(long j4) {
        this.show_time = j4;
    }
}
