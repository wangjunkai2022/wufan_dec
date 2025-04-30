package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.i2;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;
/* compiled from: ChangeNameDialog.java */
/* loaded from: classes3.dex */
public class r extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private c f47899a;

    /* renamed from: b  reason: collision with root package name */
    private Context f47900b;

    /* renamed from: c  reason: collision with root package name */
    private String f47901c;

    /* renamed from: d  reason: collision with root package name */
    private EditText f47902d;

    /* compiled from: ChangeNameDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String trim = r.this.f47902d.getText().toString().trim();
            int length = trim.length();
            if (!Pattern.matches("^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$", trim)) {
                i2.a(r.this.f47900b).b("用户名为中文/字母/数字/下划线,请检查后重新输入");
            } else if (length < 1 || length > 12) {
                i2.a(r.this.f47900b).b("用户名为1~12个字符，请检查后重新输入");
            } else if (!com.join.mgps.Util.d2.j(trim) || trim.length() != 11) {
                r.this.f47899a.l(trim);
                r.this.dismiss();
            } else {
                i2.a(r.this.f47900b).b("为保护你的信息安全，用户名不能类似手机号哦");
            }
        }
    }

    /* compiled from: ChangeNameDialog.java */
    /* loaded from: classes3.dex */
    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            ((InputMethodManager) r.this.f47902d.getContext().getSystemService("input_method")).showSoftInput(r.this.f47902d, 0);
        }
    }

    /* compiled from: ChangeNameDialog.java */
    /* loaded from: classes3.dex */
    public interface c {
        void l(String str);
    }

    public r(Context context) {
        super(context);
        this.f47902d = null;
        this.f47900b = context;
    }

    public void d(c cVar) {
        this.f47899a = cVar;
    }

    public void e(String str) {
        this.f47901c = str;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.change_name_dialog_layout);
        this.f47902d = (EditText) findViewById(R.id.name);
        TextView textView = (TextView) findViewById(R.id.changeNickNameNotice);
        this.f47902d.setText(this.f47901c);
        ((TextView) findViewById(R.id.savebutn)).setOnClickListener(new a());
        this.f47902d.setFocusableInTouchMode(true);
        this.f47902d.requestFocus();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        new Timer().schedule(new b(), 400L);
    }

    public r(Context context, int i2) {
        super(context, i2);
        this.f47902d = null;
        this.f47900b = context;
    }

    protected r(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47902d = null;
        this.f47900b = context;
    }
}
