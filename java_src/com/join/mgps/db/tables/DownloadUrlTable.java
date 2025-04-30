package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.DownloadUrlBean;
/* loaded from: classes.dex */
public class DownloadUrlTable {
    @DatabaseField(columnName = "appbean", foreign = true, foreignAutoRefresh = true)
    private AppBeanTable appBeanTable;
    @DatabaseField
    private String down_source_name;
    @DatabaseField
    private String down_source_url;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private int is_confirm;
    @DatabaseField
    private int type;
    @DatabaseField(columnName = "warMatchAndLocalTable", foreign = true, foreignAutoRefresh = true)
    private WarMatchAndLocalTable warMatchAndLocalTable;

    public DownloadUrlTable() {
    }

    public AppBeanTable getAppBeanTable() {
        return this.appBeanTable;
    }

    public DownloadUrlBean getDownUrlBean() {
        DownloadUrlBean downloadUrlBean = new DownloadUrlBean();
        downloadUrlBean.setDown_source_name(this.down_source_name);
        downloadUrlBean.setDown_source_url(this.down_source_url);
        downloadUrlBean.setDown_url_type(this.type);
        downloadUrlBean.setIs_confirm(this.is_confirm);
        return downloadUrlBean;
    }

    public String getDown_source_name() {
        return this.down_source_name;
    }

    public String getDown_source_url() {
        return this.down_source_url;
    }

    public int getId() {
        return this.id;
    }

    public int getIs_confirm() {
        return this.is_confirm;
    }

    public int getType() {
        return this.type;
    }

    public WarMatchAndLocalTable getWarMatchAndLocalTable() {
        return this.warMatchAndLocalTable;
    }

    public void setAppBeanTable(AppBeanTable appBeanTable) {
        this.appBeanTable = appBeanTable;
    }

    public void setDown_source_name(String str) {
        this.down_source_name = str;
    }

    public void setDown_source_url(String str) {
        this.down_source_url = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setIs_confirm(int i2) {
        this.is_confirm = i2;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setWarMatchAndLocalTable(WarMatchAndLocalTable warMatchAndLocalTable) {
        this.warMatchAndLocalTable = warMatchAndLocalTable;
    }

    public DownloadUrlTable(String str, String str2, int i2, int i4) {
        this.down_source_name = str;
        this.down_source_url = str2;
        this.type = i2;
        this.is_confirm = i4;
    }

    public DownloadUrlTable(DownloadUrlBean downloadUrlBean) {
        this.down_source_name = downloadUrlBean.getDown_source_name();
        this.down_source_url = downloadUrlBean.getDown_source_url();
        this.type = downloadUrlBean.getDown_url_type();
        this.is_confirm = downloadUrlBean.getIs_confirm();
    }
}
