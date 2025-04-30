package com.efs.sdk.base.core.util.a;

import androidx.annotation.NonNull;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static ThreadPoolExecutor f11389a = new ThreadPoolExecutor(2, 2, 10, TimeUnit.MINUTES, new LinkedBlockingQueue(Integer.MAX_VALUE), new ThreadPoolExecutor.DiscardOldestPolicy());

    public static Future<?> a(@NonNull Runnable runnable) {
        try {
            return f11389a.submit(runnable);
        } catch (Throwable th) {
            com.efs.sdk.base.core.util.d.b("efs.util.concurrent", "submit task error!", th);
            return null;
        }
    }
}
