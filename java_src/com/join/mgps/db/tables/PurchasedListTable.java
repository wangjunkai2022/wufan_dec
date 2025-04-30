package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.AppBean;
/* loaded from: classes.dex */
public class PurchasedListTable {
    @DatabaseField(columnName = "appbeanmain", foreign = true, foreignAutoRefresh = true)
    private AppBeanMainTable appBeanMainTable;
    @DatabaseField
    private String crc_sign_id;
    @DatabaseField
    private int down_status;
    @DatabaseField
    private String game_app_key;
    @DatabaseField
    private String game_id;
    @DatabaseField
    private String game_name;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private int pay_game_amount;

    public PurchasedListTable() {
    }

    public AppBeanMainTable getAppBeanMainTable() {
        return this.appBeanMainTable;
    }

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public int getDown_status() {
        return this.down_status;
    }

    public String getGame_app_key() {
        return this.game_app_key;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getId() {
        return this.id;
    }

    public int getPay_game_amount() {
        return this.pay_game_amount;
    }

    public void setAppBeanMainTable(AppBeanMainTable appBeanMainTable) {
        this.appBeanMainTable = appBeanMainTable;
    }

    public void setCrc_sign_id(String str) {
        this.crc_sign_id = str;
    }

    public void setDown_status(int i2) {
        this.down_status = i2;
    }

    public void setGame_app_key(String str) {
        this.game_app_key = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setPay_game_amount(int i2) {
        this.pay_game_amount = i2;
    }

    public PurchasedListTable(AppBean appBean) {
        if (appBean == null) {
            return;
        }
        this.crc_sign_id = appBean.getCrc_sign_id();
        this.game_name = appBean.getGame_name();
        this.down_status = appBean.getDown_status();
        this.game_id = appBean.getGame_id();
        if (appBean.getPay_tag_info() != null) {
            this.pay_game_amount = appBean.getPay_tag_info().getPay_game_amount();
            this.game_app_key = appBean.getPay_tag_info().getGame_app_key();
        }
    }
}
