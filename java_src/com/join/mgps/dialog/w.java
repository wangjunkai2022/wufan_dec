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
/* compiled from: CloudNoticeDialog.java */
/* loaded from: classes3.dex */
public class w extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f48007a;

    /* renamed from: b  reason: collision with root package name */
    TextView f48008b;

    /* renamed from: c  reason: collision with root package name */
    TextView f48009c;

    /* renamed from: d  reason: collision with root package name */
    CheckBox f48010d;

    /* renamed from: e  reason: collision with root package name */
    TextView f48011e;

    /* renamed from: f  reason: collision with root package name */
    TextView f48012f;

    /* renamed from: g  reason: collision with root package name */
    TextView f48013g;

    /* renamed from: h  reason: collision with root package name */
    String f48014h;

    /* renamed from: i  reason: collision with root package name */
    String f48015i;

    /* renamed from: j  reason: collision with root package name */
    String f48016j;

    /* renamed from: k  reason: collision with root package name */
    String f48017k;

    /* renamed from: l  reason: collision with root package name */
    e f48018l;

    /* renamed from: m  reason: collision with root package name */
    e f48019m;

    /* renamed from: n  reason: collision with root package name */
    e f48020n;

    /* renamed from: o  reason: collision with root package name */
    CompoundButton.OnCheckedChangeListener f48021o;

    /* renamed from: p  reason: collision with root package name */
    boolean f48022p;

    /* compiled from: CloudNoticeDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w.this.dismiss();
        }
    }

    /* compiled from: CloudNoticeDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w wVar = w.this;
            wVar.f48018l.a(wVar);
        }
    }

    /* compiled from: CloudNoticeDialog.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w wVar = w.this;
            wVar.f48019m.a(wVar);
        }
    }

    /* compiled from: CloudNoticeDialog.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w wVar = w.this;
            e eVar = wVar.f48020n;
            if (eVar != null) {
                eVar.a(wVar);
            }
        }
    }

    /* compiled from: CloudNoticeDialog.java */
    /* loaded from: classes3.dex */
    public interface e {
        void a(w wVar);
    }

    public w(Context context) {
        super(context);
        this.f48022p = false;
        this.f48007a = context;
    }

    public w a(e eVar) {
        this.f48019m = eVar;
        return this;
    }

    public w b(String str) {
        this.f48017k = str;
        return this;
    }

    public w c(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f48021o = onCheckedChangeListener;
        return this;
    }

    public w d(String str) {
        this.f48016j = str;
        return this;
    }

    public w e(e eVar) {
        this.f48018l = eVar;
        return this;
    }

    public w f(String str) {
        this.f48014h = str;
        return this;
    }

    public w g(String str) {
        this.f48015i = str;
        return this;
    }

    public w h(boolean z3) {
        this.f48022p = z3;
        return this;
    }

    public w i(e eVar) {
        this.f48020n = eVar;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        setContentView(LayoutInflater.from(this.f48007a).inflate(R.layout.dialog_cloud_notice, (ViewGroup) null), new ViewGroup.LayoutParams(com.join.android.app.common.utils.j.n(this.f48007a).B((Activity) this.f48007a), com.join.android.app.common.utils.j.n(this.f48007a).k((Activity) this.f48007a)));
        this.f48011e = (TextView) findViewById(R.id.ok);
        this.f48009c = (TextView) findViewById(R.id.tv_vip);
        this.f48008b = (TextView) findViewById(R.id.cancle);
        this.f48012f = (TextView) findViewById(R.id.title);
        this.f48013g = (TextView) findViewById(R.id.content);
        this.f48010d = (CheckBox) findViewById(R.id.checkBox);
        ((ImageView) findViewById(R.id.close)).setOnClickListener(new a());
        this.f48012f.setText(this.f48015i);
        this.f48013g.setText(this.f48016j);
        this.f48011e.setText(this.f48014h);
        this.f48011e.setOnClickListener(new b());
        this.f48008b.setText(this.f48017k);
        this.f48008b.setOnClickListener(new c());
        this.f48009c.setOnClickListener(new d());
        if (this.f48022p) {
            this.f48009c.setVisibility(8);
        } else {
            this.f48009c.setVisibility(8);
        }
        this.f48010d.setOnCheckedChangeListener(this.f48021o);
    }

    protected w(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f48022p = false;
        this.f48007a = context;
    }

    public w(Context context, int i2) {
        super(context, i2);
        this.f48022p = false;
        this.f48007a = context;
    }
}
