package io.netty.resolver.dns.macos;

import io.netty.channel.unix.NativeInetAddress;
import java.net.InetSocketAddress;
/* loaded from: classes5.dex */
final class DnsResolver {
    private final String domain;
    private final InetSocketAddress[] nameservers;
    private final String options;
    private final int port;
    private final int searchOrder;
    private final String[] searches;
    private final int timeout;

    DnsResolver(String str, byte[][] bArr, int i2, String[] strArr, String str2, int i4, int i5) {
        this.domain = str;
        if (bArr == null) {
            this.nameservers = new InetSocketAddress[0];
        } else {
            this.nameservers = new InetSocketAddress[bArr.length];
            for (int i6 = 0; i6 < bArr.length; i6++) {
                byte[] bArr2 = bArr[i6];
                this.nameservers[i6] = NativeInetAddress.address(bArr2, 0, bArr2.length);
            }
        }
        this.port = i2;
        this.searches = strArr;
        this.options = str2;
        this.timeout = i4;
        this.searchOrder = i5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String domain() {
        return this.domain;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InetSocketAddress[] nameservers() {
        return this.nameservers;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String options() {
        return this.options;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int port() {
        return this.port;
    }

    int searchOrder() {
        return this.searchOrder;
    }

    String[] searches() {
        return this.searches;
    }

    int timeout() {
        return this.timeout;
    }
}
