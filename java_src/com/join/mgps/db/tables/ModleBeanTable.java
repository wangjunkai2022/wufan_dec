package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.ModleBean;
/* loaded from: classes.dex */
public class ModleBeanTable {
    @DatabaseField
    private String ico_remote;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String label;
    @DatabaseField
    private int online;
    @DatabaseField
    private String pic_remote;
    @DatabaseField(columnName = "recom", foreign = true, foreignAutoRefresh = true)
    private RecomDatabeanTable recomDatabeanTable;
    @DatabaseField
    private String sub_title;
    @DatabaseField
    private String title;
    @DatabaseField
    private String title_type;

    public ModleBeanTable() {
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public int getId() {
        return this.id;
    }

    public String getLabel() {
        return this.label;
    }

    public ModleBean getModleBean() {
        return new ModleBean(this.title, this.label, this.pic_remote, this.ico_remote, this.title_type, "", this.sub_title, this.online);
    }

    public int getOnline() {
        return this.online;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public RecomDatabeanTable getRecomDatabeanTable() {
        return this.recomDatabeanTable;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTitle_type() {
        return this.title_type;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setOnline(int i2) {
        this.online = i2;
    }

    public void setPic_remote(String str) {
        this.pic_remote = str;
    }

    public void setRecomDatabeanTable(RecomDatabeanTable recomDatabeanTable) {
        this.recomDatabeanTable = recomDatabeanTable;
    }

    public void setSub_title(String str) {
        this.sub_title = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTitle_type(String str) {
        this.title_type = str;
    }

    public ModleBeanTable(ModleBean modleBean) {
        this.title = modleBean.getTitle();
        this.ico_remote = modleBean.getIco_remote();
        this.title_type = modleBean.getTitle_type();
        this.label = modleBean.getLabel();
        this.pic_remote = modleBean.getPic_remote();
        this.sub_title = modleBean.getSub_title();
        this.online = modleBean.getOnline();
    }

    public ModleBeanTable(int i2, String str, String str2, String str3, String str4, String str5, String str6, int i4) {
        this.id = i2;
        this.title = str;
        this.title_type = str2;
        this.label = str3;
        this.pic_remote = str4;
        this.ico_remote = str5;
        this.sub_title = str6;
        this.sub_title = str6;
        this.online = i4;
    }
}
