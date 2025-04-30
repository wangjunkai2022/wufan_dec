package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class FirstScreenAdDtoData {
    private ThAdSwitchDataBean th_ad_switch;
    private List<ShowViewDataBean> wf_ad_list;

    public ThAdSwitchDataBean getTh_ad_switch() {
        return this.th_ad_switch;
    }

    public List<ShowViewDataBean> getWf_ad_list() {
        return this.wf_ad_list;
    }

    public void setTh_ad_switch(ThAdSwitchDataBean thAdSwitchDataBean) {
        this.th_ad_switch = thAdSwitchDataBean;
    }

    public void setWf_ad_list(List<ShowViewDataBean> list) {
        this.wf_ad_list = list;
    }
}
