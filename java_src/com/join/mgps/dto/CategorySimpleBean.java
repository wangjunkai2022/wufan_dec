package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CategorySimpleBean {
    private String game_num;
    private String ico_remote;
    private String id;
    private String show_index;
    private String title;

    public CategorySimpleBean() {
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

    public CategorySimpleBean(String str, String str2, String str3, String str4, String str5) {
        this.id = str;
        this.title = str2;
        this.ico_remote = str3;
        this.show_index = str4;
        this.game_num = str5;
    }
}
