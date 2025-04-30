package com.google.android.material.resources;

import android.graphics.Typeface;
import androidx.annotation.RestrictTo;
/* compiled from: CancelableFontCallback.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final Typeface f15481a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0112a f15482b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15483c;

    /* compiled from: CancelableFontCallback.java */
    /* renamed from: com.google.android.material.resources.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0112a {
        void a(Typeface typeface);
    }

    public a(InterfaceC0112a interfaceC0112a, Typeface typeface) {
        this.f15481a = typeface;
        this.f15482b = interfaceC0112a;
    }

    private void d(Typeface typeface) {
        if (this.f15483c) {
            return;
        }
        this.f15482b.a(typeface);
    }

    @Override // com.google.android.material.resources.f
    public void a(int i2) {
        d(this.f15481a);
    }

    @Override // com.google.android.material.resources.f
    public void b(Typeface typeface, boolean z3) {
        d(typeface);
    }

    public void c() {
        this.f15483c = true;
    }
}
