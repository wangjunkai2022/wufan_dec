package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class WufunNowHomeJoinBean {
    private List<RecomDatabean> list;
    private long times;
    private int today_tpl_type;

    public List<RecomDatabean> getList() {
        return this.list;
    }

    public long getTimes() {
        return this.times;
    }

    public int getToday_tpl_type() {
        return this.today_tpl_type;
    }

    public void setList(List<RecomDatabean> list) {
        this.list = list;
    }

    public void setTimes(long j4) {
        this.times = j4;
    }

    public void setToday_tpl_type(int i2) {
        this.today_tpl_type = i2;
    }
}
