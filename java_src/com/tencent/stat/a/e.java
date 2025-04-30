package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.DeviceInfo;
import com.tencent.stat.StatConfig;
import com.tencent.stat.n;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f60001a;

    /* renamed from: b  reason: collision with root package name */
    protected String f60002b;

    /* renamed from: d  reason: collision with root package name */
    protected int f60004d;

    /* renamed from: e  reason: collision with root package name */
    protected DeviceInfo f60005e;

    /* renamed from: f  reason: collision with root package name */
    protected int f60006f;

    /* renamed from: g  reason: collision with root package name */
    protected String f60007g;

    /* renamed from: h  reason: collision with root package name */
    protected String f60008h;

    /* renamed from: i  reason: collision with root package name */
    protected String f60009i;

    /* renamed from: k  reason: collision with root package name */
    protected Context f60011k;

    /* renamed from: j  reason: collision with root package name */
    protected String f60010j = null;

    /* renamed from: c  reason: collision with root package name */
    protected long f60003c = System.currentTimeMillis() / 1000;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context, int i2) {
        this.f60002b = null;
        this.f60005e = null;
        this.f60007g = null;
        this.f60008h = null;
        this.f60009i = null;
        this.f60011k = context;
        this.f60004d = i2;
        this.f60002b = StatConfig.getAppKey(context);
        this.f60007g = StatConfig.getCustomUserId(context);
        this.f60005e = n.a(context).b(context);
        this.f60006f = com.tencent.stat.common.k.w(context).intValue();
        this.f60009i = com.tencent.stat.common.k.n(context);
        this.f60008h = StatConfig.getInstallChannel(context);
    }

    public abstract f a();

    public abstract boolean a(JSONObject jSONObject);

    public long b() {
        return this.f60003c;
    }

    public boolean b(JSONObject jSONObject) {
        try {
            com.tencent.stat.common.k.a(jSONObject, "ky", this.f60002b);
            jSONObject.put("et", a().a());
            DeviceInfo deviceInfo = this.f60005e;
            if (deviceInfo != null) {
                jSONObject.put(DeviceInfo.TAG_IMEI, deviceInfo.getImei());
                com.tencent.stat.common.k.a(jSONObject, "mc", this.f60005e.getMac());
                jSONObject.put("ut", this.f60005e.getUserType());
            }
            com.tencent.stat.common.k.a(jSONObject, "cui", this.f60007g);
            if (a() != f.SESSION_ENV) {
                com.tencent.stat.common.k.a(jSONObject, m.a.f72574l, this.f60009i);
                com.tencent.stat.common.k.a(jSONObject, "ch", this.f60008h);
            }
            com.tencent.stat.common.k.a(jSONObject, DeviceInfo.TAG_MID, StatConfig.getMid(this.f60011k));
            jSONObject.put("idx", this.f60006f);
            jSONObject.put("si", this.f60004d);
            jSONObject.put("ts", this.f60003c);
            if (this.f60005e.getUserType() == 0 && com.tencent.stat.common.k.E(this.f60011k) == 1) {
                jSONObject.put("ia", 1);
            }
            return a(jSONObject);
        } catch (Throwable unused) {
            return false;
        }
    }

    public Context c() {
        return this.f60011k;
    }

    public String d() {
        try {
            JSONObject jSONObject = new JSONObject();
            b(jSONObject);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
