package org.apache.http.pool;
/* loaded from: classes5.dex */
public interface ConnPoolControl<T> {
    int getDefaultMaxPerRoute();

    int getMaxPerRoute(T t3);

    int getMaxTotal();

    PoolStats getStats(T t3);

    PoolStats getTotalStats();

    void setDefaultMaxPerRoute(int i2);

    void setMaxPerRoute(T t3, int i2);

    void setMaxTotal(int i2);
}
