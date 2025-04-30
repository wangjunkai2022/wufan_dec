package org.jboss.netty.channel;

import java.util.concurrent.TimeUnit;
/* compiled from: ChannelFuture.java */
/* loaded from: classes5.dex */
public interface j {
    Throwable a();

    j await() throws InterruptedException;

    boolean await(long j4) throws InterruptedException;

    boolean await(long j4, TimeUnit timeUnit) throws InterruptedException;

    j awaitUninterruptibly();

    boolean awaitUninterruptibly(long j4);

    boolean awaitUninterruptibly(long j4, TimeUnit timeUnit);

    void b(k kVar);

    void c(k kVar);

    boolean cancel();

    boolean d(long j4, long j5, long j6);

    @Deprecated
    j e() throws Exception;

    e getChannel();

    boolean isCancelled();

    boolean isDone();

    boolean isSuccess();

    boolean setFailure(Throwable th);

    boolean setSuccess();

    j sync() throws InterruptedException;

    j syncUninterruptibly();
}
