package org.apache.http.impl.cookie;

import com.join.mgps.Util.g0;
import external.org.apache.commons.lang3.d;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.Locale;
import m.a;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class RFC2965DomainAttributeHandlerHC4 implements CookieAttributeHandler {
    public boolean domainMatch(String str, String str2) {
        return str.equals(str2) || (str2.startsWith(g0.f27568a) && str.endsWith(str2));
    }

    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        String lowerCase = cookieOrigin.getHost().toLowerCase(Locale.ENGLISH);
        String domain = cookie.getDomain();
        return domainMatch(lowerCase, domain) && lowerCase.substring(0, lowerCase.length() - domain.length()).indexOf(46) == -1;
    }

    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, HttpHeaders.Names.COOKIE);
        if (str != null) {
            if (str.trim().length() != 0) {
                String lowerCase = str.toLowerCase(Locale.ENGLISH);
                if (!str.startsWith(g0.f27568a)) {
                    lowerCase = d.f65364a + lowerCase;
                }
                setCookie.setDomain(lowerCase);
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
        Locale locale = Locale.ENGLISH;
        String lowerCase = host.toLowerCase(locale);
        if (cookie.getDomain() != null) {
            String lowerCase2 = cookie.getDomain().toLowerCase(locale);
            if ((cookie instanceof ClientCookie) && ((ClientCookie) cookie).containsAttribute("domain")) {
                if (lowerCase2.startsWith(g0.f27568a)) {
                    int indexOf = lowerCase2.indexOf(46, 1);
                    if ((indexOf >= 0 && indexOf != lowerCase2.length() - 1) || lowerCase2.equals(".local")) {
                        if (domainMatch(lowerCase, lowerCase2)) {
                            if (lowerCase.substring(0, lowerCase.length() - lowerCase2.length()).indexOf(46) == -1) {
                                return;
                            }
                            throw new CookieRestrictionViolationException("Domain attribute \"" + cookie.getDomain() + "\" violates RFC 2965: effective host minus domain may not contain any dots");
                        }
                        throw new CookieRestrictionViolationException("Domain attribute \"" + cookie.getDomain() + "\" violates RFC 2965: effective host name does not domain-match domain attribute.");
                    }
                    throw new CookieRestrictionViolationException("Domain attribute \"" + cookie.getDomain() + "\" violates RFC 2965: the value contains no embedded dots and the value is not .local");
                }
                throw new CookieRestrictionViolationException("Domain attribute \"" + cookie.getDomain() + "\" violates RFC 2109: domain must start with a dot");
            } else if (cookie.getDomain().equals(lowerCase)) {
                return;
            } else {
                throw new CookieRestrictionViolationException("Illegal domain attribute: \"" + cookie.getDomain() + "\".Domain of origin: \"" + lowerCase + a.f72569g);
            }
        }
        throw new CookieRestrictionViolationException("Invalid cookie state: domain not specified");
    }
}
