package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import org.apache.http.conn.ssl.TokenParser;
/* loaded from: classes2.dex */
public final class JsonStringEncoder {
    private static final int INITIAL_BYTE_BUFFER_SIZE = 200;
    private static final int INITIAL_CHAR_BUFFER_SIZE = 120;
    private static final int SURR1_FIRST = 55296;
    private static final int SURR1_LAST = 56319;
    private static final int SURR2_FIRST = 56320;
    private static final int SURR2_LAST = 57343;
    private static final char[] HC = CharTypes.copyHexChars();
    private static final byte[] HB = CharTypes.copyHexBytes();
    private static final JsonStringEncoder instance = new JsonStringEncoder();

    private int _appendByte(int i2, int i4, ByteArrayBuilder byteArrayBuilder, int i5) {
        byteArrayBuilder.setCurrentSegmentLength(i5);
        byteArrayBuilder.append(92);
        if (i4 < 0) {
            byteArrayBuilder.append(117);
            if (i2 > 255) {
                int i6 = i2 >> 8;
                byte[] bArr = HB;
                byteArrayBuilder.append(bArr[i6 >> 4]);
                byteArrayBuilder.append(bArr[i6 & 15]);
                i2 &= 255;
            } else {
                byteArrayBuilder.append(48);
                byteArrayBuilder.append(48);
            }
            byte[] bArr2 = HB;
            byteArrayBuilder.append(bArr2[i2 >> 4]);
            byteArrayBuilder.append(bArr2[i2 & 15]);
        } else {
            byteArrayBuilder.append((byte) i4);
        }
        return byteArrayBuilder.getCurrentSegmentLength();
    }

    private int _appendNamed(int i2, char[] cArr) {
        cArr[1] = (char) i2;
        return 2;
    }

    private int _appendNumeric(int i2, char[] cArr) {
        cArr[1] = 'u';
        char[] cArr2 = HC;
        cArr[4] = cArr2[i2 >> 4];
        cArr[5] = cArr2[i2 & 15];
        return 6;
    }

    private static int _convert(int i2, int i4) {
        if (i4 < 56320 || i4 > 57343) {
            throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i2) + ", second 0x" + Integer.toHexString(i4) + "; illegal combination");
        }
        return ((i2 - 55296) << 10) + 65536 + (i4 - 56320);
    }

    private static void _illegal(int i2) {
        throw new IllegalArgumentException(UTF8Writer.illegalSurrogateDesc(i2));
    }

    private char[] _qbuf() {
        return new char[]{TokenParser.ESCAPE, 0, '0', '0'};
    }

    public static JsonStringEncoder getInstance() {
        return instance;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] encodeAsUTF8(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.JsonStringEncoder.encodeAsUTF8(java.lang.String):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
        r9 = r7 + 1;
        r7 = r13.charAt(r7);
        r10 = r1[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
        if (r10 >= 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
        r7 = _appendNumeric(r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
        r7 = _appendNamed(r10, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        r10 = r8 + r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
        if (r10 <= r0.length) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003c, code lost:
        r10 = r0.length - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
        if (r10 <= 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
        java.lang.System.arraycopy(r6, 0, r0, r8, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
        if (r4 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0045, code lost:
        r4 = com.fasterxml.jackson.core.util.TextBuffer.fromInitial(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
        r0 = r4.finishCurrentSegment();
        r7 = r7 - r10;
        java.lang.System.arraycopy(r6, r10, r0, 0, r7);
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
        java.lang.System.arraycopy(r6, 0, r0, r8, r7);
        r8 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
        if (r6 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        r6 = _qbuf();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public char[] quoteAsString(java.lang.String r13) {
        /*
            r12 = this;
            r0 = 120(0x78, float:1.68E-43)
            char[] r0 = new char[r0]
            int[] r1 = com.fasterxml.jackson.core.io.CharTypes.get7BitOutputEscapes()
            int r2 = r1.length
            int r3 = r13.length()
            r4 = 0
            r5 = 0
            r6 = r4
            r7 = 0
            r8 = 0
        L12:
            if (r7 >= r3) goto L73
        L14:
            char r9 = r13.charAt(r7)
            if (r9 >= r2) goto L59
            r10 = r1[r9]
            if (r10 == 0) goto L59
            if (r6 != 0) goto L24
            char[] r6 = r12._qbuf()
        L24:
            int r9 = r7 + 1
            char r7 = r13.charAt(r7)
            r10 = r1[r7]
            if (r10 >= 0) goto L33
            int r7 = r12._appendNumeric(r7, r6)
            goto L37
        L33:
            int r7 = r12._appendNamed(r10, r6)
        L37:
            int r10 = r8 + r7
            int r11 = r0.length
            if (r10 <= r11) goto L53
            int r10 = r0.length
            int r10 = r10 - r8
            if (r10 <= 0) goto L43
            java.lang.System.arraycopy(r6, r5, r0, r8, r10)
        L43:
            if (r4 != 0) goto L49
            com.fasterxml.jackson.core.util.TextBuffer r4 = com.fasterxml.jackson.core.util.TextBuffer.fromInitial(r0)
        L49:
            char[] r0 = r4.finishCurrentSegment()
            int r7 = r7 - r10
            java.lang.System.arraycopy(r6, r10, r0, r5, r7)
            r8 = r7
            goto L57
        L53:
            java.lang.System.arraycopy(r6, r5, r0, r8, r7)
            r8 = r10
        L57:
            r7 = r9
            goto L12
        L59:
            int r10 = r0.length
            if (r8 < r10) goto L67
            if (r4 != 0) goto L62
            com.fasterxml.jackson.core.util.TextBuffer r4 = com.fasterxml.jackson.core.util.TextBuffer.fromInitial(r0)
        L62:
            char[] r0 = r4.finishCurrentSegment()
            r8 = 0
        L67:
            int r10 = r8 + 1
            r0[r8] = r9
            int r7 = r7 + 1
            if (r7 < r3) goto L71
            r8 = r10
            goto L73
        L71:
            r8 = r10
            goto L14
        L73:
            if (r4 != 0) goto L7a
            char[] r13 = java.util.Arrays.copyOfRange(r0, r5, r8)
            return r13
        L7a:
            r4.setCurrentLength(r8)
            char[] r13 = r4.contentsAsArray()
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.JsonStringEncoder.quoteAsString(java.lang.String):char[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] quoteAsUTF8(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.JsonStringEncoder.quoteAsUTF8(java.lang.String):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
        if (r6 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
        r6 = _qbuf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        r9 = r7 + 1;
        r7 = r13.charAt(r7);
        r10 = r1[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
        if (r10 >= 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
        r7 = _appendNumeric(r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
        r7 = _appendNamed(r10, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0042, code lost:
        r10 = r8 + r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
        if (r10 <= r0.length) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
        r10 = r0.length - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
        if (r10 <= 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
        java.lang.System.arraycopy(r6, 0, r0, r8, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004e, code lost:
        if (r4 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
        r4 = com.fasterxml.jackson.core.util.TextBuffer.fromInitial(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0054, code lost:
        r0 = r4.finishCurrentSegment();
        r7 = r7 - r10;
        java.lang.System.arraycopy(r6, r10, r0, 0, r7);
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
        java.lang.System.arraycopy(r6, 0, r0, r8, r7);
        r8 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public char[] quoteAsString(java.lang.CharSequence r13) {
        /*
            r12 = this;
            boolean r0 = r13 instanceof java.lang.String
            if (r0 == 0) goto Lb
            java.lang.String r13 = (java.lang.String) r13
            char[] r13 = r12.quoteAsString(r13)
            return r13
        Lb:
            r0 = 120(0x78, float:1.68E-43)
            char[] r0 = new char[r0]
            int[] r1 = com.fasterxml.jackson.core.io.CharTypes.get7BitOutputEscapes()
            int r2 = r1.length
            int r3 = r13.length()
            r4 = 0
            r5 = 0
            r6 = r4
            r7 = 0
            r8 = 0
        L1d:
            if (r7 >= r3) goto L7e
        L1f:
            char r9 = r13.charAt(r7)
            if (r9 >= r2) goto L64
            r10 = r1[r9]
            if (r10 == 0) goto L64
            if (r6 != 0) goto L2f
            char[] r6 = r12._qbuf()
        L2f:
            int r9 = r7 + 1
            char r7 = r13.charAt(r7)
            r10 = r1[r7]
            if (r10 >= 0) goto L3e
            int r7 = r12._appendNumeric(r7, r6)
            goto L42
        L3e:
            int r7 = r12._appendNamed(r10, r6)
        L42:
            int r10 = r8 + r7
            int r11 = r0.length
            if (r10 <= r11) goto L5e
            int r10 = r0.length
            int r10 = r10 - r8
            if (r10 <= 0) goto L4e
            java.lang.System.arraycopy(r6, r5, r0, r8, r10)
        L4e:
            if (r4 != 0) goto L54
            com.fasterxml.jackson.core.util.TextBuffer r4 = com.fasterxml.jackson.core.util.TextBuffer.fromInitial(r0)
        L54:
            char[] r0 = r4.finishCurrentSegment()
            int r7 = r7 - r10
            java.lang.System.arraycopy(r6, r10, r0, r5, r7)
            r8 = r7
            goto L62
        L5e:
            java.lang.System.arraycopy(r6, r5, r0, r8, r7)
            r8 = r10
        L62:
            r7 = r9
            goto L1d
        L64:
            int r10 = r0.length
            if (r8 < r10) goto L72
            if (r4 != 0) goto L6d
            com.fasterxml.jackson.core.util.TextBuffer r4 = com.fasterxml.jackson.core.util.TextBuffer.fromInitial(r0)
        L6d:
            char[] r0 = r4.finishCurrentSegment()
            r8 = 0
        L72:
            int r10 = r8 + 1
            r0[r8] = r9
            int r7 = r7 + 1
            if (r7 < r3) goto L7c
            r8 = r10
            goto L7e
        L7c:
            r8 = r10
            goto L1f
        L7e:
            if (r4 != 0) goto L85
            char[] r13 = java.util.Arrays.copyOfRange(r0, r5, r8)
            return r13
        L85:
            r4.setCurrentLength(r8)
            char[] r13 = r4.contentsAsArray()
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.JsonStringEncoder.quoteAsString(java.lang.CharSequence):char[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] encodeAsUTF8(java.lang.CharSequence r12) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.JsonStringEncoder.encodeAsUTF8(java.lang.CharSequence):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        r6 = r5 + 1;
        r5 = r9.charAt(r5);
        r7 = r0[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
        if (r7 >= 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        r5 = _appendNumeric(r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        r5 = _appendNamed(r7, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        r10.append(r4, 0, r5);
        r5 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
        if (r4 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        r4 = _qbuf();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void quoteAsString(java.lang.CharSequence r9, java.lang.StringBuilder r10) {
        /*
            r8 = this;
            int[] r0 = com.fasterxml.jackson.core.io.CharTypes.get7BitOutputEscapes()
            int r1 = r0.length
            int r2 = r9.length()
            r3 = 0
            r4 = 0
            r5 = 0
        Lc:
            if (r5 >= r2) goto L3d
        Le:
            char r6 = r9.charAt(r5)
            if (r6 >= r1) goto L36
            r7 = r0[r6]
            if (r7 == 0) goto L36
            if (r4 != 0) goto L1e
            char[] r4 = r8._qbuf()
        L1e:
            int r6 = r5 + 1
            char r5 = r9.charAt(r5)
            r7 = r0[r5]
            if (r7 >= 0) goto L2d
            int r5 = r8._appendNumeric(r5, r4)
            goto L31
        L2d:
            int r5 = r8._appendNamed(r7, r4)
        L31:
            r10.append(r4, r3, r5)
            r5 = r6
            goto Lc
        L36:
            r10.append(r6)
            int r5 = r5 + 1
            if (r5 < r2) goto Le
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.JsonStringEncoder.quoteAsString(java.lang.CharSequence, java.lang.StringBuilder):void");
    }
}
