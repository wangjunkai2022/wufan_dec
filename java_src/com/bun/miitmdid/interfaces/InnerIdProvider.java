package com.bun.miitmdid.interfaces;
/* loaded from: classes2.dex */
public interface InnerIdProvider extends IdSupplier {
    boolean isSync();

    void shutDown();

    void startAction(IIdentifierListener iIdentifierListener);
}
