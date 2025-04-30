package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameDetialBookTag {
    private String color;
    private int id;
    private String title;

    public GameDetialBookTag() {
    }

    public String getColor() {
        return this.color;
    }

    public int getId() {
        return this.id;
    }

    public String getTitle() {
        return this.title;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public GameDetialBookTag(int i2, String str, String str2) {
        this.id = i2;
        this.title = str;
        this.color = str2;
    }

    public GameDetialBookTag(String str, String str2) {
        this.title = str;
        this.color = str2;
    }
}
