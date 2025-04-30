package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestKeywordArgs extends BaseDto {
    private String game_id;
    private String keyword;
    int lang_id;
    private int pc;
    int plugin_num;
    private int pn;

    public RequestKeywordArgs() {
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public int getLang_id() {
        return this.lang_id;
    }

    public int getPc() {
        return this.pc;
    }

    public int getPlugin_num() {
        return this.plugin_num;
    }

    public int getPn() {
        return this.pn;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setLang_id(int i2) {
        this.lang_id = i2;
    }

    public void setPc(int i2) {
        this.pc = i2;
    }

    public void setPlugin_num(int i2) {
        this.plugin_num = i2;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public RequestKeywordArgs(String str, int i2, int i4) {
        this.keyword = str;
        this.pn = i2;
        this.pc = i4;
    }

    public RequestKeywordArgs(String str, int i2, int i4, int i5, int i6) {
        this.keyword = str;
        this.pn = i2;
        this.pc = i4;
        this.plugin_num = i5;
        this.lang_id = i6;
    }
}
