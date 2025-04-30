package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.Selector;
import java.util.concurrent.TimeUnit;
/* compiled from: SelectorUtil.java */
/* loaded from: classes5.dex */
final class v {

    /* renamed from: a  reason: collision with root package name */
    static final int f73550a = Runtime.getRuntime().availableProcessors() * 2;

    /* renamed from: b  reason: collision with root package name */
    static final long f73551b = 500;

    /* renamed from: c  reason: collision with root package name */
    static final long f73552c;

    /* renamed from: d  reason: collision with root package name */
    static final long f73553d;

    /* renamed from: e  reason: collision with root package name */
    static final boolean f73554e;

    static {
        long f4 = org.jboss.netty.util.internal.j.f("org.jboss.netty.selectTimeout", f73551b);
        f73552c = f4;
        f73553d = TimeUnit.MILLISECONDS.toNanos(f4);
        f73554e = org.jboss.netty.util.internal.j.d("org.jboss.netty.epollBugWorkaround", false);
        try {
            if (System.getProperty("sun.nio.ch.bugLevel") == null) {
                System.setProperty("sun.nio.ch.bugLevel", "");
            }
        } catch (SecurityException e4) {
            e4.printStackTrace();
        }
    }

    private v() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Selector selector) throws IOException {
        try {
            return selector.select(f73552c);
        } catch (CancelledKeyException e4) {
            e4.printStackTrace();
            return -1;
        }
    }
}
