package com.join.mgps.Util;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
/* compiled from: ToastUtils.java */
/* loaded from: classes3.dex */
public class i2 {

    /* renamed from: c  reason: collision with root package name */
    private static i2 f27628c;

    /* renamed from: a  reason: collision with root package name */
    Toast f27629a;

    /* renamed from: b  reason: collision with root package name */
    Handler f27630b;

    /* compiled from: ToastUtils.java */
    /* loaded from: classes3.dex */
    class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27631a;

        a(Context context) {
            this.f27631a = context;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            try {
                String str = (String) message.obj;
                i2 i2Var = i2.this;
                Toast toast = i2Var.f27629a;
                if (toast == null) {
                    i2Var.f27629a = Toast.makeText(this.f27631a, str, 1);
                } else {
                    toast.cancel();
                    i2.this.f27629a = Toast.makeText(this.f27631a, str, 1);
                    i2.this.f27629a.setText((CharSequence) message.obj);
                }
                i2.this.f27629a.show();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    private i2(Context context) {
        this.f27629a = new Toast(context);
        this.f27629a = Toast.makeText(context, "", 1);
        this.f27630b = new a(context);
    }

    public static i2 a(Context context) {
        if (f27628c == null) {
            f27628c = new i2(context);
        }
        return f27628c;
    }

    public void b(String str) {
        Message obtainMessage = this.f27630b.obtainMessage();
        obtainMessage.obj = str;
        obtainMessage.sendToTarget();
    }
}
