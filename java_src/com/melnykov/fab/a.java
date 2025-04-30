package com.melnykov.fab;

import android.widget.AbsListView;
import androidx.annotation.NonNull;
/* compiled from: AbsListViewScrollDetector.java */
/* loaded from: classes4.dex */
abstract class a implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private int f52649a;

    /* renamed from: b  reason: collision with root package name */
    private int f52650b;

    /* renamed from: c  reason: collision with root package name */
    private AbsListView f52651c;

    /* renamed from: d  reason: collision with root package name */
    private int f52652d;

    private int b() {
        AbsListView absListView = this.f52651c;
        if (absListView == null || absListView.getChildAt(0) == null) {
            return 0;
        }
        return this.f52651c.getChildAt(0).getTop();
    }

    private boolean c(int i2) {
        return i2 == this.f52650b;
    }

    abstract void d();

    abstract void e();

    public void f(@NonNull AbsListView absListView) {
        this.f52651c = absListView;
    }

    public void g(int i2) {
        this.f52652d = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        if (i5 == 0) {
            return;
        }
        if (c(i2)) {
            int b4 = b();
            if (Math.abs(this.f52649a - b4) > this.f52652d) {
                if (this.f52649a > b4) {
                    e();
                } else {
                    d();
                }
            }
            this.f52649a = b4;
            return;
        }
        if (i2 > this.f52650b) {
            e();
        } else {
            d();
        }
        this.f52649a = b();
        this.f52650b = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }
}
