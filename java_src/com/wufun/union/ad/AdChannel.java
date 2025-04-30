package com.wufun.union.ad;

import android.app.Activity;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class AdChannel {

    /* renamed from: c  reason: collision with root package name */
    protected Type f62264c;

    /* renamed from: d  reason: collision with root package name */
    protected a f62265d;

    /* renamed from: e  reason: collision with root package name */
    protected Context f62266e;

    /* renamed from: g  reason: collision with root package name */
    protected int f62268g;

    /* renamed from: h  reason: collision with root package name */
    protected String f62269h;

    /* renamed from: i  reason: collision with root package name */
    protected String f62270i;

    /* renamed from: a  reason: collision with root package name */
    protected boolean f62262a = false;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f62263b = false;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f62267f = false;

    /* loaded from: classes3.dex */
    public enum Type {
        TT(0),
        GDT(1),
        UNKNOWN(-1);
        
        public int val;

        Type(int i2) {
            this.val = i2;
        }

        public static Type parse(int i2) {
            Type type = TT;
            if (i2 == type.val) {
                return type;
            }
            Type type2 = GDT;
            return i2 == type2.val ? type2 : UNKNOWN;
        }
    }

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i2, String str);
    }

    public a a() {
        return this.f62265d;
    }

    public int b() {
        return this.f62268g;
    }

    public String c() {
        return this.f62270i;
    }

    public abstract void d(Context context, String str);

    public boolean e() {
        return this.f62263b;
    }

    public boolean f() {
        return this.f62262a;
    }

    public void g(String str) {
        h(str, 1080.0f, 1920.0f);
    }

    public Type getType() {
        return this.f62264c;
    }

    public abstract void h(String str, float f4, float f5);

    public void i(int i2, Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("type", Integer.valueOf(this.f62264c.val));
            jSONObject.putOpt(NotificationCompat.CATEGORY_EVENT, Integer.valueOf(i2));
            jSONObject.putOpt("result", obj);
            jSONObject.putOpt("message", str);
            a aVar = this.f62265d;
            if (aVar != null) {
                aVar.a(i2, jSONObject.toString());
            }
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }

    public void j(a aVar) {
        this.f62265d = aVar;
    }

    public void k(int i2) {
        this.f62268g = i2;
    }

    public void l(String str) {
        this.f62270i = str;
    }

    public abstract void m(Activity activity);
}
