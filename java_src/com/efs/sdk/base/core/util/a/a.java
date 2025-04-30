package com.efs.sdk.base.core.util.a;

import android.os.HandlerThread;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static HandlerThread f11388a;

    static {
        HandlerThread handlerThread = new HandlerThread("efs-base", 10);
        f11388a = handlerThread;
        handlerThread.start();
    }
}
