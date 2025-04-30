package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PayGameCheckResult {
    private String appGameId;
    private long expireTime;
    private boolean state;

    public String getAppGameId() {
        return this.appGameId;
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public boolean isState() {
        return this.state;
    }

    public void setAppGameId(String str) {
        this.appGameId = str;
    }

    public void setExpireTime(long j4) {
        this.expireTime = j4;
    }

    public void setState(boolean z3) {
        this.state = z3;
    }
}
