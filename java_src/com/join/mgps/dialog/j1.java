package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.i2;
import com.join.mgps.dto.ModFeedbackBean;
/* compiled from: ModRewardDialog.java */
/* loaded from: classes3.dex */
public class j1 extends AlertDialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private String f47739a;

    /* renamed from: b  reason: collision with root package name */
    private String f47740b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f47741c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f47742d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f47743e;

    /* renamed from: f  reason: collision with root package name */
    private ModFeedbackBean f47744f;

    public j1(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    private void c(String str) {
        ((ClipboardManager) getContext().getSystemService("clipboard")).setText(str.trim());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        com.join.mgps.Util.a0.c0(getContext()).T(getContext(), this.f47740b, this.f47739a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        com.join.mgps.Util.a0.c0(getContext()).T(getContext(), this.f47740b, this.f47739a);
    }

    public void f(String str, String str2, ModFeedbackBean modFeedbackBean) {
        super.show();
        this.f47740b = str;
        this.f47739a = str2;
        this.f47744f = modFeedbackBean;
        if (modFeedbackBean != null) {
            this.f47741c.setText(modFeedbackBean.getTitle());
            this.f47742d.setText(modFeedbackBean.getContent());
            this.f47743e.setText(modFeedbackBean.getBtn_title());
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (isShowing()) {
            new Handler().postDelayed(new Runnable() { // from class: com.join.mgps.dialog.i1
                @Override // java.lang.Runnable
                public final void run() {
                    j1.this.d();
                }
            }, 200L);
        }
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ModFeedbackBean modFeedbackBean;
        int id = view.getId();
        if (id == R.id.close) {
            dismiss();
            new Handler().postDelayed(new Runnable() { // from class: com.join.mgps.dialog.h1
                @Override // java.lang.Runnable
                public final void run() {
                    j1.this.e();
                }
            }, 200L);
        } else if (id != R.id.launch || (modFeedbackBean = this.f47744f) == null) {
        } else {
            c(modFeedbackBean.getWx_num());
            i2.a(getContext()).b("客服微信已复制");
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_mod_reward);
        setCanceledOnTouchOutside(false);
        this.f47741c = (TextView) findViewById(R.id.tv_title);
        this.f47742d = (TextView) findViewById(R.id.tv_content);
        this.f47743e = (TextView) findViewById(R.id.launch);
        findViewById(R.id.close).setOnClickListener(this);
        findViewById(R.id.launch).setOnClickListener(this);
    }
}
