package io.netty.handler.codec.http;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class QueryStringDecoder {
    private static final int DEFAULT_MAX_PARAMS = 1024;
    private final Charset charset;
    private final int maxParams;
    private Map<String, List<String>> params;
    private String path;
    private int pathEndIdx;
    private final boolean semicolonIsNormalChar;
    private final String uri;

    public QueryStringDecoder(String str) {
        this(str, HttpConstants.DEFAULT_CHARSET);
    }

    private static boolean addParam(String str, int i2, int i4, int i5, Map<String, List<String>> map, Charset charset) {
        if (i2 >= i5) {
            return false;
        }
        if (i4 <= i2) {
            i4 = i5 + 1;
        }
        String decodeComponent = decodeComponent(str, i2, i4 - 1, charset, false);
        String decodeComponent2 = decodeComponent(str, i4, i5, charset, false);
        List<String> list = map.get(decodeComponent);
        if (list == null) {
            list = new ArrayList<>(1);
            map.put(decodeComponent, list);
        }
        list.add(decodeComponent2);
        return true;
    }

    public static String decodeComponent(String str) {
        return decodeComponent(str, HttpConstants.DEFAULT_CHARSET);
    }

    private static Map<String, List<String>> decodeParams(String str, int i2, Charset charset, int i4, boolean z3) {
        int length = str.length();
        if (i2 >= length) {
            return Collections.emptyMap();
        }
        if (str.charAt(i2) == '?') {
            i2++;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i5 = i2;
        int i6 = i5;
        int i7 = -1;
        while (i6 < length) {
            char charAt = str.charAt(i6);
            if (charAt == '#') {
                break;
            }
            if (charAt != '&') {
                if (charAt != ';') {
                    if (charAt == '=') {
                        if (i5 != i6) {
                            if (i7 < i5) {
                                i7 = i6 + 1;
                            }
                        }
                        i5 = i6 + 1;
                    }
                } else if (z3) {
                    continue;
                }
                i6++;
            }
            if (addParam(str, i5, i7, i6, linkedHashMap, charset) && i4 - 1 == 0) {
                return linkedHashMap;
            }
            i5 = i6 + 1;
            i6++;
        }
        addParam(str, i5, i7, i6, linkedHashMap, charset);
        return linkedHashMap;
    }

    private static int findPathEndIndex(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt == '?' || charAt == '#') {
                return i2;
            }
        }
        return length;
    }

    private int pathEndIdx() {
        if (this.pathEndIdx == -1) {
            this.pathEndIdx = findPathEndIndex(this.uri);
        }
        return this.pathEndIdx;
    }

    public Map<String, List<String>> parameters() {
        if (this.params == null) {
            this.params = decodeParams(this.uri, pathEndIdx(), this.charset, this.maxParams, this.semicolonIsNormalChar);
        }
        return this.params;
    }

    public String path() {
        if (this.path == null) {
            this.path = decodeComponent(this.uri, 0, pathEndIdx(), this.charset, true);
        }
        return this.path;
    }

    public String rawPath() {
        return this.uri.substring(0, pathEndIdx());
    }

    public String rawQuery() {
        int pathEndIdx = pathEndIdx() + 1;
        return pathEndIdx < this.uri.length() ? this.uri.substring(pathEndIdx) : "";
    }

    public String toString() {
        return uri();
    }

    public String uri() {
        return this.uri;
    }

    public QueryStringDecoder(String str, boolean z3) {
        this(str, HttpConstants.DEFAULT_CHARSET, z3);
    }

    public static String decodeComponent(String str, Charset charset) {
        return str == null ? "" : decodeComponent(str, 0, str.length(), charset, false);
    }

    public QueryStringDecoder(String str, Charset charset) {
        this(str, charset, true);
    }

    private static String decodeComponent(String str, int i2, int i4, Charset charset, boolean z3) {
        int i5;
        int i6;
        int i7 = i4 - i2;
        if (i7 <= 0) {
            return "";
        }
        int i8 = i2;
        while (true) {
            if (i8 >= i4) {
                i8 = -1;
                break;
            }
            char charAt = str.charAt(i8);
            if (charAt == '%' || (charAt == '+' && !z3)) {
                break;
            }
            i8++;
        }
        if (i8 == -1) {
            return str.substring(i2, i4);
        }
        byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray((i4 - i8) / 3);
        StringBuilder sb = new StringBuilder(i7);
        sb.append((CharSequence) str, i2, i8);
        while (i8 < i4) {
            char charAt2 = str.charAt(i8);
            if (charAt2 != '%') {
                if (charAt2 == '+' && !z3) {
                    charAt2 = ' ';
                }
                sb.append(charAt2);
            } else {
                int i9 = 0;
                while (true) {
                    i5 = i8 + 3;
                    if (i5 <= i4) {
                        i6 = i9 + 1;
                        allocateUninitializedArray[i9] = StringUtil.decodeHexByte(str, i8 + 1);
                        if (i5 >= i4 || str.charAt(i5) != '%') {
                            break;
                        }
                        i8 = i5;
                        i9 = i6;
                    } else {
                        throw new IllegalArgumentException("unterminated escape sequence at index " + i8 + " of: " + str);
                    }
                }
                i8 = i5 - 1;
                sb.append(new String(allocateUninitializedArray, 0, i6, charset));
            }
            i8++;
        }
        return sb.toString();
    }

    public QueryStringDecoder(String str, Charset charset, boolean z3) {
        this(str, charset, z3, 1024);
    }

    public QueryStringDecoder(String str, Charset charset, boolean z3, int i2) {
        this(str, charset, z3, i2, false);
    }

    public QueryStringDecoder(String str, Charset charset, boolean z3, int i2, boolean z4) {
        this.uri = (String) ObjectUtil.checkNotNull(str, "uri");
        this.charset = (Charset) ObjectUtil.checkNotNull(charset, "charset");
        this.maxParams = ObjectUtil.checkPositive(i2, "maxParams");
        this.semicolonIsNormalChar = z4;
        this.pathEndIdx = z3 ? -1 : 0;
    }

    public QueryStringDecoder(URI uri) {
        this(uri, HttpConstants.DEFAULT_CHARSET);
    }

    public QueryStringDecoder(URI uri, Charset charset) {
        this(uri, charset, 1024);
    }

    public QueryStringDecoder(URI uri, Charset charset, int i2) {
        this(uri, charset, i2, false);
    }

    public QueryStringDecoder(URI uri, Charset charset, int i2, boolean z3) {
        String str;
        String rawPath = uri.getRawPath();
        rawPath = rawPath == null ? "" : rawPath;
        String rawQuery = uri.getRawQuery();
        if (rawQuery == null) {
            str = rawPath;
        } else {
            str = rawPath + '?' + rawQuery;
        }
        this.uri = str;
        this.charset = (Charset) ObjectUtil.checkNotNull(charset, "charset");
        this.maxParams = ObjectUtil.checkPositive(i2, "maxParams");
        this.semicolonIsNormalChar = z3;
        this.pathEndIdx = rawPath.length();
    }
}
