package com.switfpass.pay.activity.zxing.decoding;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.switfpass.pay.activity.zxing.ViewfinderView;
/* loaded from: classes4.dex */
public final class i implements ResultPointCallback {

    /* renamed from: a  reason: collision with root package name */
    private final ViewfinderView f58791a;

    public i(ViewfinderView viewfinderView) {
        this.f58791a = viewfinderView;
    }

    @Override // com.google.zxing.ResultPointCallback
    public final void foundPossibleResultPoint(ResultPoint resultPoint) {
        this.f58791a.a(resultPoint);
    }
}
