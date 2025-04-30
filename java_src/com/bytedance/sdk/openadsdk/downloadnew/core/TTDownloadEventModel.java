package com.bytedance.sdk.openadsdk.downloadnew.core;

import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TTDownloadEventModel {

    /* renamed from: a  reason: collision with root package name */
    private String f10636a;

    /* renamed from: b  reason: collision with root package name */
    private String f10637b;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f10638c;

    /* renamed from: d  reason: collision with root package name */
    private JSONObject f10639d;

    public static TTDownloadEventModel builder() {
        return new TTDownloadEventModel();
    }

    public JSONObject getExtJson() {
        return this.f10638c;
    }

    public String getLabel() {
        return this.f10637b;
    }

    public JSONObject getMaterialMeta() {
        return this.f10639d;
    }

    public String getTag() {
        return this.f10636a;
    }

    public TTDownloadEventModel setExtJson(JSONObject jSONObject) {
        this.f10638c = jSONObject;
        return this;
    }

    public TTDownloadEventModel setLabel(String str) {
        this.f10637b = str;
        return this;
    }

    public TTDownloadEventModel setMaterialMeta(JSONObject jSONObject) {
        this.f10639d = jSONObject;
        return this;
    }

    public TTDownloadEventModel setTag(String str) {
        this.f10636a = str;
        return this;
    }
}
