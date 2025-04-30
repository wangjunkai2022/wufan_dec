package com.ss.android.downloadlib.addownload;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.android.download.api.config.m;
import com.ss.android.download.api.config.n;
import com.ss.android.download.api.config.o;
import com.ss.android.download.api.config.p;
import com.ss.android.download.api.config.r;
import com.ss.android.download.api.config.t;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
import org.json.JSONObject;
/* compiled from: GlobalInfo.java */
/* loaded from: classes4.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    public static final JSONObject f57305a = new JSONObject();

    /* renamed from: b  reason: collision with root package name */
    private static Context f57306b;

    /* renamed from: c  reason: collision with root package name */
    private static com.ss.android.download.api.config.f f57307c;

    /* renamed from: d  reason: collision with root package name */
    private static com.ss.android.download.api.config.c f57308d;

    /* renamed from: e  reason: collision with root package name */
    private static com.ss.android.download.api.config.k f57309e;

    /* renamed from: f  reason: collision with root package name */
    private static com.ss.android.download.api.config.g f57310f;

    /* renamed from: g  reason: collision with root package name */
    private static com.ss.android.download.api.config.h f57311g;

    /* renamed from: h  reason: collision with root package name */
    private static com.ss.android.download.api.config.i f57312h;

    /* renamed from: i  reason: collision with root package name */
    private static com.ss.android.download.api.model.a f57313i;

    /* renamed from: j  reason: collision with root package name */
    private static com.ss.android.download.api.config.b f57314j;

    /* renamed from: k  reason: collision with root package name */
    private static com.ss.android.socialbase.appdownloader.c.h f57315k;

    /* renamed from: l  reason: collision with root package name */
    private static com.ss.android.download.api.config.d f57316l;

    /* renamed from: m  reason: collision with root package name */
    private static com.ss.android.download.api.config.e f57317m;

    /* renamed from: n  reason: collision with root package name */
    private static n f57318n;

    /* renamed from: o  reason: collision with root package name */
    private static com.ss.android.download.api.config.j f57319o;

    /* renamed from: p  reason: collision with root package name */
    private static t f57320p;

    /* renamed from: q  reason: collision with root package name */
    private static m f57321q;

    /* renamed from: r  reason: collision with root package name */
    private static com.ss.android.download.api.config.l f57322r;

    /* renamed from: s  reason: collision with root package name */
    private static o f57323s;

    /* renamed from: t  reason: collision with root package name */
    private static com.ss.android.download.api.b.a f57324t;

    /* renamed from: u  reason: collision with root package name */
    private static p f57325u;

    /* renamed from: v  reason: collision with root package name */
    private static r f57326v;

    public static void a(Context context) {
        if (context != null && context.getApplicationContext() != null) {
            f57306b = context.getApplicationContext();
            return;
        }
        throw new IllegalArgumentException("Context is null");
    }

    public static void b(Context context) {
        if (f57306b != null || context == null || context.getApplicationContext() == null) {
            return;
        }
        f57306b = context.getApplicationContext();
    }

    @NonNull
    public static com.ss.android.download.api.config.k c() {
        if (f57309e == null) {
            f57309e = new com.ss.android.download.api.a.a();
        }
        return f57309e;
    }

    public static com.ss.android.download.api.config.g d() {
        return f57310f;
    }

    @NonNull
    public static com.ss.android.download.api.config.h e() {
        if (f57311g == null) {
            f57311g = new com.ss.android.download.api.a.b();
        }
        return f57311g;
    }

    public static com.ss.android.socialbase.appdownloader.c.h f() {
        if (f57315k == null) {
            f57315k = new com.ss.android.socialbase.appdownloader.c.h() { // from class: com.ss.android.downloadlib.addownload.j.2
                @Override // com.ss.android.socialbase.appdownloader.c.h
                public void a(DownloadInfo downloadInfo, BaseException baseException, int i2) {
                }
            };
        }
        return f57315k;
    }

    public static n g() {
        return f57318n;
    }

    public static Context getContext() {
        Context context = f57306b;
        if (context != null) {
            return context;
        }
        throw new IllegalArgumentException("Context is null");
    }

    @NonNull
    public static o h() {
        if (f57323s == null) {
            f57323s = new o() { // from class: com.ss.android.downloadlib.addownload.j.3
                @Override // com.ss.android.download.api.config.o
                public void a(String str, int i2, JSONObject jSONObject) {
                }
            };
        }
        return f57323s;
    }

    @NonNull
    public static JSONObject i() {
        com.ss.android.download.api.config.i iVar = f57312h;
        if (iVar != null && iVar.a() != null) {
            return f57312h.a();
        }
        return f57305a;
    }

    public static com.ss.android.download.api.config.l j() {
        return f57322r;
    }

    @Nullable
    public static com.ss.android.download.api.config.b k() {
        return f57314j;
    }

    @Nullable
    public static m l() {
        return f57321q;
    }

    public static String m() {
        return "1.7.0";
    }

    public static com.ss.android.download.api.config.d n() {
        return f57316l;
    }

    public static com.ss.android.download.api.config.e o() {
        return f57317m;
    }

    public static com.ss.android.download.api.config.j p() {
        return f57319o;
    }

    @NonNull
    public static p q() {
        return f57325u;
    }

    public static t r() {
        return f57320p;
    }

    @NonNull
    public static com.ss.android.download.api.b.a s() {
        if (f57324t == null) {
            f57324t = new com.ss.android.download.api.b.a() { // from class: com.ss.android.downloadlib.addownload.j.4
                @Override // com.ss.android.download.api.b.a
                public void a(Throwable th, String str) {
                }
            };
        }
        return f57324t;
    }

    @NonNull
    public static r t() {
        if (f57326v == null) {
            f57326v = new r() { // from class: com.ss.android.downloadlib.addownload.j.5
                @Override // com.ss.android.download.api.config.r
                public void a(@Nullable Context context, @NonNull DownloadModel downloadModel, @Nullable DownloadController downloadController, @Nullable DownloadEventConfig downloadEventConfig, String str, int i2) {
                }
            };
        }
        return f57326v;
    }

    public static String u() {
        try {
            int i2 = getContext().getApplicationInfo().targetSdkVersion;
            if (Build.VERSION.SDK_INT >= 29 && ((i2 == 29 && !Environment.isExternalStorageLegacy()) || i2 > 29)) {
                return getContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
            }
            return Environment.getExternalStorageDirectory().getPath() + File.separator + i().optString("default_save_dir_name", BaseConstants.DOWNLOAD_DIR);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean v() {
        return (f57307c == null || f57310f == null || f57312h == null || f57314j == null || f57325u == null) ? false : true;
    }

    @NonNull
    public static com.ss.android.download.api.config.c b() {
        if (f57308d == null) {
            f57308d = new com.ss.android.download.api.config.c() { // from class: com.ss.android.downloadlib.addownload.j.1
                @Override // com.ss.android.download.api.config.c
                public void a(@Nullable Context context, @NonNull DownloadModel downloadModel, @Nullable DownloadController downloadController, @Nullable DownloadEventConfig downloadEventConfig) {
                }

                @Override // com.ss.android.download.api.config.c
                public void a(@Nullable Context context, @NonNull DownloadModel downloadModel, @Nullable DownloadController downloadController, @Nullable DownloadEventConfig downloadEventConfig, String str, @NonNull String str2) {
                }
            };
        }
        return f57308d;
    }

    public static void a(@NonNull com.ss.android.download.api.config.f fVar) {
        f57307c = fVar;
    }

    public static void a(@NonNull com.ss.android.download.api.config.k kVar) {
        f57309e = kVar;
    }

    public static void a(@NonNull com.ss.android.download.api.config.g gVar) {
        f57310f = gVar;
    }

    public static void a(@NonNull com.ss.android.download.api.config.h hVar) {
        f57311g = hVar;
    }

    public static void a(@NonNull com.ss.android.download.api.config.i iVar) {
        f57312h = iVar;
    }

    public static void a(@NonNull com.ss.android.download.api.model.a aVar) {
        f57313i = aVar;
    }

    public static void a(@NonNull com.ss.android.download.api.config.b bVar) {
        f57314j = bVar;
    }

    public static com.ss.android.download.api.config.f a() {
        return f57307c;
    }

    public static void a(String str) {
        com.ss.android.socialbase.appdownloader.d.j().a(str);
    }

    public static void a(p pVar) {
        f57325u = pVar;
    }

    public static void a(com.ss.android.download.api.b.a aVar) {
        f57324t = aVar;
    }
}
