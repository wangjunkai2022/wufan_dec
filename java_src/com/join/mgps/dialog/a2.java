package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: WhiteBackDialogDialog.java */
/* loaded from: classes3.dex */
public class a2 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Activity f47524a;

    /* renamed from: b  reason: collision with root package name */
    TextView f47525b;

    /* renamed from: c  reason: collision with root package name */
    c f47526c;

    /* renamed from: d  reason: collision with root package name */
    TextView f47527d;

    /* compiled from: WhiteBackDialogDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a2.this.dismiss();
        }
    }

    /* compiled from: WhiteBackDialogDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a2.this.f47526c.a();
            a2.this.dismiss();
        }
    }

    /* compiled from: WhiteBackDialogDialog.java */
    /* loaded from: classes3.dex */
    public interface c {
        void a();
    }

    public a2(Activity activity, c cVar) {
        super(activity, R.style.MyDialog);
        this.f47524a = activity;
        this.f47526c = cVar;
    }

    public void a(String str) {
        this.f47527d.setText(str);
    }

    public void b(String str) {
        this.f47525b.setText(str);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View inflate = LayoutInflater.from(this.f47524a).inflate(R.layout.white_back_dialog, (ViewGroup) null);
        inflate.setMinimumWidth(com.join.android.app.common.utils.j.n(this.f47524a).B(this.f47524a));
        TextView textView = (TextView) inflate.findViewById(R.id.tip_title);
        this.f47527d = (TextView) inflate.findViewById(R.id.content);
        ((TextView) inflate.findViewById(R.id.dialog_button_cancel)).setOnClickListener(new a());
        ((TextView) inflate.findViewById(R.id.dialog_button_ok)).setOnClickListener(new b());
        setContentView(inflate);
    }
}
