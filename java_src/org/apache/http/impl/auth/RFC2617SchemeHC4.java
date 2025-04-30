package org.apache.http.impl.auth;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.Consts;
import org.apache.http.HeaderElement;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.ChallengeState;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.message.BasicHeaderValueParserHC4;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;
@NotThreadSafe
/* loaded from: classes5.dex */
public abstract class RFC2617SchemeHC4 extends AuthSchemeBaseHC4 {
    private final Charset credentialsCharset;
    private final Map<String, String> params;

    @Deprecated
    public RFC2617SchemeHC4(ChallengeState challengeState) {
        super(challengeState);
        this.params = new HashMap();
        this.credentialsCharset = Consts.ASCII;
    }

    public Charset getCredentialsCharset() {
        return this.credentialsCharset;
    }

    public String getParameter(String str) {
        if (str == null) {
            return null;
        }
        return this.params.get(str.toLowerCase(Locale.ENGLISH));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map<String, String> getParameters() {
        return this.params;
    }

    public String getRealm() {
        return getParameter("realm");
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4
    protected void parseChallenge(CharArrayBuffer charArrayBuffer, int i2, int i4) throws MalformedChallengeException {
        HeaderElement[] parseElements = BasicHeaderValueParserHC4.INSTANCE.parseElements(charArrayBuffer, new ParserCursor(i2, charArrayBuffer.length()));
        if (parseElements.length != 0) {
            this.params.clear();
            for (HeaderElement headerElement : parseElements) {
                this.params.put(headerElement.getName().toLowerCase(Locale.ENGLISH), headerElement.getValue());
            }
            return;
        }
        throw new MalformedChallengeException("Authentication challenge is empty");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getCredentialsCharset(HttpRequest httpRequest) {
        String str = (String) httpRequest.getParams().getParameter("http.auth.credential-charset");
        return str == null ? getCredentialsCharset().name() : str;
    }

    public RFC2617SchemeHC4(Charset charset) {
        this.params = new HashMap();
        this.credentialsCharset = charset == null ? Consts.ASCII : charset;
    }

    public RFC2617SchemeHC4() {
        this(Consts.ASCII);
    }
}
