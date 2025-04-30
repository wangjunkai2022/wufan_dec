package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CloudShareDialog.java */
/* loaded from: classes3.dex */
public class a0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47506a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47507b;

    /* renamed from: c  reason: collision with root package name */
    TextView f47508c;

    /* renamed from: d  reason: collision with root package name */
    TextView f47509d;

    /* renamed from: e  reason: collision with root package name */
    TextView f47510e;

    /* renamed from: f  reason: collision with root package name */
    TextView f47511f;

    /* renamed from: g  reason: collision with root package name */
    String f47512g;

    /* renamed from: h  reason: collision with root package name */
    String f47513h;

    /* renamed from: i  reason: collision with root package name */
    String f47514i;

    /* renamed from: j  reason: collision with root package name */
    String f47515j;

    /* renamed from: k  reason: collision with root package name */
    String f47516k;

    /* renamed from: l  reason: collision with root package name */
    c f47517l;

    /* renamed from: m  reason: collision with root package name */
    c f47518m;

    /* renamed from: n  reason: collision with root package name */
    CompoundButton.OnCheckedChangeListener f47519n;

    /* compiled from: CloudShareDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0 a0Var = a0.this;
            a0Var.f47517l.a(a0Var);
        }
    }

    /* compiled from: CloudShareDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0 a0Var = a0.this;
            a0Var.f47518m.a(a0Var);
        }
    }

    /* compiled from: CloudShareDialog.java */
    /* loaded from: classes3.dex */
    public interface c {
        void a(a0 a0Var);
    }

    public a0(Context context) {
        super(context);
        this.f47506a = context;
    }

    public String a() {
        return this.f47510e.getText().toString();
    }

    public a0 b(c cVar) {
        this.f47518m = cVar;
        return this;
    }

    public a0 c(String str) {
        this.f47515j = str;
        return this;
    }

    public a0 d(String str) {
        this.f47514i = str;
        return this;
    }

    public a0 e(String str) {
        this.f47516k = str;
        return this;
    }

    public a0 f(c cVar) {
        this.f47517l = cVar;
        return this;
    }

    public a0 g(String str) {
        this.f47512g = str;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(LayoutInflater.from(this.f47506a).inflate(R.layout.dialog_cloud_share, (ViewGroup) null));
        this.f47509d = (TextView) findViewById(R.id.ok);
        setCancelable(false);
        this.f47507b = (TextView) findViewById(R.id.cancle);
        this.f47510e = (TextView) findViewById(R.id.name);
        this.f47511f = (TextView) findViewById(R.id.content);
        this.f47508c = (TextView) findViewById(R.id.number);
        this.f47510e.setText(this.f47513h);
        this.f47511f.setText(this.f47514i);
        this.f47508c.setText(this.f47516k);
        this.f47509d.setText(this.f47512g);
        this.f47509d.setOnClickListener(new a());
        this.f47507b.setText(this.f47515j);
        this.f47507b.setOnClickListener(new b());
    }

    protected a0(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47506a = context;
    }

    public a0(Context context, int i2) {
        super(context, i2);
        this.f47506a = context;
    }
}
