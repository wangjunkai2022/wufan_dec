package com.join.mgps.zxing.view;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
/* compiled from: ViewfinderResultPointCallback.java */
/* loaded from: classes4.dex */
public final class b implements ResultPointCallback {

    /* renamed from: a  reason: collision with root package name */
    private final ViewfinderView f52594a;

    public b(ViewfinderView viewfinderView) {
        this.f52594a = viewfinderView;
    }

    @Override // com.google.zxing.ResultPointCallback
    public void foundPossibleResultPoint(ResultPoint resultPoint) {
        this.f52594a.a(resultPoint);
    }
}
