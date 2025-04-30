package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: NameCheckDiaog.java */
/* loaded from: classes3.dex */
public class l1 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Context f47783a;

    public l1(Context context) {
        super(context);
        this.f47783a = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.name_check);
    }

    protected l1(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47783a = context;
    }

    public l1(Context context, int i2) {
        super(context, i2);
        this.f47783a = context;
    }
}
