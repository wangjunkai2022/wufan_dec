package com.airsaid.pickerviewlibrary.widget.wheelview;

import android.os.Handler;
import android.os.Message;
import com.airsaid.pickerviewlibrary.widget.wheelview.WheelView;
/* compiled from: MessageHandler.java */
/* loaded from: classes2.dex */
final class c extends Handler {

    /* renamed from: b  reason: collision with root package name */
    public static final int f9388b = 1000;

    /* renamed from: c  reason: collision with root package name */
    public static final int f9389c = 2000;

    /* renamed from: d  reason: collision with root package name */
    public static final int f9390d = 3000;

    /* renamed from: a  reason: collision with root package name */
    final WheelView f9391a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(WheelView wheelView) {
        this.f9391a = wheelView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 1000) {
            this.f9391a.invalidate();
        } else if (i2 == 2000) {
            this.f9391a.m(WheelView.ACTION.FLING);
        } else if (i2 != 3000) {
        } else {
            this.f9391a.j();
        }
    }
}
