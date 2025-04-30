package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes.dex */
public class PlayCfgBean implements Serializable {
    private String ad_id;
    private String probability;
    private int reward_time;
    private String sdk_key;
    private int sdk_type;

    public String getAd_id() {
        return this.ad_id;
    }

    public String getProbability() {
        return this.probability;
    }

    public int getReward_time() {
        return this.reward_time;
    }

    public String getSdk_key() {
        return this.sdk_key;
    }

    public int getSdk_type() {
        return this.sdk_type;
    }

    public void setAd_id(String str) {
        this.ad_id = str;
    }

    public void setProbability(String str) {
        this.probability = str;
    }

    public void setReward_time(int i2) {
        this.reward_time = i2;
    }

    public void setSdk_key(String str) {
        this.sdk_key = str;
    }

    public void setSdk_type(int i2) {
        this.sdk_type = i2;
    }
}
