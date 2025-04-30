package org.apache.http.impl.cookie;

import io.netty.handler.codec.http.HttpHeaders;
import java.util.StringTokenizer;
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
public class RFC2965PortAttributeHandlerHC4 implements CookieAttributeHandler {
    private static int[] parsePortAttribute(String str) throws MalformedCookieException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            try {
                iArr[i2] = Integer.parseInt(stringTokenizer.nextToken().trim());
                if (iArr[i2] < 0) {
                    throw new MalformedCookieException("Invalid Port attribute.");
                }
                i2++;
            } catch (NumberFormatException e4) {
                throw new MalformedCookieException("Invalid Port attribute: " + e4.getMessage());
            }
        }
        return iArr;
    }

    private static boolean portMatch(int i2, int[] iArr) {
        for (int i4 : iArr) {
            if (i2 == i4) {
                return true;
            }
        }
        return false;
    }

    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        int port = cookieOrigin.getPort();
        if ((cookie instanceof ClientCookie) && ((ClientCookie) cookie).containsAttribute("port")) {
            return cookie.getPorts() != null && portMatch(port, cookie.getPorts());
        }
        return true;
    }

    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, HttpHeaders.Names.COOKIE);
        if (setCookie instanceof SetCookie2) {
            SetCookie2 setCookie2 = (SetCookie2) setCookie;
            if (str == null || str.trim().length() <= 0) {
                return;
            }
            setCookie2.setPorts(parsePortAttribute(str));
        }
    }

    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        int port = cookieOrigin.getPort();
        if ((cookie instanceof ClientCookie) && ((ClientCookie) cookie).containsAttribute("port") && !portMatch(port, cookie.getPorts())) {
            throw new CookieRestrictionViolationException("Port attribute violates RFC 2965: Request port not found in cookie's port list.");
        }
    }
}
