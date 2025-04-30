package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ConfigMain {
    private List<BaiduAdDataMain> ad_position;
    private EverdayLogin every_day_login;

    public List<BaiduAdDataMain> getAd_position() {
        return this.ad_position;
    }

    public EverdayLogin getEvery_day_login() {
        return this.every_day_login;
    }

    public void setAd_position(List<BaiduAdDataMain> list) {
        this.ad_position = list;
    }

    public void setEvery_day_login(EverdayLogin everdayLogin) {
        this.every_day_login = everdayLogin;
    }
}
