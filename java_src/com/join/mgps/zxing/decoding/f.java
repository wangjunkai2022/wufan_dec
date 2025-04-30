package com.join.mgps.zxing.decoding;

import android.app.Activity;
import android.content.DialogInterface;
/* compiled from: FinishListener.java */
/* loaded from: classes4.dex */
public final class f implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener, Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f52523a;

    public f(Activity activity) {
        this.f52523a = activity;
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
        this.f52523a.finish();
    }
}
