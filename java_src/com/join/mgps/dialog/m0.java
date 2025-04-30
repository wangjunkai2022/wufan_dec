package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FightDisconnectDialog2.java */
/* loaded from: classes3.dex */
public class m0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47785a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47786b;

    /* renamed from: c  reason: collision with root package name */
    Button f47787c;

    /* renamed from: d  reason: collision with root package name */
    Button f47788d;

    public m0(Context context, int i2) {
        super(context, i2);
        this.f47785a = context;
    }

    public void a(View.OnClickListener onClickListener) {
        this.f47787c.setOnClickListener(onClickListener);
    }

    public void b(String str) {
        this.f47786b.setText(str);
    }

    public void c(View.OnClickListener onClickListener) {
        this.f47788d.setOnClickListener(onClickListener);
    }

    public void d(String str) {
        this.f47788d.setText(str);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View inflate = LayoutInflater.from(this.f47785a).inflate(R.layout.dialog_invite_fight_error, (ViewGroup) null);
        this.f47786b = (TextView) inflate.findViewById(R.id.info);
        this.f47787c = (Button) inflate.findViewById(R.id.cancel);
        this.f47788d = (Button) inflate.findViewById(R.id.rebuild);
        setContentView(inflate);
    }

    public m0(Context context) {
        super(context);
        this.f47785a = context;
    }
}
