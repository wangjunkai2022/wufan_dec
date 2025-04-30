package io.netty.handler.codec.http;

import io.netty.handler.codec.DateFormatter;
import io.netty.handler.codec.http.cookie.CookieHeaderNames;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
@Deprecated
/* loaded from: classes5.dex */
public final class CookieDecoder {
    private static final String COMMENT = "Comment";
    private static final String COMMENTURL = "CommentURL";
    private static final String DISCARD = "Discard";
    private static final String PORT = "Port";
    private static final String VERSION = "Version";
    private final InternalLogger logger = InternalLoggerFactory.getInstance(CookieDecoder.class);
    private final boolean strict;
    private static final CookieDecoder STRICT = new CookieDecoder(true);
    private static final CookieDecoder LAX = new CookieDecoder(false);

    private CookieDecoder(boolean z3) {
        this.strict = z3;
    }

    public static Set<Cookie> decode(String str) {
        return decode(str, true);
    }

    private Set<Cookie> doDecode(String str) {
        int i2;
        int i4;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3 = new ArrayList(8);
        ArrayList arrayList4 = new ArrayList(8);
        extractKeyValuePairs(str, arrayList3, arrayList4);
        if (arrayList3.isEmpty()) {
            return Collections.emptySet();
        }
        if (((String) arrayList3.get(0)).equalsIgnoreCase("Version")) {
            try {
                i2 = Integer.parseInt((String) arrayList4.get(0));
            } catch (NumberFormatException unused) {
                i2 = 0;
            }
            i4 = 1;
        } else {
            i2 = 0;
            i4 = 0;
        }
        if (arrayList3.size() <= i4) {
            return Collections.emptySet();
        }
        TreeSet treeSet = new TreeSet();
        while (i4 < arrayList3.size()) {
            String str2 = (String) arrayList3.get(i4);
            String str3 = (String) arrayList4.get(i4);
            if (str3 == null) {
                str3 = "";
            }
            DefaultCookie initCookie = initCookie(str2, str3);
            if (initCookie == null) {
                break;
            }
            long j4 = Long.MIN_VALUE;
            ArrayList arrayList5 = new ArrayList(2);
            int i5 = i4 + 1;
            String str4 = null;
            TreeSet treeSet2 = treeSet;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            while (true) {
                if (i5 >= arrayList3.size()) {
                    arrayList = arrayList3;
                    arrayList2 = arrayList4;
                    break;
                }
                String str8 = (String) arrayList3.get(i5);
                arrayList = arrayList3;
                String str9 = (String) arrayList4.get(i5);
                arrayList2 = arrayList4;
                if (!DISCARD.equalsIgnoreCase(str8)) {
                    if (!CookieHeaderNames.SECURE.equalsIgnoreCase(str8)) {
                        if (!CookieHeaderNames.HTTPONLY.equalsIgnoreCase(str8)) {
                            if (!COMMENT.equalsIgnoreCase(str8)) {
                                if (!COMMENTURL.equalsIgnoreCase(str8)) {
                                    if (!CookieHeaderNames.DOMAIN.equalsIgnoreCase(str8)) {
                                        if (!CookieHeaderNames.PATH.equalsIgnoreCase(str8)) {
                                            if ("Expires".equalsIgnoreCase(str8)) {
                                                Date parseHttpDate = DateFormatter.parseHttpDate(str9);
                                                if (parseHttpDate != null) {
                                                    long time = parseHttpDate.getTime() - System.currentTimeMillis();
                                                    j4 = (time / 1000) + (time % 1000 != 0 ? 1 : 0);
                                                }
                                            } else if (CookieHeaderNames.MAX_AGE.equalsIgnoreCase(str8)) {
                                                j4 = Integer.parseInt(str9);
                                            } else if ("Version".equalsIgnoreCase(str8)) {
                                                i2 = Integer.parseInt(str9);
                                            } else if (!PORT.equalsIgnoreCase(str8)) {
                                                break;
                                            } else {
                                                String[] split = str9.split(",");
                                                int length = split.length;
                                                int i6 = 0;
                                                while (i6 < length) {
                                                    String[] strArr = split;
                                                    try {
                                                        arrayList5.add(Integer.valueOf(split[i6]));
                                                    } catch (NumberFormatException unused2) {
                                                    }
                                                    i6++;
                                                    split = strArr;
                                                }
                                            }
                                        } else {
                                            str6 = str9;
                                        }
                                    } else {
                                        str5 = str9;
                                    }
                                } else {
                                    str7 = str9;
                                }
                            } else {
                                str4 = str9;
                            }
                        } else {
                            z4 = true;
                        }
                    } else {
                        z3 = true;
                    }
                } else {
                    z5 = true;
                }
                i5++;
                i4++;
                arrayList4 = arrayList2;
                arrayList3 = arrayList;
            }
            initCookie.setVersion(i2);
            initCookie.setMaxAge(j4);
            initCookie.setPath(str6);
            initCookie.setDomain(str5);
            initCookie.setSecure(z3);
            initCookie.setHttpOnly(z4);
            if (i2 > 0) {
                initCookie.setComment(str4);
            }
            if (i2 > 1) {
                initCookie.setCommentUrl(str7);
                initCookie.setPorts(arrayList5);
                initCookie.setDiscard(z5);
            }
            treeSet2.add(initCookie);
            i4++;
            treeSet = treeSet2;
            arrayList4 = arrayList2;
            arrayList3 = arrayList;
        }
        return treeSet;
    }

    private static void extractKeyValuePairs(String str, List<String> list, List<String> list2) {
        String substring;
        String str2;
        String sb;
        String substring2;
        int length = str.length();
        int i2 = 0;
        while (i2 != length) {
            char charAt = str.charAt(i2);
            if (charAt != ' ' && charAt != ',' && charAt != ';') {
                switch (charAt) {
                    case '\t':
                    case '\n':
                    case 11:
                    case '\f':
                    case '\r':
                        break;
                    default:
                        while (i2 != length) {
                            if (str.charAt(i2) == '$') {
                                i2++;
                            } else {
                                String str3 = null;
                                if (i2 == length) {
                                    str2 = null;
                                } else {
                                    int i4 = i2;
                                    while (true) {
                                        char charAt2 = str.charAt(i4);
                                        if (charAt2 == ';') {
                                            substring = str.substring(i2, i4);
                                        } else if (charAt2 != '=') {
                                            i4++;
                                            if (i4 == length) {
                                                substring = str.substring(i2);
                                            }
                                        } else {
                                            String substring3 = str.substring(i2, i4);
                                            int i5 = i4 + 1;
                                            if (i5 == length) {
                                                sb = "";
                                            } else {
                                                char charAt3 = str.charAt(i5);
                                                if (charAt3 != '\"' && charAt3 != '\'') {
                                                    i2 = str.indexOf(59, i5);
                                                    if (i2 > 0) {
                                                        substring2 = str.substring(i5, i2);
                                                    } else {
                                                        substring2 = str.substring(i5);
                                                        i2 = length;
                                                    }
                                                    str2 = substring2;
                                                    str3 = substring3;
                                                } else {
                                                    StringBuilder sb2 = new StringBuilder(str.length() - i5);
                                                    i5++;
                                                    while (true) {
                                                        boolean z3 = false;
                                                        while (i5 != length) {
                                                            if (z3) {
                                                                int i6 = i5 + 1;
                                                                char charAt4 = str.charAt(i5);
                                                                if (charAt4 != '\"' && charAt4 != '\'' && charAt4 != '\\') {
                                                                    sb2.append(charAt4);
                                                                } else {
                                                                    sb2.setCharAt(sb2.length() - 1, charAt4);
                                                                }
                                                                i5 = i6;
                                                            } else {
                                                                int i7 = i5 + 1;
                                                                char charAt5 = str.charAt(i5);
                                                                if (charAt5 == charAt3) {
                                                                    str2 = sb2.toString();
                                                                    str3 = substring3;
                                                                    i2 = i7;
                                                                } else {
                                                                    sb2.append(charAt5);
                                                                    if (charAt5 == '\\') {
                                                                        i5 = i7;
                                                                        z3 = true;
                                                                    } else {
                                                                        i5 = i7;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        sb = sb2.toString();
                                                    }
                                                }
                                            }
                                            str2 = sb;
                                            i2 = i5;
                                            str3 = substring3;
                                        }
                                    }
                                    str2 = null;
                                    str3 = substring;
                                    i2 = i4;
                                }
                                list.add(str3);
                                list2.add(str2);
                                continue;
                            }
                        }
                        return;
                }
            }
            i2++;
        }
    }

    private DefaultCookie initCookie(String str, String str2) {
        int firstInvalidCookieValueOctet;
        int firstInvalidCookieNameOctet;
        if (str == null || str.length() == 0) {
            this.logger.debug("Skipping cookie with null name");
            return null;
        } else if (str2 == null) {
            this.logger.debug("Skipping cookie with null value");
            return null;
        } else {
            CharSequence unwrapValue = CookieUtil.unwrapValue(str2);
            if (unwrapValue == null) {
                this.logger.debug("Skipping cookie because starting quotes are not properly balanced in '{}'", unwrapValue);
                return null;
            } else if (this.strict && (firstInvalidCookieNameOctet = CookieUtil.firstInvalidCookieNameOctet(str)) >= 0) {
                if (this.logger.isDebugEnabled()) {
                    this.logger.debug("Skipping cookie because name '{}' contains invalid char '{}'", str, Character.valueOf(str.charAt(firstInvalidCookieNameOctet)));
                }
                return null;
            } else {
                boolean z3 = unwrapValue.length() != str2.length();
                if (this.strict && (firstInvalidCookieValueOctet = CookieUtil.firstInvalidCookieValueOctet(unwrapValue)) >= 0) {
                    if (this.logger.isDebugEnabled()) {
                        this.logger.debug("Skipping cookie because value '{}' contains invalid char '{}'", unwrapValue, Character.valueOf(unwrapValue.charAt(firstInvalidCookieValueOctet)));
                    }
                    return null;
                }
                DefaultCookie defaultCookie = new DefaultCookie(str, unwrapValue.toString());
                defaultCookie.setWrap(z3);
                return defaultCookie;
            }
        }
    }

    public static Set<Cookie> decode(String str, boolean z3) {
        return (z3 ? STRICT : LAX).doDecode(str);
    }
}
