package com.ss.android.socialbase.downloader.network.a;

import com.ss.android.socialbase.downloader.i.f;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* compiled from: DownloadConnectionPool.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected int f58494a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, c> f58495b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, d> f58496c;

    /* compiled from: DownloadConnectionPool.java */
    /* renamed from: com.ss.android.socialbase.downloader.network.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static final class C0334a {

        /* renamed from: a  reason: collision with root package name */
        private static final a f58497a = new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, c cVar) {
        synchronized (this.f58495b) {
            this.f58495b.put(str, cVar);
        }
    }

    public d b(String str, List<com.ss.android.socialbase.downloader.model.c> list) {
        d remove;
        synchronized (this.f58496c) {
            remove = this.f58496c.remove(str);
        }
        if (remove != null) {
            if (f.a(remove.f(), list)) {
                try {
                    remove.e();
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
                if (remove.h() && remove.g()) {
                    return remove;
                }
            }
            try {
                remove.d();
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    private a() {
        this.f58495b = new HashMap();
        this.f58496c = new LinkedHashMap(3);
        this.f58494a = 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        this.f58494a = i2;
    }

    public c a(String str, List<com.ss.android.socialbase.downloader.model.c> list) {
        c remove;
        synchronized (this.f58495b) {
            remove = this.f58495b.remove(str);
        }
        if (remove != null) {
            if (f.a(remove.h(), list)) {
                try {
                    remove.d();
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
                if (remove.f() && remove.e()) {
                    return remove;
                }
            }
            try {
                remove.c();
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public boolean a(String str) {
        c cVar = this.f58495b.get(str);
        if (cVar != null) {
            if (cVar.g()) {
                return true;
            }
            return cVar.f() && cVar.e();
        }
        return false;
    }

    public static a a() {
        return C0334a.f58497a;
    }
}
