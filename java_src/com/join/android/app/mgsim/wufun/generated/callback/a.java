package com.join.android.app.mgsim.wufun.generated.callback;

import android.view.View;
/* compiled from: OnClickListener.java */
/* loaded from: classes3.dex */
public final class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final InterfaceC0141a f27358a;

    /* renamed from: b  reason: collision with root package name */
    final int f27359b;

    /* compiled from: OnClickListener.java */
    /* renamed from: com.join.android.app.mgsim.wufun.generated.callback.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0141a {
        void a(int i2, View view);
    }

    public a(InterfaceC0141a interfaceC0141a, int i2) {
        this.f27358a = interfaceC0141a;
        this.f27359b = i2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f27358a.a(this.f27359b, view);
    }
}
