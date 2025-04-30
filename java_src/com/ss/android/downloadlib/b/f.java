package com.ss.android.downloadlib.b;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.downloader.a.a;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AppLinkOptimiseHelper.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static Handler f57374a = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(@NonNull final com.ss.android.downloadad.api.a.b bVar, final int i2) {
        if (i2 <= 0) {
            return;
        }
        com.ss.android.downloadlib.d.a().a(new Runnable() { // from class: com.ss.android.downloadlib.b.f.2
            @Override // java.lang.Runnable
            public void run() {
                int i4 = 1;
                if (l.c(com.ss.android.downloadad.api.a.b.this.e())) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        if (!com.ss.android.downloadad.api.a.b.this.aa()) {
                            i4 = 2;
                        }
                        jSONObject.putOpt("deeplink_source", Integer.valueOf(i4));
                    } catch (JSONException e4) {
                        e4.printStackTrace();
                    }
                    com.ss.android.downloadlib.d.a.a().a("deeplink_success_2", jSONObject, com.ss.android.downloadad.api.a.b.this);
                    return;
                }
                f.b(com.ss.android.downloadad.api.a.b.this, i2 - 1);
            }
        }, i(bVar) * 1000);
    }

    public static boolean c(com.ss.android.downloadad.api.a.b bVar) {
        return com.ss.android.downloadlib.g.e.a(bVar).b("app_link_opt_invoke_switch") == 1;
    }

    public static boolean d(com.ss.android.downloadad.api.a.b bVar) {
        return com.ss.android.downloadlib.g.e.a(bVar).b("app_link_opt_dialog_switch") == 1;
    }

    public static long e(com.ss.android.downloadad.api.a.b bVar) {
        if (bVar == null) {
            return 3000L;
        }
        return com.ss.android.downloadlib.g.e.a(bVar).a("app_link_opt_back_time_limit", 3) * 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long h(com.ss.android.downloadad.api.a.b bVar) {
        return com.ss.android.downloadlib.g.e.a(bVar).a("app_link_check_timeout", q.a.f73955b);
    }

    private static int i(com.ss.android.downloadad.api.a.b bVar) {
        return com.ss.android.downloadlib.g.e.a(bVar).a("app_link_check_delay", 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int j(com.ss.android.downloadad.api.a.b bVar) {
        return com.ss.android.downloadlib.g.e.a(bVar).a("app_link_check_count", 10);
    }

    public static void a(final com.ss.android.downloadad.api.a.b bVar, @NonNull final h hVar) {
        boolean b4 = com.ss.android.socialbase.downloader.a.a.a().b();
        if (!b4 && Build.VERSION.SDK_INT >= 29) {
            l.b();
        }
        boolean b5 = com.ss.android.socialbase.downloader.a.a.a().b();
        boolean z3 = !b4 && b5;
        if (bVar != null) {
            bVar.l(z3);
        }
        hVar.a(z3);
        if (bVar == null) {
            return;
        }
        b(bVar, j(bVar));
        if (b5) {
            return;
        }
        final long currentTimeMillis = System.currentTimeMillis();
        com.ss.android.socialbase.downloader.a.a.a().a(new a.InterfaceC0308a() { // from class: com.ss.android.downloadlib.b.f.1
            @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
            public void b() {
                com.ss.android.socialbase.downloader.a.a.a().b(this);
                com.ss.android.downloadlib.d.a().a(new Runnable() { // from class: com.ss.android.downloadlib.b.f.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean c4 = l.c(com.ss.android.downloadad.api.a.b.this.e());
                        long e4 = f.e(com.ss.android.downloadad.api.a.b.this);
                        if (!c4 || e4 >= System.currentTimeMillis() - currentTimeMillis) {
                            long h4 = f.h(com.ss.android.downloadad.api.a.b.this);
                            long currentTimeMillis2 = System.currentTimeMillis();
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            if (currentTimeMillis2 - currentTimeMillis > h4) {
                                com.ss.android.downloadlib.d.a.a().a("deeplink_delay_timeout", com.ss.android.downloadad.api.a.b.this);
                                return;
                            }
                            com.ss.android.downloadad.api.a.b.this.l(true);
                            com.ss.android.downloadlib.d.a.a().a("deeplink_delay_invoke", com.ss.android.downloadad.api.a.b.this);
                            hVar.a(true);
                            com.ss.android.downloadad.api.a.b bVar2 = com.ss.android.downloadad.api.a.b.this;
                            f.b(bVar2, f.j(bVar2));
                        }
                    }
                });
            }

            @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
            public void c() {
            }
        });
    }

    public static boolean b(com.ss.android.downloadad.api.a.b bVar) {
        return com.ss.android.downloadlib.g.e.a(bVar).b("app_link_opt_install_switch") == 1;
    }

    public static boolean a(com.ss.android.downloadad.api.a.b bVar) {
        return com.ss.android.downloadlib.g.e.a(bVar).b("app_link_opt_switch") == 1;
    }
}
