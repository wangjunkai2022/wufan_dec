package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.PAPARecentlyBean;
/* loaded from: classes.dex */
public class PAPARecentlyTable {
    @DatabaseField
    private String crc_sign_id;
    @DatabaseField
    private String game_name;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String screenshot_pic;
    @DatabaseField
    private String title;

    public PAPARecentlyTable() {
    }

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public int getId() {
        return this.id;
    }

    public PAPARecentlyBean getPAPARecentlyBean() {
        PAPARecentlyBean pAPARecentlyBean = new PAPARecentlyBean();
        pAPARecentlyBean.setCrc_sign_id(this.crc_sign_id);
        pAPARecentlyBean.setTitle(this.title);
        pAPARecentlyBean.setGame_name(this.game_name);
        pAPARecentlyBean.setScreenshot_pic(this.screenshot_pic);
        return pAPARecentlyBean;
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

    public void setId(int i2) {
        this.id = i2;
    }

    public void setScreenshot_pic(String str) {
        this.screenshot_pic = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public PAPARecentlyTable(String str, String str2, String str3, String str4) {
        this.title = str;
        this.crc_sign_id = str2;
        this.game_name = str3;
        this.screenshot_pic = str4;
    }

    public PAPARecentlyTable(PAPARecentlyBean pAPARecentlyBean) {
        this.title = pAPARecentlyBean.getTitle();
        this.crc_sign_id = pAPARecentlyBean.getCrc_sign_id();
        this.game_name = pAPARecentlyBean.getGame_name();
        this.screenshot_pic = pAPARecentlyBean.getScreenshot_pic();
    }
}
