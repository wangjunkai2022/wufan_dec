package com.umeng.analytics.pro;

import com.umeng.analytics.pro.ar;
import com.umeng.analytics.pro.ay;
import java.io.Serializable;
/* compiled from: TBase.java */
/* loaded from: classes4.dex */
public interface ar<T extends ar<?, ?>, F extends ay> extends Serializable {
    void clear();

    ar<T, F> deepCopy();

    F fieldForId(int i2);

    void read(bq bqVar) throws ax;

    void write(bq bqVar) throws ax;
}
