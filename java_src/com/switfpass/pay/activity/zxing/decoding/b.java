package com.switfpass.pay.activity.zxing.decoding;

import android.app.Activity;
import android.content.DialogInterface;
/* loaded from: classes4.dex */
public final class b implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f58768a;

    public b(Activity activity) {
        this.f58768a = activity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f58768a.finish();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.f58768a.finish();
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f58768a.finish();
    }
}
