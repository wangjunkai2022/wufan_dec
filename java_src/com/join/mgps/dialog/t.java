package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
/* compiled from: ChoiceDefautGBAPlugDialog.java */
/* loaded from: classes3.dex */
public class t extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private e f47957a;

    /* renamed from: b  reason: collision with root package name */
    private Context f47958b;

    /* renamed from: c  reason: collision with root package name */
    private CheckBox f47959c;

    /* renamed from: d  reason: collision with root package name */
    private CheckBox f47960d;

    /* renamed from: e  reason: collision with root package name */
    private CheckBox f47961e;

    /* compiled from: ChoiceDefautGBAPlugDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.f47959c.setChecked(true);
            com.papa.sim.statistic.pref.b.j(t.this.f47958b).F(0);
            t.this.dismiss();
        }
    }

    /* compiled from: ChoiceDefautGBAPlugDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.pref.b.j(t.this.f47958b).F(1);
            t.this.f47960d.setChecked(true);
            t.this.dismiss();
        }
    }

    /* compiled from: ChoiceDefautGBAPlugDialog.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.pref.b.j(t.this.f47958b).F(2);
            t.this.f47961e.setChecked(true);
            t.this.dismiss();
        }
    }

    /* compiled from: ChoiceDefautGBAPlugDialog.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(8);
            intentDateBean.setLink_type_val("79707");
            IntentUtil.getInstance().intentActivity(t.this.f47958b, intentDateBean);
        }
    }

    /* compiled from: ChoiceDefautGBAPlugDialog.java */
    /* loaded from: classes3.dex */
    public interface e {
        void a(int i2);
    }

    public t(Context context) {
        super(context);
        this.f47958b = context;
    }

    public void e(e eVar) {
        this.f47957a = eVar;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.gbaplug_choice_dialog_layout);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.showdialog);
        ((TextView) findViewById(R.id.titleText)).setText("请选择默认启动插件");
        linearLayout.setVisibility(0);
        linearLayout.setOnClickListener(new a());
        ((LinearLayout) findViewById(R.id.newGBAOlug)).setOnClickListener(new b());
        ((LinearLayout) findViewById(R.id.oldGBAPlug)).setOnClickListener(new c());
        ((LinearLayout) findViewById(R.id.why)).setOnClickListener(new d());
        this.f47959c = (CheckBox) findViewById(R.id.showdialogPlug);
        this.f47960d = (CheckBox) findViewById(R.id.gbaNewPlug);
        this.f47961e = (CheckBox) findViewById(R.id.gbaOld);
        this.f47959c.setChecked(false);
        this.f47960d.setChecked(false);
        this.f47961e.setChecked(false);
        int m4 = com.papa.sim.statistic.pref.b.j(this.f47958b).m();
        if (m4 == 0) {
            this.f47959c.setChecked(true);
        } else if (m4 == 1) {
            this.f47960d.setChecked(true);
        } else if (m4 != 2) {
        } else {
            this.f47961e.setChecked(true);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        this.f47959c.setChecked(false);
        this.f47960d.setChecked(false);
        this.f47961e.setChecked(false);
        int m4 = com.papa.sim.statistic.pref.b.j(this.f47958b).m();
        if (m4 == 0) {
            this.f47959c.setChecked(true);
        } else if (m4 == 1) {
            this.f47960d.setChecked(true);
        } else if (m4 != 2) {
        } else {
            this.f47961e.setChecked(true);
        }
    }

    public t(Context context, int i2) {
        super(context, i2);
        this.f47958b = context;
    }

    protected t(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47958b = context;
    }
}
