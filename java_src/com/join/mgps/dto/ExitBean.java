package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ExitBean {
    private List<RecomDatabean> info;
    private int isopen;

    public ExitBean(int i2, List<RecomDatabean> list) {
        this.isopen = i2;
        this.info = list;
    }

    public List<RecomDatabean> getInfo() {
        return this.info;
    }

    public int getIsopen() {
        return this.isopen;
    }

    public void setInfo(List<RecomDatabean> list) {
        this.info = list;
    }

    public void setIsopen(int i2) {
        this.isopen = i2;
    }

    public ExitBean() {
    }
}
