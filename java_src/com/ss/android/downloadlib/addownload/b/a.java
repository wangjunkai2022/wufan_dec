package com.ss.android.downloadlib.addownload.b;

import com.ss.android.downloadlib.g.l;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AppInfo.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public long f57104a;

    /* renamed from: b  reason: collision with root package name */
    public long f57105b;

    /* renamed from: c  reason: collision with root package name */
    public long f57106c;

    /* renamed from: d  reason: collision with root package name */
    public String f57107d;

    /* renamed from: e  reason: collision with root package name */
    public String f57108e;

    /* renamed from: f  reason: collision with root package name */
    public String f57109f;

    /* renamed from: g  reason: collision with root package name */
    public String f57110g;

    /* renamed from: h  reason: collision with root package name */
    public volatile long f57111h;

    public a() {
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mDownloadId", this.f57104a);
            jSONObject.put("mAdId", this.f57105b);
            jSONObject.put("mExtValue", this.f57106c);
            jSONObject.put("mPackageName", this.f57107d);
            jSONObject.put("mAppName", this.f57108e);
            jSONObject.put("mLogExtra", this.f57109f);
            jSONObject.put("mFileName", this.f57110g);
            jSONObject.put("mTimeStamp", this.f57111h);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    public a(long j4, long j5, long j6, String str, String str2, String str3, String str4) {
        this.f57104a = j4;
        this.f57105b = j5;
        this.f57106c = j6;
        this.f57107d = str;
        this.f57108e = str2;
        this.f57109f = str3;
        this.f57110g = str4;
    }

    public static a a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        try {
            aVar.f57104a = l.a(jSONObject, "mDownloadId");
            aVar.f57105b = l.a(jSONObject, "mAdId");
            aVar.f57106c = l.a(jSONObject, "mExtValue");
            aVar.f57107d = jSONObject.optString("mPackageName");
            aVar.f57108e = jSONObject.optString("mAppName");
            aVar.f57109f = jSONObject.optString("mLogExtra");
            aVar.f57110g = jSONObject.optString("mFileName");
            aVar.f57111h = l.a(jSONObject, "mTimeStamp");
            return aVar;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
