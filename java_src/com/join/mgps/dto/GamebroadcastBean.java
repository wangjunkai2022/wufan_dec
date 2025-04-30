package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class GamebroadcastBean implements Serializable {
    private List<RecomDatabean> bottom;
    private List<RecomDatabean> middle;
    private List<RecomDatabean> more;
    private List<RecomDatabean> sp_top;
    private List<RecomDatabean> top;

    public GamebroadcastBean() {
    }

    public List<RecomDatabean> getBottom() {
        return this.bottom;
    }

    public List<RecomDatabean> getMiddle() {
        return this.middle;
    }

    public List<RecomDatabean> getMore() {
        return this.more;
    }

    public List<RecomDatabean> getSp_top() {
        return this.sp_top;
    }

    public List<RecomDatabean> getTop() {
        return this.top;
    }

    public void setBottom(List<RecomDatabean> list) {
        this.bottom = list;
    }

    public void setMiddle(List<RecomDatabean> list) {
        this.middle = list;
    }

    public void setMore(List<RecomDatabean> list) {
        this.more = list;
    }

    public void setSp_top(List<RecomDatabean> list) {
        this.sp_top = list;
    }

    public void setTop(List<RecomDatabean> list) {
        this.top = list;
    }

    public GamebroadcastBean(List<RecomDatabean> list, List<RecomDatabean> list2, List<RecomDatabean> list3) {
        this.top = list;
        this.middle = list2;
        this.more = list3;
    }
}
