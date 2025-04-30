package com.ss.android.socialbase.downloader.i;

import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: LruCache.java */
/* loaded from: classes4.dex */
public class h<K, T> extends LinkedHashMap<K, T> {

    /* renamed from: a  reason: collision with root package name */
    private int f58323a;

    public h() {
        this(4, 4);
    }

    public void a(int i2) {
        this.f58323a = i2;
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry<K, T> entry) {
        return size() > this.f58323a;
    }

    public h(int i2, int i4) {
        this(i2, i4, true);
    }

    public h(int i2, int i4, boolean z3) {
        super(i2, 0.75f, z3);
        a(i4);
    }
}
