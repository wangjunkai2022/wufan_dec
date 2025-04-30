package org.apache.http.impl.cookie;

import com.join.mgps.Util.g0;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class NetscapeDomainHandlerHC4 extends BasicDomainHandlerHC4 {
    private static boolean isSpecialDomain(String str) {
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        return upperCase.endsWith(".COM") || upperCase.endsWith(".EDU") || upperCase.endsWith(".NET") || upperCase.endsWith(".GOV") || upperCase.endsWith(".MIL") || upperCase.endsWith(".ORG") || upperCase.endsWith(".INT");
    }

    @Override // org.apache.http.impl.cookie.BasicDomainHandlerHC4
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        String host = cookieOrigin.getHost();
        String domain = cookie.getDomain();
        if (domain == null) {
            return false;
        }
        return host.endsWith(domain);
    }

    @Override // org.apache.http.impl.cookie.BasicDomainHandlerHC4
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        super.validate(cookie, cookieOrigin);
        String host = cookieOrigin.getHost();
        String domain = cookie.getDomain();
        if (host.contains(g0.f27568a)) {
            int countTokens = new StringTokenizer(domain, g0.f27568a).countTokens();
            if (!isSpecialDomain(domain)) {
                if (countTokens >= 3) {
                    return;
                }
                throw new CookieRestrictionViolationException("Domain attribute \"" + domain + "\" violates the Netscape cookie specification");
            } else if (countTokens >= 2) {
            } else {
                throw new CookieRestrictionViolationException("Domain attribute \"" + domain + "\" violates the Netscape cookie specification for special domains");
            }
        }
    }
}
