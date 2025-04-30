package com.ss.android.socialbase.downloader.f;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Segment.java */
/* loaded from: classes4.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    volatile m f58096a;

    /* renamed from: b  reason: collision with root package name */
    int f58097b;

    /* renamed from: c  reason: collision with root package name */
    private final long f58098c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicLong f58099d;

    /* renamed from: e  reason: collision with root package name */
    private volatile long f58100e;

    /* renamed from: f  reason: collision with root package name */
    private long f58101f;

    /* renamed from: g  reason: collision with root package name */
    private int f58102g;

    /* renamed from: h  reason: collision with root package name */
    private JSONObject f58103h;

    public i(long j4, long j5) {
        AtomicLong atomicLong = new AtomicLong();
        this.f58099d = atomicLong;
        this.f58097b = 0;
        this.f58098c = j4;
        atomicLong.set(j4);
        this.f58100e = j4;
        if (j5 >= j4) {
            this.f58101f = j5;
        } else {
            this.f58101f = -1L;
        }
    }

    public long a() {
        return this.f58099d.get() - this.f58098c;
    }

    public long b() {
        long j4 = this.f58101f;
        if (j4 >= this.f58098c) {
            return (j4 - e()) + 1;
        }
        return -1L;
    }

    public long c() {
        return this.f58098c;
    }

    public long d() {
        long j4 = this.f58099d.get();
        long j5 = this.f58101f;
        if (j5 > 0) {
            long j6 = j5 + 1;
            if (j4 > j6) {
                return j6;
            }
        }
        return j4;
    }

    public long e() {
        m mVar = this.f58096a;
        if (mVar != null) {
            long d4 = mVar.d();
            if (d4 > this.f58100e) {
                return d4;
            }
        }
        return this.f58100e;
    }

    public long f() {
        return this.f58101f;
    }

    public int g() {
        return this.f58102g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        this.f58097b++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        this.f58097b--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        return this.f58097b;
    }

    public JSONObject k() throws JSONException {
        JSONObject jSONObject = this.f58103h;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
            this.f58103h = jSONObject;
        }
        jSONObject.put("st", c());
        jSONObject.put("cu", d());
        jSONObject.put("en", f());
        return jSONObject;
    }

    public String toString() {
        return "Segment{startOffset=" + this.f58098c + ",\t currentOffset=" + this.f58099d + ",\t currentOffsetRead=" + e() + ",\t endOffset=" + this.f58101f + '}';
    }

    public void a(long j4) {
        long j5 = this.f58098c;
        if (j4 < j5) {
            j4 = j5;
        }
        long j6 = this.f58101f;
        if (j6 > 0) {
            long j7 = j6 + 1;
            if (j4 > j7) {
                j4 = j7;
            }
        }
        this.f58099d.set(j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(long j4) {
        if (j4 >= this.f58098c) {
            this.f58101f = j4;
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("setEndOffset: endOffset = ");
        sb.append(j4);
        sb.append(", segment = ");
        sb.append(this);
        if (j4 == -1) {
            this.f58101f = j4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(long j4) {
        this.f58099d.addAndGet(j4);
    }

    public void d(long j4) {
        if (j4 >= this.f58099d.get()) {
            this.f58100e = j4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i2) {
        this.f58097b = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        this.f58102g = i2;
    }

    public static String a(List<i> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        Collections.sort(list, new Comparator<i>() { // from class: com.ss.android.socialbase.downloader.f.i.1
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(i iVar, i iVar2) {
                return (int) (iVar.c() - iVar2.c());
            }
        });
        StringBuilder sb = new StringBuilder();
        for (i iVar : list) {
            sb.append(iVar);
            sb.append("\r\n");
        }
        return sb.toString();
    }

    public i(i iVar) {
        AtomicLong atomicLong = new AtomicLong();
        this.f58099d = atomicLong;
        this.f58097b = 0;
        this.f58098c = iVar.f58098c;
        this.f58101f = iVar.f58101f;
        atomicLong.set(iVar.f58099d.get());
        this.f58100e = atomicLong.get();
        this.f58102g = iVar.f58102g;
    }

    public i(JSONObject jSONObject) {
        this.f58099d = new AtomicLong();
        this.f58097b = 0;
        this.f58098c = jSONObject.optLong("st");
        c(jSONObject.optLong("en"));
        a(jSONObject.optLong("cu"));
        d(d());
    }
}
