package com.airsaid.pickerviewlibrary.widget.wheelview;

import java.util.TimerTask;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SmoothScrollTimerTask.java */
/* loaded from: classes2.dex */
public final class e extends TimerTask {

    /* renamed from: a  reason: collision with root package name */
    int f9393a = Integer.MAX_VALUE;

    /* renamed from: b  reason: collision with root package name */
    int f9394b = 0;

    /* renamed from: c  reason: collision with root package name */
    int f9395c;

    /* renamed from: d  reason: collision with root package name */
    final WheelView f9396d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(WheelView wheelView, int i2) {
        this.f9396d = wheelView;
        this.f9395c = i2;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.f9393a == Integer.MAX_VALUE) {
            this.f9393a = this.f9395c;
        }
        int i2 = this.f9393a;
        int i4 = (int) (i2 * 0.1f);
        this.f9394b = i4;
        if (i4 == 0) {
            if (i2 < 0) {
                this.f9394b = -1;
            } else {
                this.f9394b = 1;
            }
        }
        if (Math.abs(i2) <= 1) {
            this.f9396d.a();
            this.f9396d.f9357b.sendEmptyMessage(3000);
            return;
        }
        WheelView wheelView = this.f9396d;
        wheelView.f9380w += this.f9394b;
        if (!wheelView.f9376s) {
            float f4 = wheelView.f9371o;
            float f5 = (-wheelView.f9381x) * f4;
            WheelView wheelView2 = this.f9396d;
            float itemsCount = ((wheelView.getItemsCount() - 1) - wheelView2.f9381x) * f4;
            int i5 = wheelView2.f9380w;
            if (i5 <= f5 || i5 >= itemsCount) {
                wheelView2.f9380w = i5 - this.f9394b;
                wheelView2.a();
                this.f9396d.f9357b.sendEmptyMessage(3000);
                return;
            }
        }
        this.f9396d.f9357b.sendEmptyMessage(1000);
        this.f9393a -= this.f9394b;
    }
}
