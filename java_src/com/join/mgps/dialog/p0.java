package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ForumDialog.java */
/* loaded from: classes3.dex */
public class p0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47851a;

    /* renamed from: b  reason: collision with root package name */
    Button f47852b;

    /* renamed from: c  reason: collision with root package name */
    Button f47853c;

    /* renamed from: d  reason: collision with root package name */
    TextView f47854d;

    /* renamed from: e  reason: collision with root package name */
    TextView f47855e;

    public p0(Context context, int i2) {
        super(context, i2);
        this.f47851a = context;
    }

    public p0 a(String str) {
        this.f47855e.setText(str);
        return this;
    }

    public void b(int i2) {
        this.f47855e.setVisibility(i2);
    }

    public p0 c(View.OnClickListener onClickListener) {
        this.f47853c.setOnClickListener(onClickListener);
        return this;
    }

    public void d(String str) {
        this.f47853c.setText(str);
    }

    public p0 e(View.OnClickListener onClickListener) {
        this.f47852b.setOnClickListener(onClickListener);
        return this;
    }

    public void f(String str) {
        this.f47852b.setText(str);
    }

    public p0 g(String str) {
        this.f47854d.setText(str);
        return this;
    }

    public p0(Context context) {
        super(context, R.style.dialog_error);
        this.f47851a = context;
        setContentView(LayoutInflater.from(context).inflate(R.layout.dialog_forum, (ViewGroup) null));
        this.f47852b = (Button) findViewById(R.id.positive_btn);
        this.f47853c = (Button) findViewById(R.id.negative_btn);
        this.f47854d = (TextView) findViewById(R.id.tip_title);
        this.f47855e = (TextView) findViewById(R.id.tip_content);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }
}
