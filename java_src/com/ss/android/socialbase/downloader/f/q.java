package com.ss.android.socialbase.downloader.f;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.join.mgps.Util.g0;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UrlRecord.java */
/* loaded from: classes4.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    final String f58165a;

    /* renamed from: b  reason: collision with root package name */
    final String f58166b;

    /* renamed from: c  reason: collision with root package name */
    final String f58167c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f58168d;

    /* renamed from: e  reason: collision with root package name */
    private final List<m> f58169e;

    /* renamed from: f  reason: collision with root package name */
    private int f58170f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f58171g;

    /* renamed from: h  reason: collision with root package name */
    private int f58172h;

    /* renamed from: i  reason: collision with root package name */
    private String f58173i;

    /* renamed from: j  reason: collision with root package name */
    private final AtomicLong f58174j;

    public q(String str, boolean z3) {
        this.f58169e = new ArrayList();
        this.f58174j = new AtomicLong();
        this.f58165a = str;
        this.f58168d = z3;
        this.f58166b = null;
        this.f58167c = null;
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            int lastIndexOf = str.lastIndexOf(g0.f27568a);
            if (lastIndexOf <= 0 || lastIndexOf >= str.length()) {
                return null;
            }
            return str.substring(0, lastIndexOf);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private String e() {
        if (this.f58173i == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f58165a);
            sb.append("_");
            String str = this.f58166b;
            if (str == null) {
                str = "";
            }
            sb.append(str);
            sb.append("_");
            sb.append(this.f58168d);
            this.f58173i = sb.toString();
        }
        return this.f58173i;
    }

    public synchronized void b(m mVar) {
        try {
            this.f58169e.remove(mVar);
        } catch (Throwable unused) {
        }
    }

    public synchronized void c() {
        this.f58171g = false;
    }

    public synchronized boolean d() {
        return this.f58171g;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            return e().equals(((q) obj).e());
        }
        return false;
    }

    public int hashCode() {
        if (this.f58172h == 0) {
            this.f58172h = e().hashCode();
        }
        return this.f58172h;
    }

    public String toString() {
        return "UrlRecord{url='" + this.f58165a + "', ip='" + this.f58166b + "', ipFamily='" + this.f58167c + "', isMainUrl=" + this.f58168d + ", failedTimes=" + this.f58170f + ", isCurrentFailed=" + this.f58171g + '}';
    }

    public synchronized void b() {
        this.f58170f++;
        this.f58171g = true;
    }

    public synchronized void a(m mVar) {
        this.f58169e.add(mVar);
    }

    public q(String str, String str2) {
        this.f58169e = new ArrayList();
        this.f58174j = new AtomicLong();
        this.f58165a = str;
        this.f58168d = false;
        this.f58166b = str2;
        this.f58167c = a(str2);
    }

    public synchronized int a() {
        return this.f58169e.size();
    }

    public void a(long j4) {
        this.f58174j.addAndGet(j4);
    }
}
