package com.zxing.android.view;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
/* compiled from: ViewfinderResultPointCallback.java */
/* loaded from: classes3.dex */
public final class a implements ResultPointCallback {

    /* renamed from: a  reason: collision with root package name */
    private final ViewfinderView f65128a;

    public a(ViewfinderView viewfinderView) {
        this.f65128a = viewfinderView;
    }

    @Override // com.google.zxing.ResultPointCallback
    public void foundPossibleResultPoint(ResultPoint resultPoint) {
        this.f65128a.a(resultPoint);
    }
}
