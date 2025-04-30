package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class JPushRecordTable {
    @DatabaseField
    private String content;
    @DatabaseField
    private String crc_link_type_val;
    @DatabaseField
    private long create_time;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private int jump_type;
    @DatabaseField
    private int link_type;
    @DatabaseField
    private String link_type_val;
    @DatabaseField
    private long push_time;
    @DatabaseField
    private long retention_time;
    @DatabaseField
    private String title;
    @DatabaseField
    private String tpl_type;

    public String getContent() {
        return this.content;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public long getCreate_time() {
        return this.create_time;
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

    public long getPush_time() {
        return this.push_time;
    }

    public long getRetention_time() {
        return this.retention_time;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setCreate_time(long j4) {
        this.create_time = j4;
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

    public void setPush_time(long j4) {
        this.push_time = j4;
    }

    public void setRetention_time(long j4) {
        this.retention_time = j4;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }
}
