package org.apache.http.impl.cookie;

import com.join.mgps.Util.g0;
import external.org.apache.commons.lang3.d;
import io.netty.handler.codec.http.HttpHeaders;
import m.a;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class BasicDomainHandlerHC4 implements CookieAttributeHandler {
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        String host = cookieOrigin.getHost();
        String domain = cookie.getDomain();
        if (domain == null) {
            return false;
        }
        if (host.equals(domain)) {
            return true;
        }
        if (!domain.startsWith(g0.f27568a)) {
            domain = d.f65364a + domain;
        }
        return host.endsWith(domain) || host.equals(domain.substring(1));
    }

    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, HttpHeaders.Names.COOKIE);
        if (str != null) {
            if (str.trim().length() != 0) {
                setCookie.setDomain(str);
                return;
            }
            throw new MalformedCookieException("Blank value for domain attribute");
        }
        throw new MalformedCookieException("Missing value for domain attribute");
    }

    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        String host = cookieOrigin.getHost();
        String domain = cookie.getDomain();
        if (domain != null) {
            if (host.contains(g0.f27568a)) {
                if (host.endsWith(domain)) {
                    return;
                }
                if (domain.startsWith(g0.f27568a)) {
                    domain = domain.substring(1, domain.length());
                }
                if (host.equals(domain)) {
                    return;
                }
                throw new CookieRestrictionViolationException("Illegal domain attribute \"" + domain + "\". Domain of origin: \"" + host + a.f72569g);
            } else if (host.equals(domain)) {
                return;
            } else {
                throw new CookieRestrictionViolationException("Illegal domain attribute \"" + domain + "\". Domain of origin: \"" + host + a.f72569g);
            }
        }
        throw new CookieRestrictionViolationException("Cookie domain may not be null");
    }
}
