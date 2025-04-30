package com.google.android.material.textfield;

import android.content.Context;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.internal.CheckableImageButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EndIconDelegate.java */
/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    TextInputLayout f16105a;

    /* renamed from: b  reason: collision with root package name */
    Context f16106b;

    /* renamed from: c  reason: collision with root package name */
    CheckableImageButton f16107c;
    @DrawableRes

    /* renamed from: d  reason: collision with root package name */
    final int f16108d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@NonNull TextInputLayout textInputLayout, @DrawableRes int i2) {
        this.f16105a = textInputLayout;
        this.f16106b = textInputLayout.getContext();
        this.f16107c = textInputLayout.getEndIconView();
        this.f16108d = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(int i2) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(boolean z3) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return false;
    }
}
