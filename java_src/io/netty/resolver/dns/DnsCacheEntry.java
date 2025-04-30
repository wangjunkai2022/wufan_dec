package io.netty.resolver.dns;

import java.net.InetAddress;
/* loaded from: classes5.dex */
public interface DnsCacheEntry {
    InetAddress address();

    Throwable cause();
}
