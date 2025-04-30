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
/* compiled from: AccountLoginDialog.java */
/* loaded from: classes3.dex */
public class b extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private TextView f47530a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f47531b;

    /* renamed from: c  reason: collision with root package name */
    private Button f47532c;

    /* renamed from: d  reason: collision with root package name */
    private Button f47533d;

    /* renamed from: e  reason: collision with root package name */
    private View f47534e;

    /* renamed from: f  reason: collision with root package name */
    private CheckBox f47535f;

    /* renamed from: g  reason: collision with root package name */
    private String f47536g;

    /* renamed from: h  reason: collision with root package name */
    private String f47537h;

    /* renamed from: i  reason: collision with root package name */
    private String f47538i;

    /* renamed from: j  reason: collision with root package name */
    private String f47539j;

    /* renamed from: k  reason: collision with root package name */
    private c f47540k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f47541l;

    /* renamed from: m  reason: collision with root package name */
    private int f47542m;

    /* renamed from: n  reason: collision with root package name */
    private int f47543n;

    /* compiled from: AccountLoginDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.f47540k != null) {
                b.this.f47540k.ClickCancleButn(b.this);
            } else {
                b.this.dismiss();
            }
        }
    }

    /* compiled from: AccountLoginDialog.java */
    /* renamed from: com.join.mgps.dialog.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0201b implements View.OnClickListener {
        View$OnClickListenerC0201b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.f47540k != null) {
                b.this.f47540k.ClickOKButn(b.this);
                return;
            }
            b.this.dismiss();
            IntentUtil.getInstance().goLogin(view.getContext());
        }
    }

    /* compiled from: AccountLoginDialog.java */
    /* loaded from: classes3.dex */
    public interface c {
        void ClickCancleButn(b bVar);

        void ClickOKButn(b bVar);
    }

    public b(Context context) {
        super(context);
        this.f47536g = "提示";
        this.f47537h = "登陆后，开始悟饭游戏的精彩旅游";
        this.f47538i = "登陆";
        this.f47539j = "现在不";
        this.f47541l = false;
        this.f47543n = 8;
    }

    public int b() {
        return this.f47542m;
    }

    public boolean c() {
        return this.f47535f.isChecked();
    }

    public b d(String str) {
        this.f47539j = str;
        return this;
    }

    public b e(int i2) {
        this.f47542m = i2;
        return this;
    }

    public b f(int i2) {
        this.f47543n = i2;
        return this;
    }

    public b g(String str) {
        this.f47537h = str;
        return this;
    }

    public b h(boolean z3) {
        setCancelable(z3);
        return this;
    }

    public b i(c cVar) {
        this.f47540k = cVar;
        return this;
    }

    public b j(String str) {
        this.f47538i = str;
        return this;
    }

    public b k(String str) {
        this.f47536g = str;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(this.f47541l);
        setContentView(R.layout.accountlogin_notice_dialog);
        this.f47535f = (CheckBox) findViewById(R.id.dialogCb);
        this.f47530a = (TextView) findViewById(R.id.tip_title);
        this.f47531b = (TextView) findViewById(R.id.dialog_content);
        this.f47532c = (Button) findViewById(R.id.dialog_button_ok);
        this.f47533d = (Button) findViewById(R.id.dialog_button_cancle);
        this.f47534e = findViewById(R.id.middle);
        this.f47533d.setText(this.f47539j);
        this.f47531b.setText(this.f47537h);
        this.f47532c.setText(this.f47538i);
        this.f47535f.setVisibility(this.f47543n);
        this.f47530a.setText(this.f47536g);
        int i2 = this.f47542m;
        if (i2 != 0) {
            this.f47533d.setVisibility(i2);
            this.f47534e.setVisibility(this.f47542m);
            ViewGroup.LayoutParams layoutParams = this.f47532c.getLayoutParams();
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.wdp15);
                ((LinearLayout.LayoutParams) layoutParams).setMargins(dimensionPixelSize, 0, dimensionPixelSize, 0);
                this.f47532c.setLayoutParams(layoutParams);
            }
            this.f47532c.setMaxWidth(getContext().getResources().getDimensionPixelSize(R.dimen.wdp50));
        }
        this.f47533d.setOnClickListener(new a());
        this.f47532c.setOnClickListener(new View$OnClickListenerC0201b());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getAction() == 0 && this.f47541l) {
            dismiss();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public b(Context context, int i2) {
        super(context, i2);
        this.f47536g = "提示";
        this.f47537h = "登陆后，开始悟饭游戏的精彩旅游";
        this.f47538i = "登陆";
        this.f47539j = "现在不";
        this.f47541l = false;
        this.f47543n = 8;
    }

    protected b(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47536g = "提示";
        this.f47537h = "登陆后，开始悟饭游戏的精彩旅游";
        this.f47538i = "登陆";
        this.f47539j = "现在不";
        this.f47541l = false;
        this.f47543n = 8;
    }
}
