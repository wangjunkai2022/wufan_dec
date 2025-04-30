package com.ss.android.socialbase.downloader.i;
/* compiled from: DownloadStenographer.java */
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private a f58244a;

    /* renamed from: b  reason: collision with root package name */
    private a f58245b;

    /* renamed from: c  reason: collision with root package name */
    private int f58246c;

    /* renamed from: d  reason: collision with root package name */
    private int f58247d = 10;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DownloadStenographer.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f58248a;

        /* renamed from: b  reason: collision with root package name */
        long f58249b;

        /* renamed from: c  reason: collision with root package name */
        a f58250c;

        /* renamed from: d  reason: collision with root package name */
        a f58251d;

        private a() {
        }
    }

    public boolean a(long j4, long j5) {
        synchronized (this) {
            a aVar = this.f58244a;
            if (aVar != null) {
                if (j4 >= aVar.f58248a && j5 >= aVar.f58249b) {
                    a aVar2 = aVar.f58250c;
                    if (aVar2 != null && j5 - aVar2.f58249b < 1000) {
                        aVar.f58248a = j4;
                        aVar.f58249b = j5;
                        return true;
                    }
                }
                return false;
            }
            a a4 = a();
            a4.f58248a = j4;
            a4.f58249b = j5;
            if (aVar != null) {
                a4.f58250c = aVar;
                aVar.f58251d = a4;
            }
            this.f58244a = a4;
            return true;
        }
    }

    public long b(long j4, long j5) {
        synchronized (this) {
            a aVar = this.f58244a;
            if (aVar == null) {
                return -1L;
            }
            a a4 = a(j4);
            if (a4 == null) {
                return -1L;
            }
            long j6 = aVar.f58248a - a4.f58248a;
            long j7 = j5 - a4.f58249b;
            if (j6 < 0 || j7 <= 0) {
                return -1L;
            }
            return j6 / j7;
        }
    }

    private a a() {
        a aVar;
        int i2 = this.f58246c;
        if (i2 >= this.f58247d && (aVar = this.f58245b) != null) {
            a aVar2 = aVar.f58251d;
            aVar.f58251d = null;
            this.f58245b = aVar2;
            if (aVar2 != null) {
                aVar2.f58250c = null;
            }
            return aVar;
        }
        this.f58246c = i2 + 1;
        return new a();
    }

    private a a(long j4) {
        a aVar = this.f58244a;
        a aVar2 = null;
        while (aVar != null && aVar.f58249b > j4) {
            aVar2 = aVar;
            aVar = aVar.f58250c;
        }
        return (aVar == null || aVar2 == null || aVar == aVar2 || j4 - aVar.f58249b >= aVar2.f58249b - j4) ? aVar2 : aVar;
    }
}
