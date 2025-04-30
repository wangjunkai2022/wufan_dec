package com.ss.android.socialbase.downloader.model;

import android.text.TextUtils;
import com.ss.android.socialbase.downloader.i.f;
import com.ss.android.socialbase.downloader.network.g;
import java.io.IOException;
/* compiled from: HttpResponse.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final String f58486a;

    /* renamed from: b  reason: collision with root package name */
    public final g f58487b;

    /* renamed from: c  reason: collision with root package name */
    public final int f58488c;

    /* renamed from: d  reason: collision with root package name */
    private long f58489d;

    /* renamed from: e  reason: collision with root package name */
    private long f58490e;

    public d(String str, g gVar) throws IOException {
        this.f58486a = str;
        this.f58488c = gVar.b();
        this.f58487b = gVar;
    }

    public boolean a() {
        return f.c(this.f58488c);
    }

    public boolean b() {
        return f.a(this.f58488c, this.f58487b.a("Accept-Ranges"));
    }

    public String c() {
        return this.f58487b.a("Etag");
    }

    public String d() {
        return this.f58487b.a("Content-Type");
    }

    public String e() {
        return f.b(this.f58487b, "Content-Range");
    }

    public String f() {
        String b4 = f.b(this.f58487b, "last-modified");
        return TextUtils.isEmpty(b4) ? f.b(this.f58487b, "Last-Modified") : b4;
    }

    public String g() {
        return f.b(this.f58487b, "Cache-Control");
    }

    public long h() {
        if (this.f58489d <= 0) {
            this.f58489d = f.a(this.f58487b);
        }
        return this.f58489d;
    }

    public boolean i() {
        if (com.ss.android.socialbase.downloader.i.a.a(8)) {
            return f.c(this.f58487b);
        }
        return f.b(h());
    }

    public long j() {
        if (this.f58490e <= 0) {
            if (!i()) {
                String e4 = e();
                if (!TextUtils.isEmpty(e4)) {
                    this.f58490e = f.b(e4);
                }
            } else {
                this.f58490e = -1L;
            }
        }
        return this.f58490e;
    }

    public long k() {
        return f.i(g());
    }
}
