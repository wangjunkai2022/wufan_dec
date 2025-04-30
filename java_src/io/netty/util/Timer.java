package io.netty.util;

import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public interface Timer {
    Timeout newTimeout(TimerTask timerTask, long j4, TimeUnit timeUnit);

    Set<Timeout> stop();
}
