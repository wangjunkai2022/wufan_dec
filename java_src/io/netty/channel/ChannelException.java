package io.netty.channel;

import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SuppressJava6Requirement;
/* loaded from: classes5.dex */
public class ChannelException extends RuntimeException {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long serialVersionUID = 2908618315971075004L;

    public ChannelException() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ChannelException newStatic(String str, Throwable th) {
        if (PlatformDependent.javaVersion() >= 7) {
            return new ChannelException(str, th, true);
        }
        return new ChannelException(str, th);
    }

    public ChannelException(String str, Throwable th) {
        super(str, th);
    }

    public ChannelException(String str) {
        super(str);
    }

    public ChannelException(Throwable th) {
        super(th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressJava6Requirement(reason = "uses Java 7+ RuntimeException.<init>(String, Throwable, boolean, boolean) but is guarded by version checks")
    public ChannelException(String str, Throwable th, boolean z3) {
        super(str, th, false, true);
    }
}
