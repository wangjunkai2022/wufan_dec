package com.join.mgps.zxing.view;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
/* compiled from: FaceTransferViewfinderResultPointCallback.java */
/* loaded from: classes4.dex */
public final class a implements ResultPointCallback {

    /* renamed from: a  reason: collision with root package name */
    private final com.zxing.android.view.ViewfinderView f52593a;

    public a(com.zxing.android.view.ViewfinderView viewfinderView) {
        this.f52593a = viewfinderView;
    }

    @Override // com.google.zxing.ResultPointCallback
    public void foundPossibleResultPoint(ResultPoint resultPoint) {
        this.f52593a.a(resultPoint);
    }
}
