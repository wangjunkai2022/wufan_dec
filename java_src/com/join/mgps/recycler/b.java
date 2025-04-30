package com.join.mgps.recycler;

import androidx.recyclerview.widget.GridLayoutManager;
/* compiled from: HeaderSpanSizeLookup.java */
/* loaded from: classes4.dex */
public class b extends GridLayoutManager.SpanSizeLookup {

    /* renamed from: a  reason: collision with root package name */
    private a f51486a;

    /* renamed from: b  reason: collision with root package name */
    private int f51487b;

    public b(a aVar, int i2) {
        this.f51487b = 1;
        this.f51486a = aVar;
        this.f51487b = i2;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
    public int getSpanSize(int i2) {
        if (this.f51486a.g(i2) || this.f51486a.f(i2)) {
            return this.f51487b;
        }
        return 1;
    }
}
