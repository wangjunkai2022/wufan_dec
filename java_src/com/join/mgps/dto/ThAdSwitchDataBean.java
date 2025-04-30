package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ThAdSwitchDataBean implements Serializable {
    private String fx_ad_id;
    private int fx_ad_switch;
    private String fx_sdk_key;
    private int type;

    public String getFx_ad_id() {
        return this.fx_ad_id;
    }

    public int getFx_ad_switch() {
        return this.fx_ad_switch;
    }

    public String getFx_sdk_key() {
        return this.fx_sdk_key;
    }

    public int getType() {
        return this.type;
    }

    public void setFx_ad_id(String str) {
        this.fx_ad_id = str;
    }

    public void setFx_ad_switch(int i2) {
        this.fx_ad_switch = i2;
    }

    public void setFx_sdk_key(String str) {
        this.fx_sdk_key = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }
}
