package org.apache.http.impl.cookie;

import io.netty.handler.codec.http.HttpHeaders;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class RFC2109VersionHandlerHC4 extends AbstractCookieAttributeHandlerHC4 {
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, HttpHeaders.Names.COOKIE);
        if (str != null) {
            if (str.trim().length() != 0) {
                try {
                    setCookie.setVersion(Integer.parseInt(str));
                    return;
                } catch (NumberFormatException e4) {
                    throw new MalformedCookieException("Invalid version: " + e4.getMessage());
                }
            }
            throw new MalformedCookieException("Blank value for version attribute");
        }
        throw new MalformedCookieException("Missing value for version attribute");
    }

    @Override // org.apache.http.impl.cookie.AbstractCookieAttributeHandlerHC4
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        if (cookie.getVersion() < 0) {
            throw new CookieRestrictionViolationException("Cookie version may not be negative");
        }
    }
}
