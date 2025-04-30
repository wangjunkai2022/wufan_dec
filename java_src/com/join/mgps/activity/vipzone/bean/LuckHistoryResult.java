package com.join.mgps.activity.vipzone.bean;

import java.util.List;
/* loaded from: classes3.dex */
public class LuckHistoryResult {
    PrizeBean missing_prize;
    List<PrizeBean> record_list;

    public PrizeBean getMissing_prize() {
        return this.missing_prize;
    }

    public List<PrizeBean> getRecord_list() {
        return this.record_list;
    }

    public void setMissing_prize(PrizeBean prizeBean) {
        this.missing_prize = prizeBean;
    }

    public void setRecord_list(List<PrizeBean> list) {
        this.record_list = list;
    }
}
