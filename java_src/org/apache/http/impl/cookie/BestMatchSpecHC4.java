package org.apache.http.impl.cookie;

import io.netty.handler.codec.http.HttpHeaders;
import java.util.List;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie2;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
@NotThreadSafe
/* loaded from: classes5.dex */
public class BestMatchSpecHC4 implements CookieSpec {
    private BrowserCompatSpecHC4 compat;
    private final String[] datepatterns;
    private RFC2109SpecHC4 obsoleteStrict;
    private final boolean oneHeader;
    private RFC2965SpecHC4 strict;

    public BestMatchSpecHC4(String[] strArr, boolean z3) {
        this.datepatterns = strArr == null ? null : (String[]) strArr.clone();
        this.oneHeader = z3;
    }

    private BrowserCompatSpecHC4 getCompat() {
        if (this.compat == null) {
            this.compat = new BrowserCompatSpecHC4(this.datepatterns);
        }
        return this.compat;
    }

    private RFC2109SpecHC4 getObsoleteStrict() {
        if (this.obsoleteStrict == null) {
            this.obsoleteStrict = new RFC2109SpecHC4(this.datepatterns, this.oneHeader);
        }
        return this.obsoleteStrict;
    }

    private RFC2965SpecHC4 getStrict() {
        if (this.strict == null) {
            this.strict = new RFC2965SpecHC4(this.datepatterns, this.oneHeader);
        }
        return this.strict;
    }

    public List<Header> formatCookies(List<Cookie> list) {
        Args.notNull(list, "List of cookies");
        int i2 = Integer.MAX_VALUE;
        boolean z3 = true;
        for (Cookie cookie : list) {
            if (!(cookie instanceof SetCookie2)) {
                z3 = false;
            }
            if (cookie.getVersion() < i2) {
                i2 = cookie.getVersion();
            }
        }
        if (i2 > 0) {
            if (z3) {
                return getStrict().formatCookies(list);
            }
            return getObsoleteStrict().formatCookies(list);
        }
        return getCompat().formatCookies(list);
    }

    public int getVersion() {
        return getStrict().getVersion();
    }

    public Header getVersionHeader() {
        return getStrict().getVersionHeader();
    }

    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        if (cookie.getVersion() > 0) {
            if (cookie instanceof SetCookie2) {
                return getStrict().match(cookie, cookieOrigin);
            }
            return getObsoleteStrict().match(cookie, cookieOrigin);
        }
        return getCompat().match(cookie, cookieOrigin);
    }

    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        CharArrayBuffer charArrayBuffer;
        ParserCursor parserCursor;
        Args.notNull(header, "Header");
        Args.notNull(cookieOrigin, "Cookie origin");
        HeaderElement[] elements = header.getElements();
        boolean z3 = false;
        boolean z4 = false;
        for (HeaderElement headerElement : elements) {
            if (headerElement.getParameterByName("version") != null) {
                z4 = true;
            }
            if (headerElement.getParameterByName("expires") != null) {
                z3 = true;
            }
        }
        if (!z3 && z4) {
            if (HttpHeaders.Names.SET_COOKIE2.equals(header.getName())) {
                return getStrict().parse(elements, cookieOrigin);
            }
            return getObsoleteStrict().parse(elements, cookieOrigin);
        }
        NetscapeDraftHeaderParserHC4 netscapeDraftHeaderParserHC4 = NetscapeDraftHeaderParserHC4.DEFAULT;
        if (header instanceof FormattedHeader) {
            FormattedHeader formattedHeader = (FormattedHeader) header;
            charArrayBuffer = formattedHeader.getBuffer();
            parserCursor = new ParserCursor(formattedHeader.getValuePos(), charArrayBuffer.length());
        } else {
            String value = header.getValue();
            if (value != null) {
                charArrayBuffer = new CharArrayBuffer(value.length());
                charArrayBuffer.append(value);
                parserCursor = new ParserCursor(0, charArrayBuffer.length());
            } else {
                throw new MalformedCookieException("Header value is null");
            }
        }
        return getCompat().parse(new HeaderElement[]{netscapeDraftHeaderParserHC4.parseHeader(charArrayBuffer, parserCursor)}, cookieOrigin);
    }

    public String toString() {
        return CookieSpecs.BEST_MATCH;
    }

    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        if (cookie.getVersion() > 0) {
            if (cookie instanceof SetCookie2) {
                getStrict().validate(cookie, cookieOrigin);
                return;
            } else {
                getObsoleteStrict().validate(cookie, cookieOrigin);
                return;
            }
        }
        getCompat().validate(cookie, cookieOrigin);
    }

    public BestMatchSpecHC4() {
        this(null, false);
    }
}
