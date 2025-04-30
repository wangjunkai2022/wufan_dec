package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class CategoryRecordTable {
    @DatabaseField
    private String game_num;
    @DatabaseField
    private String ico_remote;
    @DatabaseField
    private String id;
    @DatabaseField
    private String show_index;
    @DatabaseField
    private String title;

    public CategoryRecordTable() {
    }

    public String getGame_num() {
        return this.game_num;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getId() {
        return this.id;
    }

    public String getShow_index() {
        return this.show_index;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGame_num(String str) {
        this.game_num = str;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setShow_index(String str) {
        this.show_index = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public CategoryRecordTable(String str, String str2, String str3, String str4, String str5) {
        this.id = str;
        this.title = str2;
        this.ico_remote = str3;
        this.show_index = str4;
        this.game_num = str5;
    }
}
