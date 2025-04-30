package com.switfpass.pay.activity;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
/* loaded from: classes4.dex */
public class BasePayActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    protected ProgressDialog f58625a = null;

    public void a() {
        try {
            ProgressDialog progressDialog = this.f58625a;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            this.f58625a.dismiss();
            this.f58625a.cancel();
            this.f58625a = null;
        } catch (Exception e4) {
            new StringBuilder("dismissMyLoading ").append(e4);
        }
    }

    public void b(boolean z3, String str, Context context) {
        if (z3) {
            try {
                if (this.f58625a == null) {
                    ProgressDialog progressDialog = new ProgressDialog(context);
                    this.f58625a = progressDialog;
                    progressDialog.setCancelable(z3);
                }
                this.f58625a.setMessage(str);
                this.f58625a.show();
            } catch (Exception e4) {
                new StringBuilder("showNewLoading ").append(e4);
            }
        }
    }

    protected void c(int i2) {
        runOnUiThread(new z(this, i2));
    }

    protected void d(String str) {
        runOnUiThread(new a0(this, str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
    }
}
