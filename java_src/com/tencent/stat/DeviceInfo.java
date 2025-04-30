package com.tencent.stat;

import com.tencent.stat.common.StatLogger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class DeviceInfo {
    public static final int NEW_USER = 0;
    public static final int OLD_USER = 1;
    public static final String TAG_ANDROID_ID = "aid";
    public static final String TAG_FLAG = "__MTA_DEVICE_INFO__";
    public static final String TAG_IMEI = "ui";
    public static final String TAG_MAC = "mc";
    public static final String TAG_MID = "mid";
    public static final String TAG_TIMESTAMPS = "ts";
    public static final String TAG_VERSION = "ver";
    public static final int UPGRADE_USER = 2;

    /* renamed from: h  reason: collision with root package name */
    private static StatLogger f59916h = com.tencent.stat.common.k.b();

    /* renamed from: a  reason: collision with root package name */
    private String f59917a;

    /* renamed from: b  reason: collision with root package name */
    private String f59918b;

    /* renamed from: c  reason: collision with root package name */
    private String f59919c;

    /* renamed from: d  reason: collision with root package name */
    private String f59920d;

    /* renamed from: e  reason: collision with root package name */
    private int f59921e;

    /* renamed from: f  reason: collision with root package name */
    private int f59922f;

    /* renamed from: g  reason: collision with root package name */
    private long f59923g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceInfo() {
        this.f59917a = null;
        this.f59918b = null;
        this.f59919c = null;
        this.f59920d = "0";
        this.f59922f = 0;
        this.f59923g = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceInfo(String str, String str2, int i2) {
        this.f59917a = null;
        this.f59918b = null;
        this.f59919c = null;
        this.f59920d = "0";
        this.f59922f = 0;
        this.f59923g = 0L;
        this.f59917a = str;
        this.f59918b = str2;
        this.f59921e = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DeviceInfo a(String str) {
        DeviceInfo deviceInfo = new DeviceInfo();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull(TAG_IMEI)) {
                deviceInfo.d(jSONObject.getString(TAG_IMEI));
            }
            if (!jSONObject.isNull("mc")) {
                deviceInfo.e(jSONObject.getString("mc"));
            }
            if (!jSONObject.isNull(TAG_MID)) {
                deviceInfo.c(jSONObject.getString(TAG_MID));
            }
            if (!jSONObject.isNull(TAG_ANDROID_ID)) {
                deviceInfo.b(jSONObject.getString(TAG_ANDROID_ID));
            }
            if (!jSONObject.isNull("ts")) {
                deviceInfo.a(jSONObject.getLong("ts"));
            }
            if (!jSONObject.isNull(TAG_VERSION)) {
                deviceInfo.a(jSONObject.getInt(TAG_VERSION));
            }
        } catch (JSONException e4) {
            f59916h.e((Exception) e4);
        }
        return deviceInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.f59922f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(DeviceInfo deviceInfo) {
        if (deviceInfo == null) {
            return 1;
        }
        String mid = getMid();
        String mid2 = deviceInfo.getMid();
        if (mid == null || mid2 == null || !mid.equals(mid2)) {
            int a4 = a();
            int a5 = deviceInfo.a();
            if (a4 > a5) {
                return 1;
            }
            if (a4 == a5) {
                long b4 = b();
                long b5 = deviceInfo.b();
                if (b4 > b5) {
                    return 1;
                }
                if (b4 == b5) {
                    return 0;
                }
            }
            return -1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        this.f59922f = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j4) {
        this.f59923g = j4;
    }

    long b() {
        return this.f59923g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i2) {
        this.f59921e = i2;
    }

    void b(String str) {
        this.f59919c = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.tencent.stat.common.k.a(jSONObject, TAG_IMEI, this.f59917a);
            com.tencent.stat.common.k.a(jSONObject, "mc", this.f59918b);
            com.tencent.stat.common.k.a(jSONObject, TAG_MID, this.f59920d);
            com.tencent.stat.common.k.a(jSONObject, TAG_ANDROID_ID, this.f59919c);
            jSONObject.put("ts", this.f59923g);
            jSONObject.put(TAG_VERSION, this.f59922f);
        } catch (JSONException e4) {
            f59916h.e((Exception) e4);
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        this.f59920d = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(String str) {
        this.f59917a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(String str) {
        this.f59918b = str;
    }

    public String getImei() {
        return this.f59917a;
    }

    public String getMac() {
        return this.f59918b;
    }

    public String getMid() {
        return this.f59920d;
    }

    public int getUserType() {
        return this.f59921e;
    }

    public String toString() {
        return c().toString();
    }
}
