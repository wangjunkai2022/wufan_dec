package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.AppMoreBean;
/* loaded from: classes.dex */
public class AppMoreBeanTable {
    @DatabaseField
    private String crc_link_type_val;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private int is_more;
    @DatabaseField
    private int jump_type;
    @DatabaseField
    private int link_type;
    @DatabaseField
    private String link_type_val;
    @DatabaseField(columnName = "recom", foreign = true, foreignAutoRefresh = true)
    private RecomDatabeanTable recomDatabeanTable;
    @DatabaseField
    private String tpl_type;

    public AppMoreBeanTable() {
    }

    public AppMoreBean getAppMoreBean() {
        return new AppMoreBean(this.link_type, this.link_type_val, this.tpl_type, this.crc_link_type_val, this.jump_type, this.is_more);
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public int getId() {
        return this.id;
    }

    public int getIs_more() {
        return this.is_more;
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public int getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public RecomDatabeanTable getRecomDatabeanTable() {
        return this.recomDatabeanTable;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setIs_more(int i2) {
        this.is_more = i2;
    }

    public void setJump_type(int i2) {
        this.jump_type = i2;
    }

    public void setLink_type(int i2) {
        this.link_type = i2;
    }

    public void setLink_type_val(String str) {
        this.link_type_val = str;
    }

    public void setRecomDatabeanTable(RecomDatabeanTable recomDatabeanTable) {
        this.recomDatabeanTable = recomDatabeanTable;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public AppMoreBeanTable(AppMoreBean appMoreBean) {
        this.link_type = appMoreBean.getLink_type();
        this.link_type_val = appMoreBean.getLink_type_val();
        this.tpl_type = appMoreBean.getTpl_type();
        this.crc_link_type_val = appMoreBean.getCrc_link_type_val();
        this.jump_type = appMoreBean.getJump_type();
        this.is_more = appMoreBean.getIs_more();
    }

    public AppMoreBeanTable(int i2, int i4, String str, String str2, String str3, int i5, int i6) {
        this.id = i2;
        this.link_type = i4;
        this.link_type_val = str;
        this.tpl_type = str2;
        this.crc_link_type_val = str3;
        this.jump_type = i5;
        this.is_more = i6;
    }
}
