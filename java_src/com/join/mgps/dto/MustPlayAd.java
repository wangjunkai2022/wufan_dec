package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class MustPlayAd {
    private MustPlayAdMain main;
    private List<MustPlayAdSub> sub;

    public MustPlayAdMain getMain() {
        return this.main;
    }

    public List<MustPlayAdSub> getSub() {
        return this.sub;
    }

    public void setMain(MustPlayAdMain mustPlayAdMain) {
        this.main = mustPlayAdMain;
    }

    public void setSub(List<MustPlayAdSub> list) {
        this.sub = list;
    }

    public String toString() {
        return "MustPlayAd{main=" + this.main + ", sub=" + this.sub + '}';
    }
}
