package com.google.android.material.internal;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewGroupOverlayApi14.java */
/* loaded from: classes2.dex */
public class q extends t implements s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    static q b(ViewGroup viewGroup) {
        return (q) t.a(viewGroup);
    }

    @Override // com.google.android.material.internal.s
    public void add(@NonNull View view) {
        this.f15214a.b(view);
    }

    @Override // com.google.android.material.internal.s
    public void remove(@NonNull View view) {
        this.f15214a.h(view);
    }
}
