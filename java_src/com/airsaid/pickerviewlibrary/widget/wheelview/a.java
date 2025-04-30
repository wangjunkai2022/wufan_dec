package com.airsaid.pickerviewlibrary.widget.wheelview;

import java.util.TimerTask;
/* compiled from: InertiaTimerTask.java */
/* loaded from: classes2.dex */
final class a extends TimerTask {

    /* renamed from: a  reason: collision with root package name */
    float f9384a = 2.14748365E9f;

    /* renamed from: b  reason: collision with root package name */
    final float f9385b;

    /* renamed from: c  reason: collision with root package name */
    final WheelView f9386c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(WheelView wheelView, float f4) {
        this.f9386c = wheelView;
        this.f9385b = f4;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.f9384a == 2.14748365E9f) {
            if (Math.abs(this.f9385b) > 2000.0f) {
                if (this.f9385b > 0.0f) {
                    this.f9384a = 2000.0f;
                } else {
                    this.f9384a = -2000.0f;
                }
            } else {
                this.f9384a = this.f9385b;
            }
        }
        if (Math.abs(this.f9384a) >= 0.0f && Math.abs(this.f9384a) <= 20.0f) {
            this.f9386c.a();
            this.f9386c.f9357b.sendEmptyMessage(2000);
            return;
        }
        int i2 = (int) ((this.f9384a * 10.0f) / 1000.0f);
        WheelView wheelView = this.f9386c;
        wheelView.f9380w -= i2;
        if (!wheelView.f9376s) {
            float f4 = wheelView.f9371o;
            float f5 = (-wheelView.f9381x) * f4;
            WheelView wheelView2 = this.f9386c;
            float itemsCount = ((wheelView.getItemsCount() - 1) - wheelView2.f9381x) * f4;
            int i4 = wheelView2.f9380w;
            double d4 = i4;
            double d5 = f4;
            Double.isNaN(d5);
            double d6 = d5 * 0.3d;
            Double.isNaN(d4);
            if (d4 - d6 < f5) {
                f5 = i2 + i4;
            } else {
                double d7 = i4;
                Double.isNaN(d7);
                if (d7 + d6 > itemsCount) {
                    itemsCount = i2 + i4;
                }
            }
            if (i4 <= f5) {
                this.f9384a = 40.0f;
                wheelView2.f9380w = (int) f5;
            } else if (i4 >= itemsCount) {
                wheelView2.f9380w = (int) itemsCount;
                this.f9384a = -40.0f;
            }
        }
        float f6 = this.f9384a;
        if (f6 < 0.0f) {
            this.f9384a = f6 + 20.0f;
        } else {
            this.f9384a = f6 - 20.0f;
        }
        this.f9386c.f9357b.sendEmptyMessage(1000);
    }
}
