package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LodingDialog.java */
/* loaded from: classes3.dex */
public class x0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    boolean f48060a;

    /* renamed from: b  reason: collision with root package name */
    String f48061b;

    /* renamed from: c  reason: collision with root package name */
    TextView f48062c;

    protected x0(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f48060a = false;
    }

    public Dialog a(String str) {
        TextView textView = this.f48062c;
        if (textView != null) {
            textView.setText(str);
        }
        this.f48061b = str;
        return this;
    }

    public void b() {
        try {
            if (isShowing()) {
                return;
            }
            show();
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.loding_layout);
        setCancelable(this.f48060a);
        this.f48062c = (TextView) findViewById(R.id.textView);
        if (TextUtils.isEmpty(this.f48061b)) {
            return;
        }
        this.f48062c.setText(this.f48061b);
    }

    public x0(Context context) {
        super(context);
        this.f48060a = false;
    }

    public x0(Context context, int i2) {
        super(context, i2);
        this.f48060a = false;
    }

    public x0(Context context, int i2, boolean z3) {
        super(context, i2);
        this.f48060a = false;
        this.f48060a = z3;
    }

    public x0(Context context, int i2, String str) {
        super(context, i2);
        this.f48060a = false;
        this.f48060a = false;
        this.f48061b = str;
    }

    public x0(Context context, int i2, String str, boolean z3) {
        super(context, i2);
        this.f48060a = false;
        this.f48060a = z3;
        this.f48061b = str;
    }
}
