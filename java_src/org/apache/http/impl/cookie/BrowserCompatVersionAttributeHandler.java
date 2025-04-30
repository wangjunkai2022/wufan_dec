package org.apache.http.impl.cookie;

import io.netty.handler.codec.http.HttpHeaders;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class BrowserCompatVersionAttributeHandler extends AbstractCookieAttributeHandlerHC4 {
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, HttpHeaders.Names.COOKIE);
        if (str != null) {
            int i2 = 0;
            try {
                i2 = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
            }
            setCookie.setVersion(i2);
            return;
        }
        throw new MalformedCookieException("Missing value for version attribute");
    }
}
