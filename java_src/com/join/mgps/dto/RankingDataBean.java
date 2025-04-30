package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class RankingDataBean {
    private String jump_val;
    private List<RankingGameBean> list;
    private String title;
    private int type;

    public String getJump_val() {
        return this.jump_val;
    }

    public List<RankingGameBean> getList() {
        return this.list;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public void setJump_val(String str) {
        this.jump_val = str;
    }

    public void setList(List<RankingGameBean> list) {
        this.list = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }
}
