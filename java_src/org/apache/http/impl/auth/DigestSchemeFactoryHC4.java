package org.apache.http.impl.auth;

import java.nio.charset.Charset;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeFactory;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
@Immutable
/* loaded from: classes5.dex */
public class DigestSchemeFactoryHC4 implements AuthSchemeFactory, AuthSchemeProvider {
    private final Charset charset;

    public DigestSchemeFactoryHC4(Charset charset) {
        this.charset = charset;
    }

    @Override // org.apache.http.auth.AuthSchemeProvider
    public AuthScheme create(HttpContext httpContext) {
        return new DigestSchemeHC4(this.charset);
    }

    public AuthScheme newInstance(HttpParams httpParams) {
        return new DigestSchemeHC4();
    }

    public DigestSchemeFactoryHC4() {
        this(null);
    }
}
