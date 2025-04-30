package com.tencent.stat.common;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import com.tencent.stat.StatConfig;
import com.umeng.analytics.pro.ai;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;
/* loaded from: classes4.dex */
class c {

    /* renamed from: a  reason: collision with root package name */
    String f60047a;

    /* renamed from: b  reason: collision with root package name */
    String f60048b;

    /* renamed from: c  reason: collision with root package name */
    DisplayMetrics f60049c;

    /* renamed from: d  reason: collision with root package name */
    int f60050d;

    /* renamed from: e  reason: collision with root package name */
    String f60051e;

    /* renamed from: f  reason: collision with root package name */
    String f60052f;

    /* renamed from: g  reason: collision with root package name */
    String f60053g;

    /* renamed from: h  reason: collision with root package name */
    String f60054h;

    /* renamed from: i  reason: collision with root package name */
    String f60055i;

    /* renamed from: j  reason: collision with root package name */
    String f60056j;

    /* renamed from: k  reason: collision with root package name */
    String f60057k;

    /* renamed from: l  reason: collision with root package name */
    int f60058l;

    /* renamed from: m  reason: collision with root package name */
    String f60059m;

    /* renamed from: n  reason: collision with root package name */
    Context f60060n;

    /* renamed from: o  reason: collision with root package name */
    private String f60061o;

    /* renamed from: p  reason: collision with root package name */
    private String f60062p;

    /* renamed from: q  reason: collision with root package name */
    private String f60063q;

    /* renamed from: r  reason: collision with root package name */
    private String f60064r;

    private c(Context context) {
        this.f60048b = StatConstants.VERSION;
        this.f60050d = Build.VERSION.SDK_INT;
        this.f60051e = Build.MODEL;
        this.f60052f = Build.MANUFACTURER;
        this.f60053g = Locale.getDefault().getLanguage();
        this.f60058l = 0;
        this.f60059m = null;
        this.f60060n = null;
        this.f60061o = null;
        this.f60062p = null;
        this.f60063q = null;
        this.f60064r = null;
        this.f60060n = context;
        this.f60049c = k.d(context);
        this.f60047a = k.n(context);
        this.f60054h = StatConfig.getInstallChannel(context);
        this.f60055i = k.m(context);
        this.f60056j = TimeZone.getDefault().getID();
        this.f60058l = k.s(context);
        this.f60057k = k.t(context);
        this.f60059m = context.getPackageName();
        if (this.f60050d >= 14) {
            this.f60061o = k.A(context);
        }
        this.f60062p = k.z(context).toString();
        this.f60063q = k.x(context);
        this.f60064r = k.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        jSONObject.put("sr", this.f60049c.widthPixels + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + this.f60049c.heightPixels);
        k.a(jSONObject, m.a.f72574l, this.f60047a);
        k.a(jSONObject, "ch", this.f60054h);
        k.a(jSONObject, "mf", this.f60052f);
        k.a(jSONObject, m.a.f72572j, this.f60048b);
        k.a(jSONObject, "ov", Integer.toString(this.f60050d));
        jSONObject.put(ai.f60424x, 1);
        k.a(jSONObject, "op", this.f60055i);
        k.a(jSONObject, "lg", this.f60053g);
        k.a(jSONObject, "md", this.f60051e);
        k.a(jSONObject, "tz", this.f60056j);
        int i2 = this.f60058l;
        if (i2 != 0) {
            jSONObject.put("jb", i2);
        }
        k.a(jSONObject, "sd", this.f60057k);
        k.a(jSONObject, "apn", this.f60059m);
        if (k.h(this.f60060n)) {
            JSONObject jSONObject2 = new JSONObject();
            k.a(jSONObject2, "bs", k.C(this.f60060n));
            k.a(jSONObject2, "ss", k.D(this.f60060n));
            if (jSONObject2.length() > 0) {
                k.a(jSONObject, "wf", jSONObject2.toString());
            }
        }
        k.a(jSONObject, "sen", this.f60061o);
        k.a(jSONObject, ai.f60423w, this.f60062p);
        k.a(jSONObject, "ram", this.f60063q);
        k.a(jSONObject, "rom", this.f60064r);
    }
}
