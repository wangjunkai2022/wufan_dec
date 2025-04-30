package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class HomeGameCarefullyRequestArgs {
    private int first;
    private String game_id;
    private int pn;

    public HomeGameCarefullyRequestArgs() {
    }

    public int getFirst() {
        return this.first;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getPn() {
        return this.pn;
    }

    public void setFirst(int i2) {
        this.first = i2;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public HomeGameCarefullyRequestArgs(int i2, int i4, String str) {
        this.pn = i2;
        this.first = i4;
        this.game_id = str;
    }
}
