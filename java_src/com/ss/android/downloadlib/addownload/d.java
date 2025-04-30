package com.ss.android.downloadlib.addownload;

import android.os.Handler;
import androidx.annotation.NonNull;
import com.ss.android.downloadlib.addownload.e;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CleanSpaceHelper.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private Handler f57229a;

    /* renamed from: b  reason: collision with root package name */
    private com.ss.android.downloadlib.addownload.b.e f57230b;

    /* renamed from: c  reason: collision with root package name */
    private AtomicBoolean f57231c = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private AtomicBoolean f57232d = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Handler handler) {
        this.f57229a = handler;
    }

    public static long b() {
        if (j.l() != null) {
            return j.l().a();
        }
        return 0L;
    }

    static /* synthetic */ long c() {
        return d();
    }

    private static long d() {
        return com.ss.android.downloadlib.g.l.a(0L);
    }

    private void b(com.ss.android.downloadad.api.a.b bVar, JSONObject jSONObject, long j4, long j5) {
        bVar.l("1");
        com.ss.android.downloadlib.addownload.b.i.a().a(bVar);
        try {
            jSONObject.putOpt("quite_clean_size", Long.valueOf(j5 - j4));
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        com.ss.android.downloadlib.d.a.a().a("cleanspace_download_after_quite_clean", jSONObject, bVar);
    }

    public void a(com.ss.android.downloadlib.addownload.b.e eVar) {
        this.f57230b = eVar;
    }

    public boolean a() {
        return this.f57232d.get();
    }

    public void a(boolean z3) {
        this.f57232d.set(z3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final int i2, final long j4, long j5, final e.a aVar) {
        this.f57232d.set(false);
        if (aVar == null) {
            return;
        }
        if (com.ss.android.downloadlib.g.e.f(i2) && com.ss.android.downloadlib.g.e.e(i2)) {
            long c4 = com.ss.android.downloadlib.g.e.c(i2);
            this.f57231c.set(false);
            final String downloadUrl = this.f57230b.f57140b.getDownloadUrl();
            com.ss.android.downloadad.api.a.b b4 = com.ss.android.downloadlib.addownload.b.f.a().b(downloadUrl);
            if (b4 == null) {
                com.ss.android.downloadlib.addownload.b.e eVar = this.f57230b;
                b4 = new com.ss.android.downloadad.api.a.b(eVar.f57140b, eVar.f57141c, eVar.f57142d, 0);
                com.ss.android.downloadlib.addownload.b.f.a().a(b4);
            }
            final com.ss.android.downloadad.api.a.b bVar = b4;
            bVar.e(false);
            if (j.l() != null) {
                j.l().a(bVar.b());
            }
            com.ss.android.downloadlib.addownload.c.d.a().a(bVar.a());
            boolean d4 = com.ss.android.downloadlib.g.e.d(i2);
            if (j5 > 0) {
                a(i2, downloadUrl, j5, bVar, j4, aVar);
            } else if (d4) {
                a(downloadUrl, bVar, new e.b() { // from class: com.ss.android.downloadlib.addownload.d.1
                    @Override // com.ss.android.downloadlib.addownload.e.b
                    public void a(long j6) {
                        d.this.a(i2, downloadUrl, j6, bVar, j4, aVar);
                    }
                });
            } else {
                c4 = 0;
            }
            this.f57229a.postDelayed(new Runnable() { // from class: com.ss.android.downloadlib.addownload.d.2
                @Override // java.lang.Runnable
                public void run() {
                    if (d.this.f57231c.get()) {
                        return;
                    }
                    d.this.f57231c.set(true);
                    aVar.a();
                }
            }, c4);
            return;
        }
        aVar.a();
    }

    private void a(String str, com.ss.android.downloadad.api.a.b bVar, final e.b bVar2) {
        if (bVar2 == null) {
            return;
        }
        com.ss.android.socialbase.downloader.network.a.b.a(str, new com.ss.android.socialbase.downloader.network.j() { // from class: com.ss.android.downloadlib.addownload.d.3
            @Override // com.ss.android.socialbase.downloader.network.j
            public void a(Map<String, String> map) {
                if (d.this.f57231c.get()) {
                    return;
                }
                d.this.f57231c.set(true);
                long a4 = d.this.a(map);
                if (a4 > 0) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.putOpt("apk_size", Long.valueOf(a4));
                        jSONObject.putOpt("available_space", Long.valueOf(d.c()));
                    } catch (JSONException e4) {
                        e4.printStackTrace();
                    }
                }
                bVar2.a(a4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            try {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String value = entry.getValue();
                    if ("content-length".equalsIgnoreCase(entry.getKey())) {
                        return Long.parseLong(value);
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, String str, long j4, final com.ss.android.downloadad.api.a.b bVar, long j5, final e.a aVar) {
        this.f57231c.set(true);
        boolean z3 = false;
        if (j4 > 0) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("apk_size", Long.valueOf(j4));
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
            double d4 = j4;
            Double.isNaN(d4);
            long longValue = (Double.valueOf((com.ss.android.downloadlib.g.e.a(i2) + 1.0d) * d4).longValue() + com.ss.android.downloadlib.g.e.b(i2)) - j5;
            long d5 = d();
            if (d5 < longValue) {
                a(bVar, jSONObject, longValue, d5);
                a(bVar);
                long d6 = d();
                if (d6 < longValue) {
                    bVar.d(true);
                    final String a4 = bVar.a();
                    com.ss.android.downloadlib.addownload.c.d.a().a(a4, new com.ss.android.downloadlib.addownload.c.e() { // from class: com.ss.android.downloadlib.addownload.d.4
                    });
                    z3 = a(i2, bVar, str, longValue);
                    if (z3) {
                        bVar.e(true);
                    }
                } else {
                    b(bVar, jSONObject, d5, d6);
                }
            }
        }
        if (z3) {
            return;
        }
        this.f57229a.post(new Runnable() { // from class: com.ss.android.downloadlib.addownload.d.5
            @Override // java.lang.Runnable
            public void run() {
                aVar.a();
            }
        });
    }

    private boolean a(int i2, @NonNull com.ss.android.downloadad.api.a.b bVar, String str, long j4) {
        if (com.ss.android.downloadlib.g.e.f(i2)) {
            if (j.l() != null) {
                return j.l().a(i2, str, true, j4);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("show_dialog_result", 3);
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
            com.ss.android.downloadlib.d.a.a().a("cleanspace_window_show", jSONObject, bVar);
            return false;
        }
        return false;
    }

    public static boolean a(final DownloadInfo downloadInfo, long j4) {
        int id = downloadInfo.getId();
        boolean z3 = false;
        if (com.ss.android.downloadlib.g.e.f(id)) {
            if (j.l() != null && (z3 = j.l().a(id, downloadInfo.getUrl(), false, j4))) {
                com.ss.android.downloadlib.addownload.c.d.a().a(downloadInfo.getUrl(), new com.ss.android.downloadlib.addownload.c.e() { // from class: com.ss.android.downloadlib.addownload.d.6
                });
            }
            return z3;
        }
        return false;
    }

    public static JSONObject a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("clean_space_install_params", str);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    public static void a(int i2) {
        if (com.ss.android.downloadlib.g.e.f(i2) && j.l() != null && j.l().b()) {
            j.l().c();
        }
    }

    private static void a(com.ss.android.downloadad.api.a.b bVar) {
        long d4 = d();
        if (j.l() != null) {
            j.l().e();
        }
        com.ss.android.downloadlib.addownload.c.c.a();
        com.ss.android.downloadlib.addownload.c.c.b();
        if (com.ss.android.downloadlib.g.e.g(bVar.s())) {
            com.ss.android.downloadlib.addownload.c.c.a(j.getContext());
        }
        long d5 = d();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("quite_clean_size", Long.valueOf(d5 - d4));
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        com.ss.android.downloadlib.d.a.a().a("clean_quite_finish", jSONObject, bVar);
    }

    private void a(com.ss.android.downloadad.api.a.b bVar, JSONObject jSONObject, long j4, long j5) {
        try {
            jSONObject.putOpt("available_space", Long.valueOf(j5));
            jSONObject.putOpt("apk_download_need_size", Long.valueOf(j4));
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        com.ss.android.downloadlib.d.a.a().a("clean_space_no_enough_for_download", jSONObject, bVar);
    }
}
