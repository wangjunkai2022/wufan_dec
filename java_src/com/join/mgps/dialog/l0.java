package com.join.mgps.dialog;

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
/* compiled from: FightDisconnectDialog.java */
/* loaded from: classes3.dex */
public class l0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f47774a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47775b;

    /* renamed from: c  reason: collision with root package name */
    TextView f47776c;

    /* renamed from: d  reason: collision with root package name */
    Button f47777d;

    /* renamed from: e  reason: collision with root package name */
    ImageView f47778e;

    /* renamed from: f  reason: collision with root package name */
    Button f47779f;

    /* renamed from: g  reason: collision with root package name */
    TextView f47780g;

    /* compiled from: FightDisconnectDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l0.this.dismiss();
        }
    }

    /* compiled from: FightDisconnectDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l0.this.dismiss();
        }
    }

    public l0(Context context, int i2) {
        super(context, i2);
        this.f47774a = context;
    }

    public void a(int i2) {
        this.f47778e.setVisibility(i2);
    }

    public void b(View.OnClickListener onClickListener) {
        this.f47778e.setOnClickListener(onClickListener);
    }

    public void c(int i2) {
        this.f47779f.setVisibility(i2);
    }

    public void d(View.OnClickListener onClickListener) {
        this.f47779f.setOnClickListener(onClickListener);
    }

    public void e(String str) {
        this.f47779f.setText(str);
    }

    public void f(String str) {
        this.f47776c.setText(str);
    }

    public void g(int i2) {
        this.f47777d.setVisibility(i2);
    }

    public void h(View.OnClickListener onClickListener) {
        this.f47777d.setOnClickListener(onClickListener);
    }

    public void i(String str) {
        this.f47780g.setText(str);
    }

    public void j(String str) {
        com.join.mgps.Util.t0.g("title--------" + this.f47775b);
        this.f47775b.setText(str);
    }

    public void k(int i2) {
        this.f47777d.setVisibility(i2);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View inflate = LayoutInflater.from(this.f47774a).inflate(R.layout.dialog_fight_disconnect, (ViewGroup) null);
        this.f47775b = (TextView) inflate.findViewById(R.id.title);
        this.f47776c = (TextView) inflate.findViewById(R.id.info);
        this.f47777d = (Button) inflate.findViewById(R.id.research);
        this.f47778e = (ImageView) inflate.findViewById(R.id.back);
        this.f47779f = (Button) inflate.findViewById(R.id.cancel);
        this.f47780g = (TextView) inflate.findViewById(R.id.research);
        inflate.findViewById(R.id.cancel).setOnClickListener(new a());
        inflate.findViewById(R.id.back).setOnClickListener(new b());
        setContentView(inflate);
    }

    public l0(Context context) {
        super(context);
        this.f47774a = context;
    }
}
