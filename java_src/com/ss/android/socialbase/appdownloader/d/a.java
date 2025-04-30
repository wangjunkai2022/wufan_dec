package com.ss.android.socialbase.appdownloader.d;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.ss.android.socialbase.appdownloader.c.k;
import com.ss.android.socialbase.appdownloader.c.l;
/* compiled from: DefaultAlertDialogBuilder.java */
/* loaded from: classes4.dex */
public class a extends com.ss.android.socialbase.appdownloader.c.b {

    /* renamed from: a  reason: collision with root package name */
    private AlertDialog.Builder f57622a;

    /* compiled from: DefaultAlertDialogBuilder.java */
    /* renamed from: com.ss.android.socialbase.appdownloader.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static class C0306a implements k {

        /* renamed from: a  reason: collision with root package name */
        private AlertDialog f57623a;

        public C0306a(AlertDialog.Builder builder) {
            if (builder != null) {
                this.f57623a = builder.show();
            }
        }

        @Override // com.ss.android.socialbase.appdownloader.c.k
        public void a() {
            AlertDialog alertDialog = this.f57623a;
            if (alertDialog != null) {
                alertDialog.show();
            }
        }

        @Override // com.ss.android.socialbase.appdownloader.c.k
        public boolean b() {
            AlertDialog alertDialog = this.f57623a;
            if (alertDialog != null) {
                return alertDialog.isShowing();
            }
            return false;
        }
    }

    public a(Context context) {
        this.f57622a = new AlertDialog.Builder(context);
    }

    @Override // com.ss.android.socialbase.appdownloader.c.l
    public l a(int i2) {
        AlertDialog.Builder builder = this.f57622a;
        if (builder != null) {
            builder.setTitle(i2);
        }
        return this;
    }

    @Override // com.ss.android.socialbase.appdownloader.c.l
    public l b(int i2, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = this.f57622a;
        if (builder != null) {
            builder.setNegativeButton(i2, onClickListener);
        }
        return this;
    }

    @Override // com.ss.android.socialbase.appdownloader.c.l
    public l a(String str) {
        AlertDialog.Builder builder = this.f57622a;
        if (builder != null) {
            builder.setMessage(str);
        }
        return this;
    }

    @Override // com.ss.android.socialbase.appdownloader.c.l
    public l a(int i2, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = this.f57622a;
        if (builder != null) {
            builder.setPositiveButton(i2, onClickListener);
        }
        return this;
    }

    @Override // com.ss.android.socialbase.appdownloader.c.l
    public l a(DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = this.f57622a;
        if (builder != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        return this;
    }

    @Override // com.ss.android.socialbase.appdownloader.c.l
    public k a() {
        return new C0306a(this.f57622a);
    }
}
