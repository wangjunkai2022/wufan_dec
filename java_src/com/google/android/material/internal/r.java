package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
/* compiled from: ViewGroupOverlayApi18.java */
@RequiresApi(18)
/* loaded from: classes2.dex */
class r implements s {

    /* renamed from: a  reason: collision with root package name */
    private final ViewGroupOverlay f15213a;

    r(@NonNull ViewGroup viewGroup) {
        this.f15213a = viewGroup.getOverlay();
    }

    @Override // com.google.android.material.internal.v
    public void add(@NonNull Drawable drawable) {
        this.f15213a.add(drawable);
    }

    @Override // com.google.android.material.internal.v
    public void remove(@NonNull Drawable drawable) {
        this.f15213a.remove(drawable);
    }

    @Override // com.google.android.material.internal.s
    public void add(@NonNull View view) {
        this.f15213a.add(view);
    }

    @Override // com.google.android.material.internal.s
    public void remove(@NonNull View view) {
        this.f15213a.remove(view);
    }
}
