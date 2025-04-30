package j3;

import java.net.SocketAddress;
import java.util.Set;
import org.jboss.netty.channel.e;
/* compiled from: ChannelGroup.java */
/* loaded from: classes5.dex */
public interface a extends Set<e>, Comparable<a> {
    b close();

    b disconnect();

    b e();

    b g(int i2);

    String getName();

    b h(boolean z3);

    b i(Object obj, SocketAddress socketAddress);

    e k(Integer num);

    b write(Object obj);
}
