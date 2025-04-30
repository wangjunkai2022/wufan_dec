package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: APFightClientLoadingDialog.java */
/* loaded from: classes3.dex */
public class a extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47504a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47505b;

    public a(Context context, int i2) {
        super(context, i2);
        this.f47504a = context;
    }

    public void a(String str) {
        TextView textView = this.f47505b;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(this.f47504a).inflate(R.layout.dialog_fight_connect_server, (ViewGroup) null);
        this.f47505b = (TextView) inflate.findViewById(R.id.hint);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setContentView(inflate);
    }

    public a(Context context) {
        super(context);
        this.f47504a = context;
    }
}
