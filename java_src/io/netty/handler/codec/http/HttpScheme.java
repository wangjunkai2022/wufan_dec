package io.netty.handler.codec.http;

import com.facebook.common.util.f;
import io.netty.util.AsciiString;
/* loaded from: classes5.dex */
public final class HttpScheme {
    public static final HttpScheme HTTP = new HttpScheme(80, f.f11765a);
    public static final HttpScheme HTTPS = new HttpScheme(443, "https");
    private final AsciiString name;
    private final int port;

    private HttpScheme(int i2, String str) {
        this.port = i2;
        this.name = AsciiString.cached(str);
    }

    public boolean equals(Object obj) {
        if (obj instanceof HttpScheme) {
            HttpScheme httpScheme = (HttpScheme) obj;
            return httpScheme.port() == this.port && httpScheme.name().equals(this.name);
        }
        return false;
    }

    public int hashCode() {
        return (this.port * 31) + this.name.hashCode();
    }

    public AsciiString name() {
        return this.name;
    }

    public int port() {
        return this.port;
    }

    public String toString() {
        return this.name.toString();
    }
}
