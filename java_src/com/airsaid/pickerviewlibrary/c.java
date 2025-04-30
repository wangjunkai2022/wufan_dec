package com.airsaid.pickerviewlibrary;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import java.util.ArrayList;
/* compiled from: OptionsPickerView.java */
/* loaded from: classes2.dex */
public class c<T> extends com.airsaid.pickerviewlibrary.widget.a implements View.OnClickListener {

    /* renamed from: n  reason: collision with root package name */
    private Context f9297n;

    /* renamed from: o  reason: collision with root package name */
    private a f9298o;

    /* renamed from: p  reason: collision with root package name */
    private com.airsaid.pickerviewlibrary.widget.b<T> f9299p;

    /* renamed from: q  reason: collision with root package name */
    private Button f9300q;

    /* renamed from: r  reason: collision with root package name */
    private Button f9301r;

    /* renamed from: s  reason: collision with root package name */
    private TextView f9302s;

    /* renamed from: t  reason: collision with root package name */
    private View f9303t;

    /* compiled from: OptionsPickerView.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(int i2, int i4, int i5);
    }

    public c(Context context) {
        super(context);
        this.f9297n = context;
        o();
    }

    private void o() {
        LayoutInflater.from(this.f9297n).inflate(R.layout.pickerview_options, this.f9306c);
        this.f9299p = new com.airsaid.pickerviewlibrary.widget.b<>(d(R.id.optionspicker));
        this.f9303t = d(R.id.rlt_head_view);
        this.f9302s = (TextView) d(R.id.tvTitle);
        this.f9300q = (Button) d(R.id.btnSubmit);
        this.f9301r = (Button) d(R.id.btnCancel);
        this.f9300q.setOnClickListener(this);
        this.f9301r.setOnClickListener(this);
    }

    public void A(ArrayList<T> arrayList, ArrayList<ArrayList<T>> arrayList2, ArrayList<ArrayList<ArrayList<T>>> arrayList3, boolean z3) {
        this.f9299p.q(arrayList, arrayList2, arrayList3, z3);
    }

    public void B(ArrayList<T> arrayList, ArrayList<ArrayList<T>> arrayList2, boolean z3) {
        this.f9299p.q(arrayList, arrayList2, null, z3);
    }

    public void C(int i2) {
        this.f9299p.j(i2, 0, 0);
    }

    public void D(int i2, int i4) {
        this.f9299p.j(i2, i4, 0);
    }

    public void E(int i2, int i4, int i5) {
        this.f9299p.j(i2, i4, i5);
    }

    public void F(String str) {
        this.f9300q.setText(str);
    }

    public void G(int i2) {
        this.f9300q.setTextColor(i2);
    }

    public void H(float f4) {
        this.f9300q.setTextSize(f4);
    }

    public void I(float f4) {
        this.f9299p.s(f4);
    }

    public void J(String str) {
        this.f9302s.setText(str);
    }

    public void K(int i2) {
        this.f9302s.setTextColor(i2);
    }

    public void L(float f4) {
        this.f9302s.setTextSize(f4);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btnSubmit) {
            if (this.f9298o != null) {
                int[] g4 = this.f9299p.g();
                this.f9298o.a(g4[0], g4[1], g4[2]);
            }
            b();
        } else if (id == R.id.btnCancel) {
            b();
        }
    }

    public void p(String str) {
        this.f9301r.setText(str);
    }

    public void q(int i2) {
        this.f9301r.setTextColor(i2);
    }

    public void r(float f4) {
        this.f9301r.setTextSize(f4);
    }

    public void s(boolean z3) {
        this.f9299p.k(z3);
    }

    public void t(boolean z3, boolean z4, boolean z5) {
        this.f9299p.l(z3, z4, z5);
    }

    public void u(int i2) {
        this.f9303t.setBackgroundColor(i2);
    }

    public void v(String str) {
        this.f9299p.m(str, null, null);
    }

    public void w(String str, String str2) {
        this.f9299p.m(str, str2, null);
    }

    public void x(String str, String str2, String str3) {
        this.f9299p.m(str, str2, str3);
    }

    public void y(a aVar) {
        this.f9298o = aVar;
    }

    public void z(ArrayList<T> arrayList) {
        this.f9299p.q(arrayList, null, null, false);
    }
}
