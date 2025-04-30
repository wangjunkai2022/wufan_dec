package cn.com.chinatelecom.account.api.c;

import android.content.Context;
import android.net.Network;
import android.os.Build;
import cn.com.chinatelecom.account.api.CtAuth;
import cn.com.chinatelecom.account.api.CtSetting;
import cn.com.chinatelecom.account.api.ResultListener;
import cn.com.chinatelecom.account.api.d.g;
import cn.com.chinatelecom.account.api.e.f;
import cn.com.chinatelecom.account.api.e.g;
import cn.com.chinatelecom.account.api.e.h;
import cn.com.chinatelecom.account.api.e.j;
import com.umeng.analytics.pro.ai;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8524a = "a";

    /* renamed from: b  reason: collision with root package name */
    private boolean f8525b = false;

    /* renamed from: c  reason: collision with root package name */
    private Context f8526c;

    /* renamed from: d  reason: collision with root package name */
    private String f8527d;

    /* renamed from: e  reason: collision with root package name */
    private String f8528e;

    /* renamed from: f  reason: collision with root package name */
    private c f8529f;

    public a(Context context, String str, String str2) {
        this.f8526c = context;
        this.f8527d = str;
        this.f8528e = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject a(Context context, String str, String str2, String str3, CtSetting ctSetting, Network network, String str4, String str5, int i2) {
        String b4;
        String b5;
        boolean z3;
        try {
            long a4 = cn.com.chinatelecom.account.api.e.a.a(context);
            if (i2 == cn.com.chinatelecom.account.api.a.f8486d) {
                b4 = h.a();
                b5 = h.a(context, str, str2, str3, a4, "");
            } else {
                b4 = h.b();
                b5 = h.b(context, str, str2, str3, a4, "");
            }
            if (g.a() != null) {
                b4 = b4.replace(cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.e.b.f8625f), g.a());
            }
            JSONObject jSONObject = new JSONObject(b5);
            String optString = jSONObject.optString(ai.av);
            String optString2 = jSONObject.optString("k");
            g.a aVar = new g.a();
            aVar.a(str5);
            aVar.a(false, cn.com.chinatelecom.account.api.d.c.a(), cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.e.b.f8625f));
            aVar.b(str4);
            aVar.a(network);
            aVar.a(CtSetting.getConnTimeout(ctSetting));
            aVar.b(CtSetting.getReadTimeout(ctSetting));
            cn.com.chinatelecom.account.api.d.g a5 = aVar.a();
            cn.com.chinatelecom.account.api.d.b bVar = new cn.com.chinatelecom.account.api.d.b(context);
            cn.com.chinatelecom.account.api.d.h a6 = bVar.a(b4, optString, 1, a5);
            if (a6.f8617d) {
                synchronized (this) {
                    z3 = this.f8525b;
                }
                if (!z3) {
                    cn.com.chinatelecom.account.api.d.h a7 = bVar.a(b4, optString, 1, aVar.a(true).a(false, "", "").a());
                    f.a(str4).b(1);
                    a6 = a7;
                }
            }
            JSONObject a8 = cn.com.chinatelecom.account.api.e.a.a(context, a6, optString2, network, true, str4);
            f.b(str4, a8, optString);
            return a8;
        } catch (Throwable th) {
            JSONObject g4 = j.g();
            cn.com.chinatelecom.account.api.e.e a9 = f.a(str4);
            a9.g("gpm ：" + th.getMessage()).a(80102).e(cn.com.chinatelecom.account.api.a.d.a(j.f8678k));
            CtAuth.warn(f8524a, "GPM Throwable", th);
            return g4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        c cVar = this.f8529f;
        if (cVar != null) {
            cVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, String str, String str2, long j4, String str3, ResultListener resultListener) {
        f.a(str2).a(i2).e(str).b(j4).g(str3);
        f.c(str2);
        String a4 = j.a(i2, str, str2);
        if (resultListener != null) {
            resultListener.onResult(a4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, final CtSetting ctSetting, final Network network, final ResultListener resultListener, long j4, final String str2, final String str3, final int i2) {
        new d().a(new e(j4) { // from class: cn.com.chinatelecom.account.api.c.a.3
            @Override // cn.com.chinatelecom.account.api.c.e
            public void a() {
                a aVar = a.this;
                JSONObject a4 = aVar.a(aVar.f8526c, a.this.f8527d, a.this.f8528e, str, ctSetting, network, str2, str3, i2);
                synchronized (this) {
                    if (!c()) {
                        a(true);
                        d();
                        CtAuth.postResultOnMainThread(str2, a4, resultListener);
                    }
                }
                if (network != null) {
                    a.this.a();
                }
            }

            @Override // cn.com.chinatelecom.account.api.c.e
            public void b() {
                super.b();
                synchronized (a.this) {
                    a.this.f8525b = true;
                }
                synchronized (this) {
                    if (!c()) {
                        a(true);
                        a.this.a(80000, cn.com.chinatelecom.account.api.a.d.a(j.f8668a), str2, 0L, "", resultListener);
                    }
                }
                if (network != null) {
                    a.this.a();
                }
            }
        });
    }

    public void a(String str, CtSetting ctSetting, int i2, ResultListener resultListener) {
        int totalTimeout = CtSetting.getTotalTimeout(ctSetting);
        String a4 = cn.com.chinatelecom.account.api.e.d.a();
        String a5 = cn.com.chinatelecom.account.api.e.d.a(this.f8526c);
        String a6 = cn.com.chinatelecom.account.api.e.a.a(i2);
        f.a(a4).a(a5).c(a6).b(cn.com.chinatelecom.account.api.e.g.e(this.f8526c)).f(cn.com.chinatelecom.account.api.e.g.i(this.f8526c));
        a(str, ctSetting, null, resultListener, totalTimeout, a4, a6, i2);
    }

    public void b(final String str, final CtSetting ctSetting, final int i2, final ResultListener resultListener) {
        final int totalTimeout = CtSetting.getTotalTimeout(ctSetting);
        final String a4 = cn.com.chinatelecom.account.api.e.d.a();
        String a5 = cn.com.chinatelecom.account.api.e.d.a(this.f8526c);
        final String a6 = cn.com.chinatelecom.account.api.e.a.a(i2);
        f.a(a4).a(a5).c(a6).b("BOTH").f(cn.com.chinatelecom.account.api.e.g.i(this.f8526c));
        if (Build.VERSION.SDK_INT >= 21) {
            c cVar = new c(this.f8526c);
            this.f8529f = cVar;
            cVar.a(new b() { // from class: cn.com.chinatelecom.account.api.c.a.1
                @Override // cn.com.chinatelecom.account.api.c.b
                public void a() {
                    a.this.a();
                    a.this.a(80800, cn.com.chinatelecom.account.api.a.d.a(j.f8682o), a4, 2500L, "", resultListener);
                }

                @Override // cn.com.chinatelecom.account.api.c.b
                public void a(long j4) {
                    a.this.a();
                    a.this.a(80801, cn.com.chinatelecom.account.api.a.d.a(j.f8683p), a4, j4, "", resultListener);
                }

                @Override // cn.com.chinatelecom.account.api.c.b
                public void a(Network network, long j4) {
                    long j5 = totalTimeout - j4;
                    if (j5 > 100) {
                        a.this.a(str, ctSetting, network, resultListener, j5, a4, a6, i2);
                    } else {
                        a.this.a();
                        CtAuth.postResultOnMainThread(a4, j.c(), resultListener);
                    }
                    f.a(a4).b(j4);
                }
            });
            return;
        }
        this.f8529f = new c(this.f8526c);
        String a7 = h.a();
        if (cn.com.chinatelecom.account.api.e.g.a() != null) {
            a7 = a7.replace(cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.e.b.f8625f), cn.com.chinatelecom.account.api.e.g.a());
        }
        this.f8529f.a(new b() { // from class: cn.com.chinatelecom.account.api.c.a.2
            @Override // cn.com.chinatelecom.account.api.c.b
            public void a() {
                a.this.a(80800, cn.com.chinatelecom.account.api.a.d.a(j.f8682o), a4, 2500L, "Switching network timeout (4.x)", resultListener);
            }

            @Override // cn.com.chinatelecom.account.api.c.b
            public void a(long j4) {
                a.this.a(80801, cn.com.chinatelecom.account.api.a.d.a(j.f8683p), a4, j4, "Switching network failed (4.x)", resultListener);
            }

            @Override // cn.com.chinatelecom.account.api.c.b
            public void a(Network network, long j4) {
                long j5 = totalTimeout - j4;
                if (j5 > 100) {
                    a.this.a(str, ctSetting, null, resultListener, j5, a4, a6, i2);
                } else {
                    CtAuth.postResultOnMainThread(a4, j.c(), resultListener);
                }
                f.a(a4).b(j4);
            }
        }, a7);
    }
}
