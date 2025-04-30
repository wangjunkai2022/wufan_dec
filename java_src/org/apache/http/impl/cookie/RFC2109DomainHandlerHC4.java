package org.apache.http.impl.cookie;

import com.join.mgps.Util.g0;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.Locale;
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
public class RFC2109DomainHandlerHC4 implements CookieAttributeHandler {
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        String host = cookieOrigin.getHost();
        String domain = cookie.getDomain();
        if (domain == null) {
            return false;
        }
        return host.equals(domain) || (domain.startsWith(g0.f27568a) && host.endsWith(domain));
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
            if (domain.equals(host)) {
                return;
            }
            if (domain.indexOf(46) != -1) {
                if (domain.startsWith(g0.f27568a)) {
                    int indexOf = domain.indexOf(46, 1);
                    if (indexOf >= 0 && indexOf != domain.length() - 1) {
                        String lowerCase = host.toLowerCase(Locale.ENGLISH);
                        if (lowerCase.endsWith(domain)) {
                            if (lowerCase.substring(0, lowerCase.length() - domain.length()).indexOf(46) == -1) {
                                return;
                            }
                            throw new CookieRestrictionViolationException("Domain attribute \"" + domain + "\" violates RFC 2109: host minus domain may not contain any dots");
                        }
                        throw new CookieRestrictionViolationException("Illegal domain attribute \"" + domain + "\". Domain of origin: \"" + lowerCase + a.f72569g);
                    }
                    throw new CookieRestrictionViolationException("Domain attribute \"" + domain + "\" violates RFC 2109: domain must contain an embedded dot");
                }
                throw new CookieRestrictionViolationException("Domain attribute \"" + domain + "\" violates RFC 2109: domain must start with a dot");
            }
            throw new CookieRestrictionViolationException("Domain attribute \"" + domain + "\" does not match the host \"" + host + a.f72569g);
        }
        throw new CookieRestrictionViolationException("Cookie domain may not be null");
    }
}
