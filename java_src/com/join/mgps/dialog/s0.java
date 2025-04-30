package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GenderCheckDialog.java */
/* loaded from: classes3.dex */
public class s0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Context f47941a;

    /* renamed from: b  reason: collision with root package name */
    private c f47942b;

    /* renamed from: c  reason: collision with root package name */
    private int f47943c;

    /* compiled from: GenderCheckDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CheckBox f47944a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CheckBox f47945b;

        a(CheckBox checkBox, CheckBox checkBox2) {
            this.f47944a = checkBox;
            this.f47945b = checkBox2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s0.this.f47942b.r0(1);
            this.f47944a.setChecked(true);
            this.f47945b.setChecked(false);
            s0.this.dismiss();
        }
    }

    /* compiled from: GenderCheckDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CheckBox f47947a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CheckBox f47948b;

        b(CheckBox checkBox, CheckBox checkBox2) {
            this.f47947a = checkBox;
            this.f47948b = checkBox2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s0.this.f47942b.r0(2);
            this.f47947a.setChecked(false);
            this.f47948b.setChecked(true);
            s0.this.dismiss();
        }
    }

    /* compiled from: GenderCheckDialog.java */
    /* loaded from: classes3.dex */
    public interface c {
        void r0(int i2);
    }

    public s0(Context context) {
        super(context);
        this.f47943c = 1;
        this.f47941a = context;
    }

    public void b(c cVar) {
        this.f47942b = cVar;
    }

    public void c(int i2) {
        this.f47943c = i2;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.gender_check_dialog_layout);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.manLayout);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.girlLayout);
        CheckBox checkBox = (CheckBox) findViewById(R.id.manCheckbox);
        CheckBox checkBox2 = (CheckBox) findViewById(R.id.girlCheckbox);
        if (this.f47943c == 1) {
            checkBox.setChecked(true);
            checkBox2.setChecked(false);
        } else {
            checkBox.setChecked(false);
            checkBox2.setChecked(true);
        }
        linearLayout.setOnClickListener(new a(checkBox, checkBox2));
        linearLayout2.setOnClickListener(new b(checkBox, checkBox2));
    }

    public s0(Context context, int i2) {
        super(context, i2);
        this.f47943c = 1;
        this.f47941a = context;
    }

    protected s0(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47943c = 1;
        this.f47941a = context;
    }
}
