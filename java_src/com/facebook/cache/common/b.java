package com.facebook.cache.common;

import com.facebook.cache.common.CacheEventListener;
import java.io.IOException;
import javax.annotation.Nullable;
/* compiled from: CacheEvent.java */
/* loaded from: classes.dex */
public interface b {
    @Nullable
    IOException a();

    @Nullable
    String b();

    long c();

    long d();

    @Nullable
    c e();

    @Nullable
    CacheEventListener.EvictionReason f();

    long g();
}
