package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: WifiFightMismatchDialog.java */
/* loaded from: classes3.dex */
public class c2 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47590a;

    /* renamed from: b  reason: collision with root package name */
    Button f47591b;

    /* renamed from: c  reason: collision with root package name */
    ImageView f47592c;

    /* renamed from: d  reason: collision with root package name */
    String f47593d;

    /* renamed from: e  reason: collision with root package name */
    String f47594e;

    /* renamed from: f  reason: collision with root package name */
    TextView f47595f;

    /* renamed from: g  reason: collision with root package name */
    TextView f47596g;

    /* compiled from: WifiFightMismatchDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c2.this.dismiss();
        }
    }

    /* compiled from: WifiFightMismatchDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c2.this.dismiss();
            ((Activity) c2.this.f47590a).finish();
        }
    }

    public c2(Context context, int i2, String str, String str2) {
        super(context, i2);
        this.f47590a = context;
        this.f47593d = str;
        this.f47594e = str2;
    }

    public void a(int i2) {
        this.f47591b.setVisibility(i2);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View inflate = LayoutInflater.from(this.f47590a).inflate(R.layout.dialog_fight_mismatch, (ViewGroup) null);
        this.f47591b = (Button) inflate.findViewById(R.id.cancel);
        this.f47592c = (ImageView) inflate.findViewById(R.id.back);
        TextView textView = (TextView) inflate.findViewById(R.id.info);
        this.f47596g = textView;
        this.f47596g.setText(textView.getText().toString().replace("$1", this.f47594e));
        this.f47591b.setOnClickListener(new a());
        this.f47592c.setOnClickListener(new b());
        setContentView(inflate);
    }

    public c2(Context context) {
        super(context);
        this.f47590a = context;
    }
}
