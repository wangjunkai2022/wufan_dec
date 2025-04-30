package com.netease.nis.quicklogin.entity;

import org.json.JSONObject;
/* loaded from: classes4.dex */
public class PreCheckEntity {
    private int code;
    private String data;
    private JSONObject extData;
    private String msg;

    /* loaded from: classes4.dex */
    public static class Data {
        private String appId;
        private String appKey;
        private int ot;
        private String token;
        private String url;

        public String getAppId() {
            return this.appId;
        }

        public String getAppKey() {
            return this.appKey;
        }

        public int getOt() {
            return this.ot;
        }

        public String getToken() {
            return this.token;
        }

        public String getUrl() {
            return this.url;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getData() {
        return this.data;
    }

    public JSONObject getExtData() {
        return this.extData;
    }

    public String getMsg() {
        return this.msg;
    }
}
