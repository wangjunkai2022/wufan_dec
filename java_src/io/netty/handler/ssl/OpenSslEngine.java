package io.netty.handler.ssl;

import io.netty.buffer.ByteBufAllocator;
/* loaded from: classes5.dex */
public final class OpenSslEngine extends ReferenceCountedOpenSslEngine {
    /* JADX INFO: Access modifiers changed from: package-private */
    public OpenSslEngine(OpenSslContext openSslContext, ByteBufAllocator byteBufAllocator, String str, int i2, boolean z3) {
        super(openSslContext, byteBufAllocator, str, i2, z3, false);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        OpenSsl.releaseIfNeeded(this);
    }
}
