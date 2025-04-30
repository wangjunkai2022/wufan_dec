package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: BackupFinishDialog.java */
/* loaded from: classes3.dex */
public class p extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    int f47849a;

    /* compiled from: BackupFinishDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p.this.dismiss();
        }
    }

    public p(Context context) {
        super(context);
        this.f47849a = 0;
    }

    public void a(int i2) {
        this.f47849a = i2;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        setContentView(R.layout.backups_notice_dialog);
        ((TextView) findViewById(R.id.tip_title)).setText("本地游戏恢复");
        ((TextView) findViewById(R.id.dialog_content)).setText("悟饭猴从本地恢复了" + this.f47849a + "款游戏到“我的>游戏”中!");
        ((Button) findViewById(R.id.dialog_button_ok)).setOnClickListener(new a());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getAction() == 0) {
            dismiss();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public p(Context context, int i2, int i4) {
        super(context, i2);
        this.f47849a = 0;
        this.f47849a = i4;
    }

    protected p(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f47849a = 0;
    }
}
