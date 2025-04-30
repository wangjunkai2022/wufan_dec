package com.mob.tools.utils;

import com.mob.tools.MobLog;
/* loaded from: classes4.dex */
public abstract class c implements Runnable {
    protected abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }
}
