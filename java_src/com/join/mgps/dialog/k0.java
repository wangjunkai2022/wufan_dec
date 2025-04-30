package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FightCreateServerDialog.java */
/* loaded from: classes3.dex */
public class k0 extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47767a;

    public k0(Context context, int i2) {
        super(context, i2);
        this.f47767a = context;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(this.f47767a).inflate(R.layout.dialog_fight_create_server, (ViewGroup) null);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setContentView(inflate);
    }

    public k0(Context context) {
        super(context);
        this.f47767a = context;
    }
}
