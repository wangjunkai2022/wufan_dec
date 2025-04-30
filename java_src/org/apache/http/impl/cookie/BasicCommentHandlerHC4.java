package org.apache.http.impl.cookie;

import io.netty.handler.codec.http.HttpHeaders;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class BasicCommentHandlerHC4 extends AbstractCookieAttributeHandlerHC4 {
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, HttpHeaders.Names.COOKIE);
        setCookie.setComment(str);
    }
}
