package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ClassifyGameTypeBean implements Serializable {
    private String describe;
    private int game_count;
    private String ico_remote;
    private int id;
    private int show_index;
    private String title;

    public String getDescribe() {
        return this.describe;
    }

    public int getGame_count() {
        return this.game_count;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public int getId() {
        return this.id;
    }

    public int getShow_index() {
        return this.show_index;
    }

    public String getTitle() {
        return this.title;
    }

    public void setDescribe(String str) {
        this.describe = str;
    }

    public void setGame_count(int i2) {
        this.game_count = i2;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setShow_index(int i2) {
        this.show_index = i2;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
