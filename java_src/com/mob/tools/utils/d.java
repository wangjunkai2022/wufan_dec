package com.mob.tools.utils;

import android.text.TextUtils;
import com.mob.tools.MobLog;
/* loaded from: classes4.dex */
public abstract class d extends Thread {
    public d() {
    }

    protected abstract void a();

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }

    public d(String str) {
        if (TextUtils.isEmpty("M-")) {
            return;
        }
        setName("M-" + str);
    }
}
