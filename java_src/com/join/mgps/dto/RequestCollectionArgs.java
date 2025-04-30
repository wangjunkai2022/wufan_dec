package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestCollectionArgs extends BaseDto {
    private String belong_to_tag;
    private String collection_id;
    private String game_type;
    private int pc;
    private int pn;

    public RequestCollectionArgs() {
    }

    public String getBelong_to_tag() {
        return this.belong_to_tag;
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public String getGame_type() {
        return this.game_type;
    }

    public int getPc() {
        return this.pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setBelong_to_tag(String str) {
        this.belong_to_tag = str;
    }

    public void setCollection_id(String str) {
        this.collection_id = str;
    }

    public void setGame_type(String str) {
        this.game_type = str;
    }

    public void setPc(int i2) {
        this.pc = i2;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public RequestCollectionArgs(String str, int i2, int i4, String str2, String str3) {
        this.collection_id = str;
        this.pn = i2;
        this.pc = i4;
        this.game_type = str2;
        this.belong_to_tag = str3;
    }
}
