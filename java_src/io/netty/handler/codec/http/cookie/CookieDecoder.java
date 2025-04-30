package io.netty.handler.codec.http.cookie;

import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.CharBuffer;
/* loaded from: classes5.dex */
public abstract class CookieDecoder {
    private final InternalLogger logger = InternalLoggerFactory.getInstance(getClass());
    private final boolean strict;

    /* JADX INFO: Access modifiers changed from: protected */
    public CookieDecoder(boolean z3) {
        this.strict = z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DefaultCookie initCookie(String str, int i2, int i4, int i5, int i6) {
        int firstInvalidCookieValueOctet;
        int firstInvalidCookieNameOctet;
        if (i2 == -1 || i2 == i4) {
            this.logger.debug("Skipping cookie with null name");
            return null;
        } else if (i5 == -1) {
            this.logger.debug("Skipping cookie with null value");
            return null;
        } else {
            CharBuffer wrap = CharBuffer.wrap(str, i5, i6);
            CharSequence unwrapValue = CookieUtil.unwrapValue(wrap);
            if (unwrapValue == null) {
                this.logger.debug("Skipping cookie because starting quotes are not properly balanced in '{}'", wrap);
                return null;
            }
            String substring = str.substring(i2, i4);
            if (this.strict && (firstInvalidCookieNameOctet = CookieUtil.firstInvalidCookieNameOctet(substring)) >= 0) {
                if (this.logger.isDebugEnabled()) {
                    this.logger.debug("Skipping cookie because name '{}' contains invalid char '{}'", substring, Character.valueOf(substring.charAt(firstInvalidCookieNameOctet)));
                }
                return null;
            }
            boolean z3 = unwrapValue.length() != i6 - i5;
            if (this.strict && (firstInvalidCookieValueOctet = CookieUtil.firstInvalidCookieValueOctet(unwrapValue)) >= 0) {
                if (this.logger.isDebugEnabled()) {
                    this.logger.debug("Skipping cookie because value '{}' contains invalid char '{}'", unwrapValue, Character.valueOf(unwrapValue.charAt(firstInvalidCookieValueOctet)));
                }
                return null;
            }
            DefaultCookie defaultCookie = new DefaultCookie(substring, unwrapValue.toString());
            defaultCookie.setWrap(z3);
            return defaultCookie;
        }
    }
}
