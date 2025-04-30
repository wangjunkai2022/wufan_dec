package io.netty.util;
/* loaded from: classes5.dex */
public interface ReferenceCounted {
    int refCnt();

    boolean release();

    boolean release(int i2);

    ReferenceCounted retain();

    ReferenceCounted retain(int i2);

    ReferenceCounted touch();

    ReferenceCounted touch(Object obj);
}
