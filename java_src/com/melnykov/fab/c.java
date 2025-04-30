package com.melnykov.fab;

import androidx.recyclerview.widget.RecyclerView;
/* compiled from: RecyclerViewScrollDetector.java */
/* loaded from: classes4.dex */
abstract class c extends RecyclerView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private int f52659a;

    abstract void b();

    abstract void c();

    public void d(int i2) {
        this.f52659a = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i2, int i4) {
        if (Math.abs(i4) > this.f52659a) {
            if (i4 > 0) {
                c();
            } else {
                b();
            }
        }
    }
}
