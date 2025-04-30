package com.ss.android.socialbase.downloader.network.a;

import com.ss.android.socialbase.downloader.network.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: FakeDownloadHeadHttpConnection.java */
/* loaded from: classes4.dex */
public class c implements g {

    /* renamed from: e  reason: collision with root package name */
    private static final ArrayList<String> f58504e;

    /* renamed from: a  reason: collision with root package name */
    protected final String f58505a;

    /* renamed from: b  reason: collision with root package name */
    protected final long f58506b;

    /* renamed from: c  reason: collision with root package name */
    protected List<com.ss.android.socialbase.downloader.model.c> f58507c;

    /* renamed from: g  reason: collision with root package name */
    private int f58510g;

    /* renamed from: h  reason: collision with root package name */
    private long f58511h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f58512i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f58513j;

    /* renamed from: k  reason: collision with root package name */
    private g f58514k;

    /* renamed from: f  reason: collision with root package name */
    private Map<String, String> f58509f = null;

    /* renamed from: d  reason: collision with root package name */
    protected final Object f58508d = new Object();

    static {
        ArrayList<String> arrayList = new ArrayList<>(6);
        f58504e = arrayList;
        arrayList.add("Content-Length");
        arrayList.add("Content-Range");
        arrayList.add("Transfer-Encoding");
        arrayList.add("Accept-Ranges");
        arrayList.add("Etag");
        arrayList.add("Content-Disposition");
    }

    public c(String str, List<com.ss.android.socialbase.downloader.model.c> list, long j4) {
        this.f58505a = str;
        this.f58507c = list;
        this.f58506b = j4;
    }

    public void a() throws Exception {
        if (this.f58509f != null) {
            return;
        }
        try {
            this.f58513j = true;
            this.f58514k = com.ss.android.socialbase.downloader.downloader.c.a(this.f58505a, this.f58507c);
            synchronized (this.f58508d) {
                if (this.f58514k != null) {
                    HashMap hashMap = new HashMap();
                    this.f58509f = hashMap;
                    a(this.f58514k, hashMap);
                    this.f58510g = this.f58514k.b();
                    this.f58511h = System.currentTimeMillis();
                    this.f58512i = a(this.f58510g);
                }
                this.f58513j = false;
                this.f58508d.notifyAll();
            }
        } catch (Throwable th) {
            synchronized (this.f58508d) {
                if (this.f58514k != null) {
                    HashMap hashMap2 = new HashMap();
                    this.f58509f = hashMap2;
                    a(this.f58514k, hashMap2);
                    this.f58510g = this.f58514k.b();
                    this.f58511h = System.currentTimeMillis();
                    this.f58512i = a(this.f58510g);
                }
                this.f58513j = false;
                this.f58508d.notifyAll();
                throw th;
            }
        }
    }

    public boolean a(int i2) {
        return i2 >= 200 && i2 < 300;
    }

    @Override // com.ss.android.socialbase.downloader.network.g
    public int b() throws IOException {
        return this.f58510g;
    }

    @Override // com.ss.android.socialbase.downloader.network.g
    public void c() {
        g gVar = this.f58514k;
        if (gVar != null) {
            gVar.c();
        }
    }

    public void d() throws InterruptedException {
        synchronized (this.f58508d) {
            if (this.f58513j && this.f58509f == null) {
                this.f58508d.wait();
            }
        }
    }

    public boolean e() {
        return this.f58512i;
    }

    public boolean f() {
        return System.currentTimeMillis() - this.f58511h < b.f58499b;
    }

    public boolean g() {
        return this.f58513j;
    }

    public List<com.ss.android.socialbase.downloader.model.c> h() {
        return this.f58507c;
    }

    public Map<String, String> i() {
        return this.f58509f;
    }

    private void a(g gVar, Map<String, String> map) {
        if (gVar == null || map == null) {
            return;
        }
        Iterator<String> it2 = f58504e.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            map.put(next, gVar.a(next));
        }
    }

    @Override // com.ss.android.socialbase.downloader.network.g
    public String a(String str) {
        Map<String, String> map = this.f58509f;
        if (map != null) {
            return map.get(str);
        }
        g gVar = this.f58514k;
        if (gVar != null) {
            return gVar.a(str);
        }
        return null;
    }
}
