package org.apache.http.conn.scheme;

import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
@Deprecated
/* loaded from: classes5.dex */
class LayeredSocketFactoryAdaptor extends SocketFactoryAdaptor implements LayeredSocketFactory {
    private final LayeredSchemeSocketFactory factory;

    LayeredSocketFactoryAdaptor(LayeredSchemeSocketFactory layeredSchemeSocketFactory) {
        super(layeredSchemeSocketFactory);
        this.factory = layeredSchemeSocketFactory;
    }

    @Override // org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String str, int i2, boolean z3) throws IOException, UnknownHostException {
        return this.factory.createLayeredSocket(socket, str, i2, z3);
    }
}
