package com.join.mgps.activity.recomend;

import com.join.mgps.dto.AppBean;
/* loaded from: classes3.dex */
public class RecomentBean {
    private AppBean game_info;
    private int index;
    private int is_select;
    private String source_url;
    private String tag;

    public AppBean getGame_info() {
        return this.game_info;
    }

    public int getIndex() {
        return this.index;
    }

    public int getIs_select() {
        return this.is_select;
    }

    public String getSource_url() {
        return this.source_url;
    }

    public String getTag() {
        return this.tag;
    }

    public void setGame_info(AppBean appBean) {
        this.game_info = appBean;
    }

    public void setIndex(int i2) {
        this.index = i2;
    }

    public void setIs_select(int i2) {
        this.is_select = i2;
    }

    public void setSource_url(String str) {
        this.source_url = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }
}
