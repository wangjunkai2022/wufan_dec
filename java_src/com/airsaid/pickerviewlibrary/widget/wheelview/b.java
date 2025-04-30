package com.airsaid.pickerviewlibrary.widget.wheelview;

import android.view.GestureDetector;
import android.view.MotionEvent;
/* compiled from: LoopViewGestureListener.java */
/* loaded from: classes2.dex */
final class b extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a  reason: collision with root package name */
    final WheelView f9387a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(WheelView wheelView) {
        this.f9387a = wheelView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
        this.f9387a.l(f5);
        return true;
    }
}
