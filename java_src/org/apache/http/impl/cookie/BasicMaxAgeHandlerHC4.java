package org.apache.http.impl.cookie;

import io.netty.handler.codec.http.HttpHeaders;
import java.util.Date;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class BasicMaxAgeHandlerHC4 extends AbstractCookieAttributeHandlerHC4 {
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, HttpHeaders.Names.COOKIE);
        if (str != null) {
            try {
                int parseInt = Integer.parseInt(str);
                if (parseInt >= 0) {
                    setCookie.setExpiryDate(new Date(System.currentTimeMillis() + (parseInt * 1000)));
                    return;
                }
                throw new MalformedCookieException("Negative max-age attribute: " + str);
            } catch (NumberFormatException unused) {
                throw new MalformedCookieException("Invalid max-age attribute: " + str);
            }
        }
        throw new MalformedCookieException("Missing value for max-age attribute");
    }
}
