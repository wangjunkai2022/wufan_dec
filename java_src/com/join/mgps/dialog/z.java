package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CloudPassDialog.java */
/* loaded from: classes3.dex */
public class z extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f48112a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f48113b;

    /* renamed from: c  reason: collision with root package name */
    TextView f48114c;

    /* renamed from: d  reason: collision with root package name */
    TextView f48115d;

    /* renamed from: e  reason: collision with root package name */
    TextView f48116e;

    public z(Context context) {
        super(context);
        this.f48112a = context;
    }

    public void a(String str) {
        this.f48114c.setText(str);
    }

    public void b(int i2) {
        this.f48114c.setVisibility(i2);
    }

    public void c(int i2) {
        this.f48113b.setImageResource(i2);
    }

    public void d(String str) {
        this.f48116e.setText(str);
    }

    public void e(View.OnClickListener onClickListener) {
        this.f48116e.setOnClickListener(onClickListener);
    }

    public void f(String str) {
        this.f48115d.setText(str);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(this.f48112a).inflate(R.layout.dialog_cloud_pass, (ViewGroup) null);
        this.f48113b = (ImageView) inflate.findViewById(R.id.status_icon);
        this.f48114c = (TextView) inflate.findViewById(R.id.per);
        this.f48115d = (TextView) inflate.findViewById(R.id.txt);
        this.f48116e = (TextView) inflate.findViewById(R.id.sub);
        setContentView(inflate);
    }

    protected z(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f48112a = context;
    }

    public z(Context context, int i2) {
        super(context, i2);
        this.f48112a = context;
    }
}
