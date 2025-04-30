package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
/* compiled from: GprsChoiceDialog.java */
/* loaded from: classes3.dex */
public class t0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Context f47966a;

    /* renamed from: b  reason: collision with root package name */
    private CheckBox f47967b;

    /* renamed from: c  reason: collision with root package name */
    private CheckBox f47968c;

    /* renamed from: d  reason: collision with root package name */
    private CheckBox f47969d;

    /* renamed from: e  reason: collision with root package name */
    private CheckBox f47970e;

    /* renamed from: f  reason: collision with root package name */
    private CheckBox f47971f;

    /* renamed from: g  reason: collision with root package name */
    private int f47972g;

    /* renamed from: h  reason: collision with root package name */
    private PrefDef_ f47973h;

    /* renamed from: i  reason: collision with root package name */
    private f f47974i;

    /* compiled from: GprsChoiceDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.f47974i.b();
            t0.this.i();
            t0.this.f47967b.setChecked(true);
            t0.this.f47973h.gprsNoticeInfo().g(0);
            t0.this.dismiss();
        }
    }

    /* compiled from: GprsChoiceDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.f47974i.d();
            t0.this.i();
            t0.this.f47968c.setChecked(true);
            t0.this.f47973h.gprsNoticeInfo().g(1);
            t0.this.dismiss();
        }
    }

    /* compiled from: GprsChoiceDialog.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.f47974i.c();
            t0.this.i();
            t0.this.f47969d.setChecked(true);
            t0.this.f47973h.gprsNoticeInfo().g(2);
            t0.this.dismiss();
        }
    }

    /* compiled from: GprsChoiceDialog.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.f47974i.e();
            t0.this.i();
            t0.this.f47970e.setChecked(true);
            t0.this.f47973h.gprsNoticeInfo().g(3);
            t0.this.dismiss();
        }
    }

    /* compiled from: GprsChoiceDialog.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.f47974i.a();
            t0.this.i();
            t0.this.f47971f.setChecked(true);
            t0.this.f47973h.gprsNoticeInfo().g(4);
            t0.this.dismiss();
        }
    }

    /* compiled from: GprsChoiceDialog.java */
    /* loaded from: classes3.dex */
    public interface f {
        void a();

        void b();

        void c();

        void d();

        void e();
    }

    public t0(Context context) {
        super(context);
        this.f47966a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.f47967b.setChecked(false);
        this.f47968c.setChecked(false);
        this.f47969d.setChecked(false);
        this.f47970e.setChecked(false);
        this.f47971f.setChecked(false);
    }

    public void j(f fVar) {
        this.f47974i = fVar;
    }

    public void k(PrefDef_ prefDef_) {
        this.f47973h = prefDef_;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.gprs_choice_dialog_layout);
        this.f47967b = (CheckBox) findViewById(R.id.noticeallbox);
        this.f47968c = (CheckBox) findViewById(R.id.notice10box);
        this.f47969d = (CheckBox) findViewById(R.id.notice50box);
        this.f47970e = (CheckBox) findViewById(R.id.notice100box);
        this.f47971f = (CheckBox) findViewById(R.id.noticenobox);
        ((LinearLayout) findViewById(R.id.noticeall)).setOnClickListener(new a());
        ((LinearLayout) findViewById(R.id.notice10)).setOnClickListener(new b());
        ((LinearLayout) findViewById(R.id.notice50)).setOnClickListener(new c());
        ((LinearLayout) findViewById(R.id.notice100)).setOnClickListener(new d());
        ((LinearLayout) findViewById(R.id.noticeno)).setOnClickListener(new e());
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        this.f47967b.setChecked(false);
        this.f47968c.setChecked(false);
        this.f47969d.setChecked(false);
        this.f47970e.setChecked(false);
        this.f47971f.setChecked(false);
        int intValue = this.f47973h.gprsNoticeInfo().d().intValue();
        this.f47972g = intValue;
        if (intValue == 0) {
            this.f47967b.setChecked(true);
        } else if (intValue == 1) {
            this.f47968c.setChecked(true);
        } else if (intValue == 2) {
            this.f47969d.setChecked(true);
        } else if (intValue == 3) {
            this.f47970e.setChecked(true);
        } else if (intValue != 4) {
        } else {
            this.f47971f.setChecked(true);
        }
    }

    public t0(Context context, int i2) {
        super(context, i2);
        this.f47966a = context;
    }

    protected t0(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47966a = context;
    }
}
