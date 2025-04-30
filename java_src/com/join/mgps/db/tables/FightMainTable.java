package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class FightMainTable {
    @DatabaseField
    private String crc_link_type_val;
    @DatabaseField
    private int down_status;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    @DatabaseField
    private String ico_remote;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String is_more;
    @DatabaseField
    private int jump_type;
    @DatabaseField
    private String label;
    @DatabaseField
    private int link_type;
    @DatabaseField
    private String link_type_val;
    @DatabaseField
    private String margin;
    @DatabaseField
    private String model_type;
    @DatabaseField
    private int pay_game_amount;
    @DatabaseField
    private String pic_remote;
    @DatabaseField
    private String sub_title;
    @DatabaseField
    private String title;
    @DatabaseField
    private String title_type;
    @DatabaseField
    private String tpl_type;

    public FightMainTable() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public int getDown_status() {
        return this.down_status;
    }

    public String getDownload_original_switch() {
        return this.download_original_switch;
    }

    public String getDownload_outside_url() {
        return this.download_outside_url;
    }

    public String getDownload_source_switch_v1() {
        return this.download_source_switch_v1;
    }

    public String getDownload_source_switch_v2() {
        return this.download_source_switch_v2;
    }

    public String getDownload_source_url() {
        return this.download_source_url;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public int getId() {
        return this.id;
    }

    public String getIs_more() {
        return this.is_more;
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public String getLabel() {
        return this.label;
    }

    public int getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public String getMargin() {
        return this.margin;
    }

    public String getModel_type() {
        return this.model_type;
    }

    public int getPay_game_amount() {
        return this.pay_game_amount;
    }

    public String getPic_remote() {
        return this.pic_remote;
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

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setDown_status(int i2) {
        this.down_status = i2;
    }

    public void setDownload_original_switch(String str) {
        this.download_original_switch = str;
    }

    public void setDownload_outside_url(String str) {
        this.download_outside_url = str;
    }

    public void setDownload_source_switch_v1(String str) {
        this.download_source_switch_v1 = str;
    }

    public void setDownload_source_switch_v2(String str) {
        this.download_source_switch_v2 = str;
    }

    public void setDownload_source_url(String str) {
        this.download_source_url = str;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setIs_more(String str) {
        this.is_more = str;
    }

    public void setJump_type(int i2) {
        this.jump_type = i2;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setLink_type(int i2) {
        this.link_type = i2;
    }

    public void setLink_type_val(String str) {
        this.link_type_val = str;
    }

    public void setMargin(String str) {
        this.margin = str;
    }

    public void setModel_type(String str) {
        this.model_type = str;
    }

    public void setPay_game_amount(int i2) {
        this.pay_game_amount = i2;
    }

    public void setPic_remote(String str) {
        this.pic_remote = str;
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

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public FightMainTable(FightMainTable fightMainTable) {
        if (fightMainTable == null) {
            return;
        }
        this.id = fightMainTable.getId();
        this.title = fightMainTable.getTitle();
        this.label = fightMainTable.getLabel();
        this.pic_remote = fightMainTable.getPic_remote();
        this.ico_remote = fightMainTable.getIco_remote();
        this.title_type = fightMainTable.getTitle_type();
        this.margin = fightMainTable.getMargin();
        this.sub_title = fightMainTable.getSub_title();
        this.model_type = fightMainTable.getModel_type();
        this.link_type = fightMainTable.getLink_type();
        this.crc_link_type_val = fightMainTable.getCrc_link_type_val();
        this.jump_type = fightMainTable.getJump_type();
        this.is_more = fightMainTable.getIs_more();
        this.tpl_type = fightMainTable.getTpl_type();
        this.pay_game_amount = fightMainTable.getPay_game_amount();
        this.download_source_url = fightMainTable.getDownload_source_url();
        this.download_outside_url = fightMainTable.getDownload_outside_url();
        this.download_original_switch = fightMainTable.getDownload_original_switch();
    }
}
