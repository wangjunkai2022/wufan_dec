package com.join.mgps.Util;

import android.os.Handler;
import android.os.Looper;
/* compiled from: MainHandler.java */
/* loaded from: classes3.dex */
public class x0 extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private static volatile x0 f27879a;

    private x0() {
        super(Looper.getMainLooper());
    }

    public static x0 a() {
        if (f27879a == null) {
            synchronized (x0.class) {
                if (f27879a == null) {
                    f27879a = new x0();
                }
            }
        }
        return f27879a;
    }
}
