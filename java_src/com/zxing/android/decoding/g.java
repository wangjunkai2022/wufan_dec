package com.zxing.android.decoding;

import android.app.Activity;
import android.content.DialogInterface;
/* compiled from: FinishListener.java */
/* loaded from: classes3.dex */
public final class g implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener, Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f65078a;

    public g(Activity activity) {
        this.f65078a = activity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        run();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        run();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f65078a.finish();
    }
}
