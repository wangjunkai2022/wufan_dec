package j3;

import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.e;
import org.jboss.netty.channel.j;
/* compiled from: ChannelGroupFuture.java */
/* loaded from: classes5.dex */
public interface b extends Iterable<j> {
    boolean U();

    boolean Y();

    void a0(c cVar);

    b await() throws InterruptedException;

    boolean await(long j4) throws InterruptedException;

    boolean await(long j4, TimeUnit timeUnit) throws InterruptedException;

    b awaitUninterruptibly();

    boolean awaitUninterruptibly(long j4);

    boolean awaitUninterruptibly(long j4, TimeUnit timeUnit);

    boolean isDone();

    boolean isPartialFailure();

    boolean isPartialSuccess();

    @Override // java.lang.Iterable
    Iterator<j> iterator();

    j k(Integer num);

    j m(e eVar);

    a m0();

    void y0(c cVar);
}
