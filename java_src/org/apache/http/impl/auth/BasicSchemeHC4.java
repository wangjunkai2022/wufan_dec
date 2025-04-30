package org.apache.http.impl.auth;

import android.util.Base64;
import java.nio.charset.Charset;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ChallengeState;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.message.BufferedHeader;
import org.apache.http.protocol.BasicHttpContextHC4;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EncodingUtils;
@NotThreadSafe
/* loaded from: classes5.dex */
public class BasicSchemeHC4 extends RFC2617SchemeHC4 {
    private boolean complete;

    public BasicSchemeHC4(Charset charset) {
        super(charset);
        this.complete = false;
    }

    @Deprecated
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        return authenticate(credentials, httpRequest, new BasicHttpContextHC4());
    }

    public String getSchemeName() {
        return "basic";
    }

    public boolean isComplete() {
        return this.complete;
    }

    public boolean isConnectionBased() {
        return false;
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4
    public void processChallenge(Header header) throws MalformedChallengeException {
        super.processChallenge(header);
        this.complete = true;
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4, org.apache.http.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        Args.notNull(credentials, "Credentials");
        Args.notNull(httpRequest, "HTTP request");
        StringBuilder sb = new StringBuilder();
        sb.append(credentials.getUserPrincipal().getName());
        sb.append(":");
        sb.append(credentials.getPassword() == null ? "null" : credentials.getPassword());
        byte[] encode = Base64.encode(EncodingUtils.getBytes(sb.toString(), getCredentialsCharset(httpRequest)), 2);
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
        if (isProxy()) {
            charArrayBuffer.append("Proxy-Authorization");
        } else {
            charArrayBuffer.append("Authorization");
        }
        charArrayBuffer.append(": Basic ");
        charArrayBuffer.append(encode, 0, encode.length);
        return new BufferedHeader(charArrayBuffer);
    }

    @Deprecated
    public BasicSchemeHC4(ChallengeState challengeState) {
        super(challengeState);
    }

    public BasicSchemeHC4() {
        this(Consts.ASCII);
    }

    @Deprecated
    public static Header authenticate(Credentials credentials, String str, boolean z3) {
        Args.notNull(credentials, "Credentials");
        Args.notNull(str, "charset");
        StringBuilder sb = new StringBuilder();
        sb.append(credentials.getUserPrincipal().getName());
        sb.append(":");
        sb.append(credentials.getPassword() == null ? "null" : credentials.getPassword());
        byte[] encode = Base64.encode(EncodingUtils.getBytes(sb.toString(), str), 2);
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
        if (z3) {
            charArrayBuffer.append("Proxy-Authorization");
        } else {
            charArrayBuffer.append("Authorization");
        }
        charArrayBuffer.append(": Basic ");
        charArrayBuffer.append(encode, 0, encode.length);
        return new BufferedHeader(charArrayBuffer);
    }
}
