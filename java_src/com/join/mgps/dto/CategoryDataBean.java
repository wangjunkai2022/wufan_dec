package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class CategoryDataBean {
    private List<CategorySimpleBean> game_type;

    public CategoryDataBean() {
    }

    public List<CategorySimpleBean> getGame_type() {
        return this.game_type;
    }

    public void setGame_type(List<CategorySimpleBean> list) {
        this.game_type = list;
    }

    public CategoryDataBean(List<CategorySimpleBean> list) {
        this.game_type = list;
    }
}
