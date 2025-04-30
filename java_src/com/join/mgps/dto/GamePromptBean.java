package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GamePromptBean implements Serializable {
    private int id;
    private String text;

    public int getId() {
        return this.id;
    }

    public String getText() {
        return this.text;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setText(String str) {
        this.text = str;
    }
}
