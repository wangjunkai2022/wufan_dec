package com.airsaid.pickerviewlibrary.widget.wheelview;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OnItemSelectedRunnable.java */
/* loaded from: classes2.dex */
public final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final WheelView f9392a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(WheelView wheelView) {
        this.f9392a = wheelView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WheelView wheelView = this.f9392a;
        wheelView.f9359d.a(wheelView.getCurrentItem());
    }
}
