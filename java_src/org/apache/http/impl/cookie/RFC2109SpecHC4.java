package org.apache.http.impl.cookie;

import com.j256.ormlite.stmt.query.SimpleComparison;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.utils.DateUtils;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookiePathComparator;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
@NotThreadSafe
/* loaded from: classes5.dex */
public class RFC2109SpecHC4 extends CookieSpecBaseHC4 {
    private final String[] datepatterns;
    private final boolean oneHeader;
    private static final CookiePathComparator PATH_COMPARATOR = new CookiePathComparator();
    private static final String[] DATE_PATTERNS = {DateUtils.PATTERN_RFC1123, DateUtils.PATTERN_RFC1036, DateUtils.PATTERN_ASCTIME};

    public RFC2109SpecHC4(String[] strArr, boolean z3) {
        if (strArr != null) {
            this.datepatterns = (String[]) strArr.clone();
        } else {
            this.datepatterns = DATE_PATTERNS;
        }
        this.oneHeader = z3;
        registerAttribHandler("version", new RFC2109VersionHandlerHC4());
        registerAttribHandler("path", new BasicPathHandlerHC4());
        registerAttribHandler("domain", new RFC2109DomainHandlerHC4());
        registerAttribHandler("max-age", new BasicMaxAgeHandlerHC4());
        registerAttribHandler("secure", new BasicSecureHandlerHC4());
        registerAttribHandler("comment", new BasicCommentHandlerHC4());
        registerAttribHandler("expires", new BasicExpiresHandlerHC4(this.datepatterns));
    }

    private List<Header> doFormatManyHeaders(List<Cookie> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Cookie cookie : list) {
            int version = cookie.getVersion();
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(40);
            charArrayBuffer.append("Cookie: ");
            charArrayBuffer.append("$Version=");
            charArrayBuffer.append(Integer.toString(version));
            charArrayBuffer.append("; ");
            formatCookieAsVer(charArrayBuffer, cookie, version);
            arrayList.add(new BufferedHeader(charArrayBuffer));
        }
        return arrayList;
    }

    private List<Header> doFormatOneHeader(List<Cookie> list) {
        int i2 = Integer.MAX_VALUE;
        for (Cookie cookie : list) {
            if (cookie.getVersion() < i2) {
                i2 = cookie.getVersion();
            }
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(list.size() * 40);
        charArrayBuffer.append(HttpHeaders.Names.COOKIE);
        charArrayBuffer.append(": ");
        charArrayBuffer.append("$Version=");
        charArrayBuffer.append(Integer.toString(i2));
        for (Cookie cookie2 : list) {
            charArrayBuffer.append("; ");
            formatCookieAsVer(charArrayBuffer, cookie2, i2);
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new BufferedHeader(charArrayBuffer));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void formatCookieAsVer(CharArrayBuffer charArrayBuffer, Cookie cookie, int i2) {
        formatParamAsVer(charArrayBuffer, cookie.getName(), cookie.getValue(), i2);
        if (cookie.getPath() != null && (cookie instanceof ClientCookie) && ((ClientCookie) cookie).containsAttribute("path")) {
            charArrayBuffer.append("; ");
            formatParamAsVer(charArrayBuffer, "$Path", cookie.getPath(), i2);
        }
        if (cookie.getDomain() != null && (cookie instanceof ClientCookie) && ((ClientCookie) cookie).containsAttribute("domain")) {
            charArrayBuffer.append("; ");
            formatParamAsVer(charArrayBuffer, "$Domain", cookie.getDomain(), i2);
        }
    }

    public List<Header> formatCookies(List<Cookie> list) {
        Args.notEmpty(list, "List of cookies");
        if (list.size() > 1) {
            ArrayList arrayList = new ArrayList(list);
            Collections.sort(arrayList, PATH_COMPARATOR);
            list = arrayList;
        }
        if (this.oneHeader) {
            return doFormatOneHeader(list);
        }
        return doFormatManyHeaders(list);
    }

    protected void formatParamAsVer(CharArrayBuffer charArrayBuffer, String str, String str2, int i2) {
        charArrayBuffer.append(str);
        charArrayBuffer.append(SimpleComparison.EQUAL_TO_OPERATION);
        if (str2 != null) {
            if (i2 > 0) {
                charArrayBuffer.append('\"');
                charArrayBuffer.append(str2);
                charArrayBuffer.append('\"');
                return;
            }
            charArrayBuffer.append(str2);
        }
    }

    public int getVersion() {
        return 1;
    }

    public Header getVersionHeader() {
        return null;
    }

    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(header, "Header");
        Args.notNull(cookieOrigin, "Cookie origin");
        if (header.getName().equalsIgnoreCase(HttpHeaders.Names.SET_COOKIE)) {
            return parse(header.getElements(), cookieOrigin);
        }
        throw new MalformedCookieException("Unrecognized cookie header '" + header.toString() + "'");
    }

    public String toString() {
        return "rfc2109";
    }

    @Override // org.apache.http.impl.cookie.CookieSpecBaseHC4
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        String name = cookie.getName();
        if (name.indexOf(32) == -1) {
            if (!name.startsWith("$")) {
                super.validate(cookie, cookieOrigin);
                return;
            }
            throw new CookieRestrictionViolationException("Cookie name may not start with $");
        }
        throw new CookieRestrictionViolationException("Cookie name may not contain blanks");
    }

    public RFC2109SpecHC4() {
        this(null, false);
    }
}
