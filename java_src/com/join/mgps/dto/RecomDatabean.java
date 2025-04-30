package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class RecomDatabean implements Serializable {
    private int dataFrom;
    private ModleBean main;
    private List<AppMoreBean> more;
    private List<AppBeanMain> sub;

    public RecomDatabean(RecomDatabean recomDatabean) {
        this.dataFrom = recomDatabean.getDataFrom();
        this.main = recomDatabean.getMain();
        this.sub = recomDatabean.getSub();
        this.more = recomDatabean.getMore();
    }

    public int getDataFrom() {
        return this.dataFrom;
    }

    public ModleBean getMain() {
        return this.main;
    }

    public List<AppMoreBean> getMore() {
        return this.more;
    }

    public List<AppBeanMain> getSub() {
        return this.sub;
    }

    public void setDataFrom(int i2) {
        this.dataFrom = i2;
    }

    public void setMain(ModleBean modleBean) {
        this.main = modleBean;
    }

    public void setMore(List<AppMoreBean> list) {
        this.more = list;
    }

    public void setSub(List<AppBeanMain> list) {
        this.sub = list;
    }

    public RecomDatabean() {
    }

    public RecomDatabean(int i2, ModleBean modleBean, List<AppBeanMain> list, List<AppMoreBean> list2) {
        this.dataFrom = i2;
        this.main = modleBean;
        this.sub = list;
        this.more = list2;
    }
}
