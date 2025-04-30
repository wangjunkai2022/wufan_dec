package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CloudFirstDialog.java */
/* loaded from: classes3.dex */
public class v extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f48000a;

    /* renamed from: b  reason: collision with root package name */
    TextView f48001b;

    /* renamed from: c  reason: collision with root package name */
    TextView f48002c;

    public v(Context context) {
        super(context);
        this.f48000a = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(LayoutInflater.from(this.f48000a).inflate(R.layout.dialog_cloud_first, (ViewGroup) null));
    }

    protected v(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f48000a = context;
    }

    public v(Context context, int i2) {
        super(context, i2);
        this.f48000a = context;
    }
}
