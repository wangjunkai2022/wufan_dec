package io.netty.handler.ssl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public interface OpenSslEngineMap {
    void add(ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine);

    ReferenceCountedOpenSslEngine get(long j4);

    ReferenceCountedOpenSslEngine remove(long j4);
}
