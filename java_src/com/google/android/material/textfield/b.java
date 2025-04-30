package com.google.android.material.textfield;

import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CustomEndIconDelegate.java */
/* loaded from: classes2.dex */
public class b extends e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull TextInputLayout textInputLayout, @DrawableRes int i2) {
        super(textInputLayout, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public void a() {
        this.f16105a.setEndIconDrawable(this.f16108d);
        this.f16105a.setEndIconOnClickListener(null);
        this.f16105a.setEndIconOnLongClickListener(null);
    }
}
