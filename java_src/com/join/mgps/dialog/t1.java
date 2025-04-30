package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
/* compiled from: SimpleAlertDialog.java */
/* loaded from: classes3.dex */
public class t1 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private TextView f47980a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f47981b;

    /* renamed from: c  reason: collision with root package name */
    private Button f47982c;

    /* renamed from: d  reason: collision with root package name */
    private View f47983d;

    /* renamed from: e  reason: collision with root package name */
    private CheckBox f47984e;

    /* renamed from: f  reason: collision with root package name */
    private String f47985f;

    /* renamed from: g  reason: collision with root package name */
    private String f47986g;

    /* renamed from: h  reason: collision with root package name */
    private String f47987h;

    /* renamed from: i  reason: collision with root package name */
    private String f47988i;

    /* renamed from: j  reason: collision with root package name */
    private b f47989j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f47990k;

    /* renamed from: l  reason: collision with root package name */
    private int f47991l;

    /* renamed from: m  reason: collision with root package name */
    private int f47992m;

    /* compiled from: SimpleAlertDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (t1.this.f47989j != null) {
                t1.this.f47989j.b(t1.this);
                return;
            }
            t1.this.dismiss();
            IntentUtil.getInstance().goLogin(view.getContext());
        }
    }

    /* compiled from: SimpleAlertDialog.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(t1 t1Var);

        void b(t1 t1Var);
    }

    public t1(Context context) {
        super(context);
        this.f47985f = "提示";
        this.f47986g = "登陆后，开始悟饭游戏的精彩旅游";
        this.f47987h = "登陆";
        this.f47988i = "现在不";
        this.f47990k = false;
        this.f47992m = 8;
    }

    public int b() {
        return this.f47991l;
    }

    public boolean c() {
        return this.f47984e.isChecked();
    }

    public t1 d(String str) {
        this.f47988i = str;
        return this;
    }

    public t1 e(int i2) {
        this.f47991l = i2;
        return this;
    }

    public t1 f(int i2) {
        this.f47992m = i2;
        return this;
    }

    public t1 g(String str) {
        this.f47986g = str;
        return this;
    }

    public t1 h(boolean z3) {
        setCancelable(z3);
        return this;
    }

    public t1 i(b bVar) {
        this.f47989j = bVar;
        return this;
    }

    public t1 j(String str) {
        this.f47987h = str;
        return this;
    }

    public t1 k(String str) {
        this.f47985f = str;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(this.f47990k);
        setContentView(R.layout.layout_simple_alert_dialog);
        this.f47984e = (CheckBox) findViewById(R.id.dialogCb);
        this.f47980a = (TextView) findViewById(R.id.tip_title);
        this.f47981b = (TextView) findViewById(R.id.dialog_content);
        this.f47982c = (Button) findViewById(R.id.dialog_button_ok);
        this.f47983d = findViewById(R.id.middle);
        this.f47981b.setText(this.f47986g);
        this.f47982c.setText(this.f47987h);
        this.f47984e.setVisibility(this.f47992m);
        this.f47980a.setText(this.f47985f);
        int i2 = this.f47991l;
        if (i2 != 0) {
            this.f47983d.setVisibility(i2);
            ViewGroup.LayoutParams layoutParams = this.f47982c.getLayoutParams();
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.wdp15);
                ((LinearLayout.LayoutParams) layoutParams).setMargins(dimensionPixelSize, 0, dimensionPixelSize, 0);
                this.f47982c.setLayoutParams(layoutParams);
            }
            this.f47982c.setMaxWidth(getContext().getResources().getDimensionPixelSize(R.dimen.wdp50));
        }
        this.f47982c.setOnClickListener(new a());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getAction() == 0 && this.f47990k) {
            dismiss();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public t1(Context context, int i2) {
        super(context, i2);
        this.f47985f = "提示";
        this.f47986g = "登陆后，开始悟饭游戏的精彩旅游";
        this.f47987h = "登陆";
        this.f47988i = "现在不";
        this.f47990k = false;
        this.f47992m = 8;
    }

    protected t1(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47985f = "提示";
        this.f47986g = "登陆后，开始悟饭游戏的精彩旅游";
        this.f47987h = "登陆";
        this.f47988i = "现在不";
        this.f47990k = false;
        this.f47992m = 8;
    }
}
