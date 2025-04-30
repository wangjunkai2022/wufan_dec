package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class CategoryCommonDataBean {
    private String game_count;
    private List<Object> info;
    private String tpl_type;

    public CategoryCommonDataBean(String str, String str2, List<Object> list) {
        this.tpl_type = str;
        this.game_count = str2;
        this.info = list;
    }

    public List<Object> getInfo() {
        return this.info;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setInfo(List<Object> list) {
        this.info = list;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public CategoryCommonDataBean() {
    }
}
