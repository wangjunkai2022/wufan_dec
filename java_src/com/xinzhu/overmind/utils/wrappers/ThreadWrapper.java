package com.xinzhu.overmind.utils.wrappers;

import android.os.Looper;
/* loaded from: classes3.dex */
public class ThreadWrapper {
    public static boolean isMainThread() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }
}
