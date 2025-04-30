package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ArenaCat implements Serializable {
    private int cat_id;
    private String filter_show;
    private String icon;
    private String title;

    public int getCat_id() {
        return this.cat_id;
    }

    public String getFilter_show() {
        return this.filter_show;
    }

    public String getIcon() {
        return this.icon;
    }

    public String getTitle() {
        return this.title;
    }

    public void setCat_id(int i2) {
        this.cat_id = i2;
    }

    public void setFilter_show(String str) {
        this.filter_show = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
