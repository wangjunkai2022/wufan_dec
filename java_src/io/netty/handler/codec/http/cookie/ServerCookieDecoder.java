package io.netty.handler.codec.http.cookie;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
/* loaded from: classes5.dex */
public final class ServerCookieDecoder extends CookieDecoder {
    private static final String RFC2965_DOMAIN = "$Domain";
    private static final String RFC2965_PATH = "$Path";
    private static final String RFC2965_PORT = "$Port";
    private static final String RFC2965_VERSION = "$Version";
    public static final ServerCookieDecoder STRICT = new ServerCookieDecoder(true);
    public static final ServerCookieDecoder LAX = new ServerCookieDecoder(false);

    private ServerCookieDecoder(boolean z3) {
        super(z3);
    }

    public Set<Cookie> decode(String str) {
        TreeSet treeSet = new TreeSet();
        decode(treeSet, str);
        return treeSet;
    }

    public List<Cookie> decodeAll(String str) {
        ArrayList arrayList = new ArrayList();
        decode(arrayList, str);
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x005a, code lost:
        r9 = -1;
        r10 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0061, code lost:
        r5 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0063, code lost:
        if (r5 != r0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0065, code lost:
        r8 = r1;
        r1 = r5;
        r9 = 0;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006a, code lost:
        r6 = r14.indexOf(59, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006e, code lost:
        if (r6 <= 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0071, code lost:
        r6 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0072, code lost:
        r8 = r1;
        r9 = r5;
        r1 = r6;
        r10 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0086 -> B:8:0x0026). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x008f -> B:8:0x0026). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0097 -> B:8:0x0026). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x00a0 -> B:8:0x0026). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00a2 -> B:8:0x0026). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void decode(java.util.Collection<? super io.netty.handler.codec.http.cookie.Cookie> r13, java.lang.String r14) {
        /*
            r12 = this;
            java.lang.String r0 = "header"
            java.lang.Object r0 = io.netty.util.internal.ObjectUtil.checkNotNull(r14, r0)
            java.lang.String r0 = (java.lang.String) r0
            int r0 = r0.length()
            if (r0 != 0) goto Lf
            return
        Lf:
            r2 = 1
            r3 = 0
            r5 = 0
            r6 = 8
            java.lang.String r4 = "$Version"
            r1 = r14
            boolean r1 = r1.regionMatches(r2, r3, r4, r5, r6)
            r2 = 59
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L28
            int r1 = r14.indexOf(r2)
            int r1 = r1 + r3
        L26:
            r7 = r1
            goto L2a
        L28:
            r3 = 0
            r7 = 0
        L2a:
            if (r7 != r0) goto L2d
            return
        L2d:
            char r1 = r14.charAt(r7)
            r5 = 9
            if (r1 == r5) goto La6
            r5 = 10
            if (r1 == r5) goto La6
            r5 = 11
            if (r1 == r5) goto La6
            r5 = 12
            if (r1 == r5) goto La6
            r5 = 13
            if (r1 == r5) goto La6
            r5 = 32
            if (r1 == r5) goto La6
            r5 = 44
            if (r1 == r5) goto La6
            if (r1 != r2) goto L51
            goto La6
        L51:
            r1 = r7
        L52:
            char r5 = r14.charAt(r1)
            r6 = -1
            if (r5 != r2) goto L5d
            r8 = r1
        L5a:
            r9 = -1
            r10 = -1
            goto L7d
        L5d:
            r8 = 61
            if (r5 != r8) goto L77
            int r5 = r1 + 1
            if (r5 != r0) goto L6a
            r8 = r1
            r1 = r5
            r9 = 0
            r10 = 0
            goto L7d
        L6a:
            int r6 = r14.indexOf(r2, r5)
            if (r6 <= 0) goto L71
            goto L72
        L71:
            r6 = r0
        L72:
            r8 = r1
            r9 = r5
            r1 = r6
            r10 = r1
            goto L7d
        L77:
            int r1 = r1 + 1
            if (r1 != r0) goto L52
            r8 = r0
            goto L5a
        L7d:
            if (r3 == 0) goto L9a
            java.lang.String r5 = "$Path"
            r6 = 5
            boolean r5 = r14.regionMatches(r7, r5, r4, r6)
            if (r5 != 0) goto L26
            r5 = 7
            java.lang.String r11 = "$Domain"
            boolean r5 = r14.regionMatches(r7, r11, r4, r5)
            if (r5 != 0) goto L26
            java.lang.String r5 = "$Port"
            boolean r5 = r14.regionMatches(r7, r5, r4, r6)
            if (r5 == 0) goto L9a
            goto L26
        L9a:
            r5 = r12
            r6 = r14
            io.netty.handler.codec.http.cookie.DefaultCookie r5 = r5.initCookie(r6, r7, r8, r9, r10)
            if (r5 == 0) goto L26
            r13.add(r5)
            goto L26
        La6:
            int r7 = r7 + 1
            goto L2a
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.http.cookie.ServerCookieDecoder.decode(java.util.Collection, java.lang.String):void");
    }
}
