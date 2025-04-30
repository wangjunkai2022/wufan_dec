package com.melnykov.fab;

import android.widget.ScrollView;
import com.melnykov.fab.ObservableScrollView;
/* compiled from: ScrollViewScrollDetector.java */
/* loaded from: classes4.dex */
abstract class e implements ObservableScrollView.a {

    /* renamed from: a  reason: collision with root package name */
    private int f52660a;

    /* renamed from: b  reason: collision with root package name */
    private int f52661b;

    @Override // com.melnykov.fab.ObservableScrollView.a
    public void a(ScrollView scrollView, int i2, int i4, int i5, int i6) {
        if (Math.abs(i4 - this.f52660a) > this.f52661b) {
            if (i4 > this.f52660a) {
                c();
            } else {
                b();
            }
        }
        this.f52660a = i4;
    }

    abstract void b();

    abstract void c();

    public void d(int i2) {
        this.f52661b = i2;
    }
}
