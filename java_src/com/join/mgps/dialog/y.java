package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CloudNoticeVipDialog.java */
/* loaded from: classes3.dex */
public class y extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f48075a;

    /* renamed from: b  reason: collision with root package name */
    TextView f48076b;

    /* renamed from: c  reason: collision with root package name */
    TextView f48077c;

    /* renamed from: d  reason: collision with root package name */
    CheckBox f48078d;

    /* renamed from: e  reason: collision with root package name */
    TextView f48079e;

    /* renamed from: f  reason: collision with root package name */
    TextView f48080f;

    /* renamed from: g  reason: collision with root package name */
    TextView f48081g;

    /* renamed from: h  reason: collision with root package name */
    String f48082h;

    /* renamed from: i  reason: collision with root package name */
    String f48083i;

    /* renamed from: j  reason: collision with root package name */
    String f48084j;

    /* renamed from: k  reason: collision with root package name */
    String f48085k;

    /* renamed from: l  reason: collision with root package name */
    e f48086l;

    /* renamed from: m  reason: collision with root package name */
    e f48087m;

    /* renamed from: n  reason: collision with root package name */
    e f48088n;

    /* renamed from: o  reason: collision with root package name */
    CompoundButton.OnCheckedChangeListener f48089o;

    /* renamed from: p  reason: collision with root package name */
    boolean f48090p;

    /* compiled from: CloudNoticeVipDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y.this.dismiss();
        }
    }

    /* compiled from: CloudNoticeVipDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y yVar = y.this;
            yVar.f48086l.a(yVar);
        }
    }

    /* compiled from: CloudNoticeVipDialog.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y yVar = y.this;
            yVar.f48087m.a(yVar);
        }
    }

    /* compiled from: CloudNoticeVipDialog.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y yVar = y.this;
            e eVar = yVar.f48088n;
            if (eVar != null) {
                eVar.a(yVar);
            }
        }
    }

    /* compiled from: CloudNoticeVipDialog.java */
    /* loaded from: classes3.dex */
    public interface e {
        void a(y yVar);
    }

    public y(Context context) {
        super(context);
        this.f48090p = false;
        this.f48075a = context;
    }

    public y a(e eVar) {
        this.f48087m = eVar;
        return this;
    }

    public y b(String str) {
        this.f48085k = str;
        return this;
    }

    public y c(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f48089o = onCheckedChangeListener;
        return this;
    }

    public y d(String str) {
        this.f48084j = str;
        return this;
    }

    public y e(e eVar) {
        this.f48086l = eVar;
        return this;
    }

    public y f(String str) {
        this.f48082h = str;
        return this;
    }

    public y g(String str) {
        this.f48083i = str;
        return this;
    }

    public y h(boolean z3) {
        this.f48090p = z3;
        return this;
    }

    public y i(e eVar) {
        this.f48088n = eVar;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        setContentView(LayoutInflater.from(this.f48075a).inflate(R.layout.dialog_cloud_notice_vip, (ViewGroup) null), new ViewGroup.LayoutParams(com.join.android.app.common.utils.j.n(this.f48075a).B((Activity) this.f48075a), com.join.android.app.common.utils.j.n(this.f48075a).k((Activity) this.f48075a)));
        this.f48079e = (TextView) findViewById(R.id.ok);
        this.f48077c = (TextView) findViewById(R.id.tv_vip);
        this.f48076b = (TextView) findViewById(R.id.cancle);
        this.f48080f = (TextView) findViewById(R.id.title);
        this.f48081g = (TextView) findViewById(R.id.content);
        this.f48078d = (CheckBox) findViewById(R.id.checkBox);
        ((ImageView) findViewById(R.id.close)).setOnClickListener(new a());
        this.f48080f.setText(this.f48083i);
        this.f48081g.setText(this.f48084j);
        this.f48079e.setText(this.f48082h);
        this.f48079e.setOnClickListener(new b());
        this.f48076b.setText(this.f48085k);
        this.f48076b.setOnClickListener(new c());
        this.f48077c.setOnClickListener(new d());
        if (this.f48090p) {
            this.f48077c.setVisibility(8);
        } else {
            this.f48077c.setVisibility(8);
        }
        this.f48078d.setOnCheckedChangeListener(this.f48089o);
    }

    protected y(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f48090p = false;
        this.f48075a = context;
    }

    public y(Context context, int i2) {
        super(context, i2);
        this.f48090p = false;
        this.f48075a = context;
    }
}
