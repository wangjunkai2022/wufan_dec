package com.heepay.plugin.c;

import android.os.Message;
/* loaded from: classes2.dex */
public class e {
    public static Message a(int i2, com.heepay.plugin.domain.f fVar) {
        Message obtain = Message.obtain();
        obtain.what = i2;
        obtain.obj = fVar.b();
        return obtain;
    }

    public static Message a(int i2, Exception exc, String str) {
        Message obtain = Message.obtain();
        obtain.what = i2;
        if (exc.getMessage() != null) {
            obtain.obj = exc.getMessage();
        } else {
            obtain.obj = str;
        }
        return obtain;
    }

    public static Message a(int i2, String str) {
        Message obtain = Message.obtain();
        obtain.what = i2;
        obtain.obj = str;
        return obtain;
    }

    public static Message b(int i2, com.heepay.plugin.domain.f fVar) {
        Message obtain = Message.obtain();
        obtain.what = i2;
        obtain.obj = fVar.c();
        return obtain;
    }
}
