package org.apache.http.impl.cookie;

import io.netty.handler.codec.http.HttpHeaders;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.cookie.SetCookie2;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class RFC2965VersionAttributeHandlerHC4 implements CookieAttributeHandler {
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        return true;
    }

    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        int i2;
        Args.notNull(setCookie, HttpHeaders.Names.COOKIE);
        if (str != null) {
            try {
                i2 = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                i2 = -1;
            }
            if (i2 >= 0) {
                setCookie.setVersion(i2);
                return;
            }
            throw new MalformedCookieException("Invalid cookie version.");
        }
        throw new MalformedCookieException("Missing value for version attribute");
    }

    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        if ((cookie instanceof SetCookie2) && (cookie instanceof ClientCookie) && !((ClientCookie) cookie).containsAttribute("version")) {
            throw new CookieRestrictionViolationException("Violates RFC 2965. Version attribute is required.");
        }
    }
}
