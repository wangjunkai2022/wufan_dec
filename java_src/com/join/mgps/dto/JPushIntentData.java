package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class JPushIntentData implements Serializable {
    private GameHeadAd jumpInfo;
    private String subType;
    private String type;

    public GameHeadAd getJumpInfo() {
        return this.jumpInfo;
    }

    public String getSubType() {
        return this.subType;
    }

    public String getType() {
        return this.type;
    }

    public void setJumpInfo(GameHeadAd gameHeadAd) {
        this.jumpInfo = gameHeadAd;
    }

    public void setSubType(String str) {
        this.subType = str;
    }

    public void setType(String str) {
        this.type = str;
    }
}
