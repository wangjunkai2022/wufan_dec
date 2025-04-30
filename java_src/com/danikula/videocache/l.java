package com.danikula.videocache;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;
/* compiled from: IgnoreHostProxySelector.java */
/* loaded from: classes2.dex */
class l extends ProxySelector {

    /* renamed from: d  reason: collision with root package name */
    private static final List<Proxy> f11142d = Arrays.asList(Proxy.NO_PROXY);

    /* renamed from: a  reason: collision with root package name */
    private final ProxySelector f11143a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11144b;

    /* renamed from: c  reason: collision with root package name */
    private final int f11145c;

    l(ProxySelector proxySelector, String str, int i2) {
        this.f11143a = (ProxySelector) n.d(proxySelector);
        this.f11144b = (String) n.d(str);
        this.f11145c = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, int i2) {
        ProxySelector.setDefault(new l(ProxySelector.getDefault(), str, i2));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f11143a.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        return this.f11144b.equals(uri.getHost()) && this.f11145c == uri.getPort() ? f11142d : this.f11143a.select(uri);
    }
}
