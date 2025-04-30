package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
/* compiled from: ViewOverlayApi18.java */
@RequiresApi(18)
/* loaded from: classes2.dex */
class u implements v {

    /* renamed from: a  reason: collision with root package name */
    private final ViewOverlay f15221a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(@NonNull View view) {
        this.f15221a = view.getOverlay();
    }

    @Override // com.google.android.material.internal.v
    public void add(@NonNull Drawable drawable) {
        this.f15221a.add(drawable);
    }

    @Override // com.google.android.material.internal.v
    public void remove(@NonNull Drawable drawable) {
        this.f15221a.remove(drawable);
    }
}
