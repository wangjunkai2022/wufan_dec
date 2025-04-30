package com.facebook.datasource;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* compiled from: DataSource.java */
/* loaded from: classes.dex */
public interface c<T> {
    boolean a();

    boolean c();

    boolean close();

    @Nullable
    Throwable d();

    void e(e<T> eVar, Executor executor);

    boolean f();

    @Nullable
    T g();

    float getProgress();

    boolean h();

    boolean isClosed();
}
