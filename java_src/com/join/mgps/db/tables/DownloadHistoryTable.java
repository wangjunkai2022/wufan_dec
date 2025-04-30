package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class DownloadHistoryTable {
    @DatabaseField
    private String crc_link_type_val;
    @DatabaseField
    private long create_time;
    @DatabaseField(generatedId = true)
    private int id;

    public DownloadHistoryTable() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public long getCreate_time() {
        return this.create_time;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setCreate_time(long j4) {
        this.create_time = j4;
    }

    public DownloadHistoryTable(long j4, String str) {
        this.create_time = j4;
        this.crc_link_type_val = str;
    }
}
