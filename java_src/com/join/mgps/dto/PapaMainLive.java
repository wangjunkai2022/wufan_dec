package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class PapaMainLive {
    private PapaMainLiveFirst first;
    private List<PapaMainLivelistItem> list;
    private String sub_title;
    private String title;

    public PapaMainLiveFirst getFirst() {
        return this.first;
    }

    public List<PapaMainLivelistItem> getList() {
        return this.list;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public void setFirst(PapaMainLiveFirst papaMainLiveFirst) {
        this.first = papaMainLiveFirst;
    }

    public void setList(List<PapaMainLivelistItem> list) {
        this.list = list;
    }

    public void setSub_title(String str) {
        this.sub_title = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
