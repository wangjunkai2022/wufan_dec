package io.netty.util;
/* loaded from: classes5.dex */
public interface Timeout {
    boolean cancel();

    boolean isCancelled();

    boolean isExpired();

    TimerTask task();

    Timer timer();
}
