package org.apache.http.impl.cookie;

import io.netty.handler.codec.http.HttpHeaders;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import m.a;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
@NotThreadSafe
/* loaded from: classes5.dex */
public class RFC2965SpecHC4 extends RFC2109SpecHC4 {
    public RFC2965SpecHC4() {
        this(null, false);
    }

    private static CookieOrigin adjustEffectiveHost(CookieOrigin cookieOrigin) {
        String host = cookieOrigin.getHost();
        boolean z3 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= host.length()) {
                z3 = true;
                break;
            }
            char charAt = host.charAt(i2);
            if (charAt == '.' || charAt == ':') {
                break;
            }
            i2++;
        }
        if (z3) {
            return new CookieOrigin(host + ".local", cookieOrigin.getPort(), cookieOrigin.getPath(), cookieOrigin.isSecure());
        }
        return cookieOrigin;
    }

    private List<Cookie> createCookies(HeaderElement[] headerElementArr, CookieOrigin cookieOrigin) throws MalformedCookieException {
        ArrayList arrayList = new ArrayList(headerElementArr.length);
        for (HeaderElement headerElement : headerElementArr) {
            String name = headerElement.getName();
            String value = headerElement.getValue();
            if (name != null && name.length() != 0) {
                BasicClientCookie2HC4 basicClientCookie2HC4 = new BasicClientCookie2HC4(name, value);
                basicClientCookie2HC4.setPath(CookieSpecBaseHC4.getDefaultPath(cookieOrigin));
                basicClientCookie2HC4.setDomain(CookieSpecBaseHC4.getDefaultDomain(cookieOrigin));
                basicClientCookie2HC4.setPorts(new int[]{cookieOrigin.getPort()});
                NameValuePair[] parameters = headerElement.getParameters();
                HashMap hashMap = new HashMap(parameters.length);
                for (int length = parameters.length - 1; length >= 0; length--) {
                    NameValuePair nameValuePair = parameters[length];
                    hashMap.put(nameValuePair.getName().toLowerCase(Locale.ENGLISH), nameValuePair);
                }
                for (Map.Entry entry : hashMap.entrySet()) {
                    NameValuePair nameValuePair2 = (NameValuePair) entry.getValue();
                    String lowerCase = nameValuePair2.getName().toLowerCase(Locale.ENGLISH);
                    basicClientCookie2HC4.setAttribute(lowerCase, nameValuePair2.getValue());
                    CookieAttributeHandler findAttribHandler = findAttribHandler(lowerCase);
                    if (findAttribHandler != null) {
                        findAttribHandler.parse(basicClientCookie2HC4, nameValuePair2.getValue());
                    }
                }
                arrayList.add(basicClientCookie2HC4);
            } else {
                throw new MalformedCookieException("Cookie name may not be empty");
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4
    public void formatCookieAsVer(CharArrayBuffer charArrayBuffer, Cookie cookie, int i2) {
        String attribute;
        int[] ports;
        super.formatCookieAsVer(charArrayBuffer, cookie, i2);
        if (!(cookie instanceof ClientCookie) || (attribute = ((ClientCookie) cookie).getAttribute("port")) == null) {
            return;
        }
        charArrayBuffer.append("; $Port");
        charArrayBuffer.append("=\"");
        if (attribute.trim().length() > 0 && (ports = cookie.getPorts()) != null) {
            int length = ports.length;
            for (int i4 = 0; i4 < length; i4++) {
                if (i4 > 0) {
                    charArrayBuffer.append(",");
                }
                charArrayBuffer.append(Integer.toString(ports[i4]));
            }
        }
        charArrayBuffer.append(a.f72569g);
    }

    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4
    public int getVersion() {
        return 1;
    }

    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4
    public Header getVersionHeader() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(40);
        charArrayBuffer.append("Cookie2");
        charArrayBuffer.append(": ");
        charArrayBuffer.append("$Version=");
        charArrayBuffer.append(Integer.toString(getVersion()));
        return new BufferedHeader(charArrayBuffer);
    }

    @Override // org.apache.http.impl.cookie.CookieSpecBaseHC4
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        return super.match(cookie, adjustEffectiveHost(cookieOrigin));
    }

    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(header, "Header");
        Args.notNull(cookieOrigin, "Cookie origin");
        if (header.getName().equalsIgnoreCase(HttpHeaders.Names.SET_COOKIE2)) {
            return createCookies(header.getElements(), adjustEffectiveHost(cookieOrigin));
        }
        throw new MalformedCookieException("Unrecognized cookie header '" + header.toString() + "'");
    }

    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4
    public String toString() {
        return "rfc2965";
    }

    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4, org.apache.http.impl.cookie.CookieSpecBaseHC4
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, HttpHeaders.Names.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        super.validate(cookie, adjustEffectiveHost(cookieOrigin));
    }

    public RFC2965SpecHC4(String[] strArr, boolean z3) {
        super(strArr, z3);
        registerAttribHandler("domain", new RFC2965DomainAttributeHandlerHC4());
        registerAttribHandler("port", new RFC2965PortAttributeHandlerHC4());
        registerAttribHandler("commenturl", new RFC2965CommentUrlAttributeHandlerHC4());
        registerAttribHandler("discard", new RFC2965DiscardAttributeHandlerHC4());
        registerAttribHandler("version", new RFC2965VersionAttributeHandlerHC4());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.http.impl.cookie.CookieSpecBaseHC4
    public List<Cookie> parse(HeaderElement[] headerElementArr, CookieOrigin cookieOrigin) throws MalformedCookieException {
        return createCookies(headerElementArr, adjustEffectiveHost(cookieOrigin));
    }
}
