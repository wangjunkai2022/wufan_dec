package io.netty.handler.codec.http;

import external.org.apache.commons.lang3.d;
import io.netty.buffer.ByteBuf;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.ObjectUtil;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public class HttpVersion implements Comparable<HttpVersion> {
    private static final String HTTP_1_0_STRING = "HTTP/1.0";
    private static final String HTTP_1_1_STRING = "HTTP/1.1";
    private final byte[] bytes;
    private final boolean keepAliveDefault;
    private final int majorVersion;
    private final int minorVersion;
    private final String protocolName;
    private final String text;
    private static final Pattern VERSION_PATTERN = Pattern.compile("(\\S+)/(\\d+)\\.(\\d+)");
    public static final HttpVersion HTTP_1_0 = new HttpVersion("HTTP", 1, 0, false, true);
    public static final HttpVersion HTTP_1_1 = new HttpVersion("HTTP", 1, 1, true, true);

    public HttpVersion(String str, boolean z3) {
        ObjectUtil.checkNotNull(str, "text");
        String upperCase = str.trim().toUpperCase();
        if (!upperCase.isEmpty()) {
            Matcher matcher = VERSION_PATTERN.matcher(upperCase);
            if (matcher.matches()) {
                String group = matcher.group(1);
                this.protocolName = group;
                int parseInt = Integer.parseInt(matcher.group(2));
                this.majorVersion = parseInt;
                int parseInt2 = Integer.parseInt(matcher.group(3));
                this.minorVersion = parseInt2;
                this.text = group + '/' + parseInt + d.f65364a + parseInt2;
                this.keepAliveDefault = z3;
                this.bytes = null;
                return;
            }
            throw new IllegalArgumentException("invalid version format: " + upperCase);
        }
        throw new IllegalArgumentException("empty text");
    }

    public static HttpVersion valueOf(String str) {
        ObjectUtil.checkNotNull(str, "text");
        String trim = str.trim();
        if (!trim.isEmpty()) {
            HttpVersion version0 = version0(trim);
            return version0 == null ? new HttpVersion(trim, true) : version0;
        }
        throw new IllegalArgumentException("text is empty (possibly HTTP/0.9)");
    }

    private static HttpVersion version0(String str) {
        if (HTTP_1_1_STRING.equals(str)) {
            return HTTP_1_1;
        }
        if (HTTP_1_0_STRING.equals(str)) {
            return HTTP_1_0;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void encode(ByteBuf byteBuf) {
        byte[] bArr = this.bytes;
        if (bArr == null) {
            byteBuf.writeCharSequence(this.text, CharsetUtil.US_ASCII);
        } else {
            byteBuf.writeBytes(bArr);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof HttpVersion) {
            HttpVersion httpVersion = (HttpVersion) obj;
            return minorVersion() == httpVersion.minorVersion() && majorVersion() == httpVersion.majorVersion() && protocolName().equals(httpVersion.protocolName());
        }
        return false;
    }

    public int hashCode() {
        return (((protocolName().hashCode() * 31) + majorVersion()) * 31) + minorVersion();
    }

    public boolean isKeepAliveDefault() {
        return this.keepAliveDefault;
    }

    public int majorVersion() {
        return this.majorVersion;
    }

    public int minorVersion() {
        return this.minorVersion;
    }

    public String protocolName() {
        return this.protocolName;
    }

    public String text() {
        return this.text;
    }

    public String toString() {
        return text();
    }

    @Override // java.lang.Comparable
    public int compareTo(HttpVersion httpVersion) {
        int compareTo = protocolName().compareTo(httpVersion.protocolName());
        if (compareTo != 0) {
            return compareTo;
        }
        int majorVersion = majorVersion() - httpVersion.majorVersion();
        return majorVersion != 0 ? majorVersion : minorVersion() - httpVersion.minorVersion();
    }

    public HttpVersion(String str, int i2, int i4, boolean z3) {
        this(str, i2, i4, z3, false);
    }

    private HttpVersion(String str, int i2, int i4, boolean z3, boolean z4) {
        ObjectUtil.checkNotNull(str, "protocolName");
        String upperCase = str.trim().toUpperCase();
        if (!upperCase.isEmpty()) {
            for (int i5 = 0; i5 < upperCase.length(); i5++) {
                if (Character.isISOControl(upperCase.charAt(i5)) || Character.isWhitespace(upperCase.charAt(i5))) {
                    throw new IllegalArgumentException("invalid character in protocolName");
                }
            }
            ObjectUtil.checkPositiveOrZero(i2, "majorVersion");
            ObjectUtil.checkPositiveOrZero(i4, "minorVersion");
            this.protocolName = upperCase;
            this.majorVersion = i2;
            this.minorVersion = i4;
            String str2 = upperCase + '/' + i2 + d.f65364a + i4;
            this.text = str2;
            this.keepAliveDefault = z3;
            if (z4) {
                this.bytes = str2.getBytes(CharsetUtil.US_ASCII);
                return;
            } else {
                this.bytes = null;
                return;
            }
        }
        throw new IllegalArgumentException("empty protocolName");
    }
}
