package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import com.join.mgps.dto.AppBeanMain;
@DatabaseTable(tableName = "appbeanmaintable")
/* loaded from: classes.dex */
public class AppBeanMainTable {
    @DatabaseField
    private int butnShowTypr;
    @DatabaseField
    private String crc_link_type_val;
    @DatabaseField(columnName = "appbean", foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    private AppBeanTable game_info;
    @DatabaseField(generatedId = true)
    private int id;
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

    public AppBeanMainTable() {
    }

    public AppBeanMain getAppbeanMain() {
        return new AppBeanMain(this.link_type, this.link_type_val, this.crc_link_type_val, this.jump_type, this.tpl_type, this.butnShowTypr);
    }

    public int getButnShowTypr() {
        return this.butnShowTypr;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public AppBeanTable getGame_info() {
        return this.game_info;
    }

    public int getId() {
        return this.id;
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

    public void setButnShowTypr(int i2) {
        this.butnShowTypr = i2;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setGame_info(AppBeanTable appBeanTable) {
        this.game_info = appBeanTable;
    }

    public void setId(int i2) {
        this.id = i2;
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

    public AppBeanMainTable(AppBeanMain appBeanMain) {
        this.link_type = appBeanMain.getLink_type();
        this.link_type_val = appBeanMain.getLink_type_val();
        this.crc_link_type_val = appBeanMain.getCrc_link_type_val();
        this.jump_type = appBeanMain.getJump_type();
        this.tpl_type = appBeanMain.getTpl_type();
        this.butnShowTypr = appBeanMain.getButnShowTypr();
    }
}
