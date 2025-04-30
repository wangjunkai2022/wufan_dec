package com.qq.e.ads.rewardvideo;

import org.json.JSONObject;
/* loaded from: classes4.dex */
public class ServerSideVerificationOptions {
    public static final String TRANS_ID = "transId";

    /* renamed from: a  reason: collision with root package name */
    private String f56390a;

    /* renamed from: b  reason: collision with root package name */
    private String f56391b;

    /* renamed from: c  reason: collision with root package name */
    private final JSONObject f56392c;

    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f56393a;

        /* renamed from: b  reason: collision with root package name */
        private String f56394b;

        public ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this);
        }

        public Builder setCustomData(String str) {
            this.f56393a = str;
            return this;
        }

        public Builder setUserId(String str) {
            this.f56394b = str;
            return this;
        }
    }

    private ServerSideVerificationOptions(Builder builder) {
        this.f56392c = new JSONObject();
        this.f56390a = builder.f56393a;
        this.f56391b = builder.f56394b;
    }

    public String getCustomData() {
        return this.f56390a;
    }

    public JSONObject getOptions() {
        return this.f56392c;
    }

    public String getUserId() {
        return this.f56391b;
    }
}
