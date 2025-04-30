package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CloudNoticeProgressDialog.java */
/* loaded from: classes3.dex */
public class x extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f48044a;

    /* renamed from: b  reason: collision with root package name */
    TextView f48045b;

    /* renamed from: c  reason: collision with root package name */
    ProgressBar f48046c;

    /* renamed from: d  reason: collision with root package name */
    TextView f48047d;

    /* renamed from: e  reason: collision with root package name */
    TextView f48048e;

    /* renamed from: f  reason: collision with root package name */
    TextView f48049f;

    /* renamed from: g  reason: collision with root package name */
    TextView f48050g;

    /* renamed from: h  reason: collision with root package name */
    String f48051h;

    /* renamed from: i  reason: collision with root package name */
    String f48052i;

    /* renamed from: j  reason: collision with root package name */
    String f48053j;

    /* renamed from: k  reason: collision with root package name */
    String f48054k;

    /* renamed from: l  reason: collision with root package name */
    c f48055l;

    /* renamed from: m  reason: collision with root package name */
    c f48056m;

    /* renamed from: n  reason: collision with root package name */
    CompoundButton.OnCheckedChangeListener f48057n;

    /* compiled from: CloudNoticeProgressDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            x xVar = x.this;
            xVar.f48055l.a(xVar);
        }
    }

    /* compiled from: CloudNoticeProgressDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            x xVar = x.this;
            xVar.f48056m.a(xVar);
        }
    }

    /* compiled from: CloudNoticeProgressDialog.java */
    /* loaded from: classes3.dex */
    public interface c {
        void a(x xVar);
    }

    public x(Context context) {
        super(context);
        this.f48044a = context;
    }

    public x a(c cVar) {
        this.f48056m = cVar;
        return this;
    }

    public x b(String str) {
        this.f48054k = str;
        return this;
    }

    public x c(String str, String str2, int i2) {
        this.f48049f.setText(str);
        this.f48050g.setText(str2);
        this.f48046c.setProgress(i2);
        return this;
    }

    public x d(c cVar) {
        this.f48055l = cVar;
        return this;
    }

    public x e(String str) {
        this.f48051h = str;
        return this;
    }

    public x f(String str) {
        this.f48052i = str;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(LayoutInflater.from(this.f48044a).inflate(R.layout.dialog_cloud_progress_notice, (ViewGroup) null));
        setCancelable(false);
        this.f48047d = (TextView) findViewById(R.id.ok);
        this.f48045b = (TextView) findViewById(R.id.cancle);
        this.f48048e = (TextView) findViewById(R.id.title);
        this.f48050g = (TextView) findViewById(R.id.downSpeed);
        this.f48049f = (TextView) findViewById(R.id.downsize);
        this.f48046c = (ProgressBar) findViewById(R.id.progress);
        this.f48048e.setText(this.f48052i);
        this.f48047d.setText(this.f48051h);
        this.f48047d.setOnClickListener(new a());
        this.f48045b.setText(this.f48054k);
        this.f48045b.setOnClickListener(new b());
    }

    protected x(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f48044a = context;
    }

    public x(Context context, int i2) {
        super(context, i2);
        this.f48044a = context;
    }
}
