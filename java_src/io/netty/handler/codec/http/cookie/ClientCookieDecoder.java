package io.netty.handler.codec.http.cookie;

import io.netty.handler.codec.DateFormatter;
import io.netty.util.internal.ObjectUtil;
import java.util.Date;
/* loaded from: classes5.dex */
public final class ClientCookieDecoder extends CookieDecoder {
    public static final ClientCookieDecoder STRICT = new ClientCookieDecoder(true);
    public static final ClientCookieDecoder LAX = new ClientCookieDecoder(false);

    /* loaded from: classes5.dex */
    private static class CookieBuilder {
        private final DefaultCookie cookie;
        private String domain;
        private int expiresEnd;
        private int expiresStart;
        private final String header;
        private boolean httpOnly;
        private long maxAge = Long.MIN_VALUE;
        private String path;
        private boolean secure;

        CookieBuilder(DefaultCookie defaultCookie, String str) {
            this.cookie = defaultCookie;
            this.header = str;
        }

        private String computeValue(int i2, int i4) {
            if (isValueDefined(i2, i4)) {
                return this.header.substring(i2, i4);
            }
            return null;
        }

        private static boolean isValueDefined(int i2, int i4) {
            return (i2 == -1 || i2 == i4) ? false : true;
        }

        private long mergeMaxAgeAndExpires() {
            Date parseHttpDate;
            long j4 = this.maxAge;
            if (j4 != Long.MIN_VALUE) {
                return j4;
            }
            if (!isValueDefined(this.expiresStart, this.expiresEnd) || (parseHttpDate = DateFormatter.parseHttpDate(this.header, this.expiresStart, this.expiresEnd)) == null) {
                return Long.MIN_VALUE;
            }
            long time = parseHttpDate.getTime() - System.currentTimeMillis();
            return (time / 1000) + (time % 1000 != 0 ? 1 : 0);
        }

        private void parse4(int i2, int i4, int i5) {
            if (this.header.regionMatches(true, i2, CookieHeaderNames.PATH, 0, 4)) {
                this.path = computeValue(i4, i5);
            }
        }

        private void parse6(int i2, int i4, int i5) {
            if (this.header.regionMatches(true, i2, CookieHeaderNames.DOMAIN, 0, 5)) {
                this.domain = computeValue(i4, i5);
            } else if (this.header.regionMatches(true, i2, CookieHeaderNames.SECURE, 0, 5)) {
                this.secure = true;
            }
        }

        private void parse7(int i2, int i4, int i5) {
            if (this.header.regionMatches(true, i2, "Expires", 0, 7)) {
                this.expiresStart = i4;
                this.expiresEnd = i5;
            } else if (this.header.regionMatches(true, i2, CookieHeaderNames.MAX_AGE, 0, 7)) {
                setMaxAge(computeValue(i4, i5));
            }
        }

        private void parse8(int i2) {
            if (this.header.regionMatches(true, i2, CookieHeaderNames.HTTPONLY, 0, 8)) {
                this.httpOnly = true;
            }
        }

        private void setMaxAge(String str) {
            try {
                this.maxAge = Math.max(Long.parseLong(str), 0L);
            } catch (NumberFormatException unused) {
            }
        }

        void appendAttribute(int i2, int i4, int i5, int i6) {
            int i7 = i4 - i2;
            if (i7 == 4) {
                parse4(i2, i5, i6);
            } else if (i7 == 6) {
                parse6(i2, i5, i6);
            } else if (i7 == 7) {
                parse7(i2, i5, i6);
            } else if (i7 == 8) {
                parse8(i2);
            }
        }

        Cookie cookie() {
            this.cookie.setDomain(this.domain);
            this.cookie.setPath(this.path);
            this.cookie.setMaxAge(mergeMaxAgeAndExpires());
            this.cookie.setSecure(this.secure);
            this.cookie.setHttpOnly(this.httpOnly);
            return this.cookie;
        }
    }

    private ClientCookieDecoder(boolean z3) {
        super(z3);
    }

    public Cookie decode(String str) {
        int i2;
        int i4;
        int i5;
        int i6;
        int length = ((String) ObjectUtil.checkNotNull(str, "header")).length();
        if (length == 0) {
            return null;
        }
        CookieBuilder cookieBuilder = null;
        int i7 = 0;
        while (i7 != length) {
            char charAt = str.charAt(i7);
            if (charAt == ',') {
                break;
            } else if (charAt == '\t' || charAt == '\n' || charAt == 11 || charAt == '\f' || charAt == '\r' || charAt == ' ' || charAt == ';') {
                i7++;
            } else {
                int i8 = i7;
                while (true) {
                    char charAt2 = str.charAt(i8);
                    if (charAt2 != ';') {
                        if (charAt2 != '=') {
                            i8++;
                            if (i8 == length) {
                                i2 = length;
                                i4 = i8;
                                break;
                            }
                        } else {
                            i5 = i8 + 1;
                            if (i5 == length) {
                                i2 = i8;
                                i4 = i5;
                                i6 = 0;
                                i5 = 0;
                            } else {
                                int indexOf = str.indexOf(59, i5);
                                i4 = indexOf > 0 ? indexOf : length;
                                i2 = i8;
                                i6 = i4;
                            }
                        }
                    } else {
                        i2 = i8;
                        i4 = i2;
                        break;
                    }
                }
                i6 = -1;
                i5 = -1;
                if (i6 > 0 && str.charAt(i6 - 1) == ',') {
                    i6--;
                }
                int i9 = i6;
                if (cookieBuilder == null) {
                    DefaultCookie initCookie = initCookie(str, i7, i2, i5, i9);
                    if (initCookie == null) {
                        return null;
                    }
                    cookieBuilder = new CookieBuilder(initCookie, str);
                } else {
                    cookieBuilder.appendAttribute(i7, i2, i5, i9);
                }
                i7 = i4;
            }
        }
        if (cookieBuilder != null) {
            return cookieBuilder.cookie();
        }
        return null;
    }
}
