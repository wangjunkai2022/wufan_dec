package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PaiWeiRuleDialog.java */
/* loaded from: classes3.dex */
public class p1 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private TextView f47856a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f47857b;

    /* renamed from: c  reason: collision with root package name */
    private b f47858c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f47859d;

    /* compiled from: PaiWeiRuleDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (p1.this.f47858c != null) {
                p1.this.f47858c.a(p1.this);
            } else {
                p1.this.dismiss();
            }
        }
    }

    /* compiled from: PaiWeiRuleDialog.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(p1 p1Var);

        void b(p1 p1Var);
    }

    public p1(Context context) {
        super(context);
        this.f47859d = false;
    }

    public p1 b(boolean z3) {
        setCancelable(z3);
        return this;
    }

    public p1 c(b bVar) {
        this.f47858c = bVar;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(this.f47859d);
        setContentView(R.layout.paiwei_rule_dialog);
        this.f47856a = (TextView) findViewById(R.id.paiwei_rule_tv);
        ImageView imageView = (ImageView) findViewById(R.id.paiwei_cancel_iv);
        this.f47857b = imageView;
        imageView.setOnClickListener(new a());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getAction() == 0 && this.f47859d) {
            dismiss();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public p1(Context context, int i2) {
        super(context, i2);
        this.f47859d = false;
    }

    protected p1(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47859d = false;
    }
}
