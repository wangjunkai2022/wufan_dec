package org.apache.http.impl.cookie;

import io.netty.handler.codec.http.HttpHeaders;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class BasicSecureHandlerHC4 extends AbstractCookieAttributeHandlerHC4 {
    @Override // org.apache.http.impl.cookie.AbstractCookieAttributeHandlerHC4
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        return !cookie.isSecure() || cookieOrigin.isSecure();
    }

    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, HttpHeaders.Names.COOKIE);
        setCookie.setSecure(true);
    }
}
