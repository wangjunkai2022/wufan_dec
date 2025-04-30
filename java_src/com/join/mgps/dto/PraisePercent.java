package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class PraisePercent implements Serializable {
    private int praise_bad;
    private int praise_good;
    private int praise_nice;

    public PraisePercent(int i2, int i4, int i5) {
        this.praise_good = i2;
        this.praise_nice = i4;
        this.praise_bad = i5;
    }

    public int getPraise_bad() {
        return this.praise_bad;
    }

    public int getPraise_good() {
        return this.praise_good;
    }

    public int getPraise_nice() {
        return this.praise_nice;
    }

    public void setPraise_bad(int i2) {
        this.praise_bad = i2;
    }

    public void setPraise_good(int i2) {
        this.praise_good = i2;
    }

    public void setPraise_nice(int i2) {
        this.praise_nice = i2;
    }

    public PraisePercent() {
    }
}
