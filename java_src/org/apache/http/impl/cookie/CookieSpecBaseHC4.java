package org.apache.http.impl.cookie;

import io.netty.handler.codec.http.HttpHeaders;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.util.Args;
@NotThreadSafe
/* loaded from: classes5.dex */
public abstract class CookieSpecBaseHC4 extends AbstractCookieSpecHC4 {
    /* JADX INFO: Access modifiers changed from: protected */
    public static String getDefaultDomain(CookieOrigin cookieOrigin) {
        return cookieOrigin.getHost();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String getDefaultPath(CookieOrigin cookieOrigin) {
        String path = cookieOrigin.getPath();
        int lastIndexOf = path.lastIndexOf(47);
        if (lastIndexOf >= 0) {
            if (lastIndexOf == 0) {
                lastIndexOf = 1;
            }
            return path.substring(0, lastIndexOf);
        }
        return path;
    }

    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        for (CookieAttributeHandler cookieAttributeHandler : getAttribHandlers()) {
            if (!cookieAttributeHandler.match(cookie, cookieOrigin)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<Cookie> parse(HeaderElement[] headerElementArr, CookieOrigin cookieOrigin) throws MalformedCookieException {
        ArrayList arrayList = new ArrayList(headerElementArr.length);
        for (HeaderElement headerElement : headerElementArr) {
            String name = headerElement.getName();
            String value = headerElement.getValue();
            if (name != null && name.length() != 0) {
                BasicClientCookieHC4 basicClientCookieHC4 = new BasicClientCookieHC4(name, value);
                basicClientCookieHC4.setPath(getDefaultPath(cookieOrigin));
                basicClientCookieHC4.setDomain(getDefaultDomain(cookieOrigin));
                NameValuePair[] parameters = headerElement.getParameters();
                for (int length = parameters.length - 1; length >= 0; length--) {
                    NameValuePair nameValuePair = parameters[length];
                    String lowerCase = nameValuePair.getName().toLowerCase(Locale.ENGLISH);
                    basicClientCookieHC4.setAttribute(lowerCase, nameValuePair.getValue());
                    CookieAttributeHandler findAttribHandler = findAttribHandler(lowerCase);
                    if (findAttribHandler != null) {
                        findAttribHandler.parse(basicClientCookieHC4, nameValuePair.getValue());
                    }
                }
                arrayList.add(basicClientCookieHC4);
            } else {
                throw new MalformedCookieException("Cookie name may not be empty");
            }
        }
        return arrayList;
    }

    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        for (CookieAttributeHandler cookieAttributeHandler : getAttribHandlers()) {
            cookieAttributeHandler.validate(cookie, cookieOrigin);
        }
    }
}
