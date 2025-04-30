package com.tencent.bugly.crashreport.crash;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class a implements Comparable<a> {

    /* renamed from: a  reason: collision with root package name */
    public long f59454a = -1;

    /* renamed from: b  reason: collision with root package name */
    public long f59455b = -1;

    /* renamed from: c  reason: collision with root package name */
    public String f59456c = null;

    /* renamed from: d  reason: collision with root package name */
    public boolean f59457d = false;

    /* renamed from: e  reason: collision with root package name */
    public boolean f59458e = false;

    /* renamed from: f  reason: collision with root package name */
    public int f59459f = 0;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(a aVar) {
        a aVar2 = aVar;
        if (aVar2 != null) {
            long j4 = this.f59455b - aVar2.f59455b;
            if (j4 <= 0) {
                return j4 < 0 ? -1 : 0;
            }
            return 1;
        }
        return 1;
    }
}
