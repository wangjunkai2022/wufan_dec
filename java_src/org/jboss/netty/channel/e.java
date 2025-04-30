package org.jboss.netty.channel;

import java.net.SocketAddress;
/* compiled from: Channel.java */
/* loaded from: classes5.dex */
public interface e extends Comparable<e> {

    /* renamed from: c0  reason: collision with root package name */
    public static final int f73447c0 = 0;

    /* renamed from: d0  reason: collision with root package name */
    public static final int f73448d0 = 1;

    /* renamed from: e0  reason: collision with root package name */
    public static final int f73449e0 = 4;

    /* renamed from: f0  reason: collision with root package name */
    public static final int f73450f0 = 5;

    int Q();

    void b(Object obj);

    j bind(SocketAddress socketAddress);

    j close();

    j connect(SocketAddress socketAddress);

    Object d();

    j disconnect();

    j e();

    j g(int i2);

    f getConfig();

    Integer getId();

    SocketAddress getLocalAddress();

    e getParent();

    n getPipeline();

    SocketAddress getRemoteAddress();

    j h(boolean z3);

    j i(Object obj, SocketAddress socketAddress);

    boolean isConnected();

    boolean isOpen();

    boolean isReadable();

    boolean isWritable();

    boolean r();

    i t();

    j t0();

    j write(Object obj);
}
