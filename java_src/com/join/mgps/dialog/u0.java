package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: HandShankDialog.java */
/* loaded from: classes3.dex */
public class u0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47995a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47996b;

    /* renamed from: c  reason: collision with root package name */
    Button f47997c;

    /* renamed from: d  reason: collision with root package name */
    TextView f47998d;

    public u0(Context context, int i2) {
        super(context, i2);
        this.f47995a = context;
    }

    public void a(View.OnClickListener onClickListener) {
        this.f47998d.setOnClickListener(onClickListener);
    }

    public void b(View.OnClickListener onClickListener) {
        this.f47997c.setOnClickListener(onClickListener);
    }

    public void c(String str) {
        this.f47996b.setText(str);
    }

    public u0(Context context) {
        super(context, R.style.dialog_error);
        this.f47995a = context;
        setContentView(LayoutInflater.from(context).inflate(R.layout.dialog_handshank, (ViewGroup) null));
        this.f47996b = (TextView) findViewById(R.id.name_tv);
        this.f47998d = (TextView) findViewById(R.id.cancel_tv);
        this.f47997c = (Button) findViewById(R.id.check_btn);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }
}
