package com.sdk.x;

import android.content.Context;
import com.sdk.p.f;
import org.json.JSONObject;
/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes4.dex */
public class a<T> implements com.sdk.e.a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f56705a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ d f56706b;

    public a(d dVar, int i2) {
        this.f56706b = dVar;
        this.f56705a = i2;
    }

    @Override // com.sdk.e.a
    public void a(int i2, int i4, String str) {
        this.f56706b.a(i2, i4, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.String] */
    @Override // com.sdk.e.a
    public void onSuccess(int i2, String str, int i4, T t3, String str2) {
        Context context;
        Context context2;
        Context unused;
        context = this.f56706b.f56712d;
        Long b4 = com.sdk.j.a.b(context, "access_limit_count");
        com.sdk.j.a.a(context, "access_limit_count", Long.valueOf(b4 == null ? 0L : b4.longValue() + 1));
        if (i2 == 0) {
            context2 = this.f56706b.f56712d;
            com.sdk.b.a.a(context2, this.f56705a, com.sdk.b.a.a(t3, str2), f.b.f56684b.a());
            try {
                unused = this.f56706b.f56712d;
                t3 = (T) com.sdk.u.a.a(String.valueOf((Object) t3));
                if (t3 == 0) {
                    this.f56706b.a(1, "SDK解密异常", 302001, t3, str2);
                    return;
                }
                JSONObject jSONObject = new JSONObject((String) t3);
                if (this.f56705a == 1) {
                    jSONObject.remove("fakeMobile");
                    t3 = (T) jSONObject.toString();
                }
            } catch (Exception unused2) {
            }
        }
        this.f56706b.a(i2, str, i4, t3, str2);
    }
}
