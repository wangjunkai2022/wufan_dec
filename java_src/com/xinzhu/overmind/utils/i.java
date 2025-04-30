package com.xinzhu.overmind.utils;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import kotlin.text.Typography;
import org.xmlpull.v1.XmlSerializer;
/* compiled from: FastXmlSerializer.java */
/* loaded from: classes3.dex */
public class i implements XmlSerializer {

    /* renamed from: m  reason: collision with root package name */
    private static final int f64722m = 32768;

    /* renamed from: a  reason: collision with root package name */
    private final int f64724a;

    /* renamed from: b  reason: collision with root package name */
    private final char[] f64725b;

    /* renamed from: c  reason: collision with root package name */
    private int f64726c;

    /* renamed from: d  reason: collision with root package name */
    private Writer f64727d;

    /* renamed from: e  reason: collision with root package name */
    private OutputStream f64728e;

    /* renamed from: f  reason: collision with root package name */
    private CharsetEncoder f64729f;

    /* renamed from: g  reason: collision with root package name */
    private ByteBuffer f64730g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f64731h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f64732i;

    /* renamed from: j  reason: collision with root package name */
    private int f64733j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f64734k;

    /* renamed from: l  reason: collision with root package name */
    private static final String[] f64721l = {"&#0;", "&#1;", "&#2;", "&#3;", "&#4;", "&#5;", "&#6;", "&#7;", "&#8;", "&#9;", "&#10;", "&#11;", "&#12;", "&#13;", "&#14;", "&#15;", "&#16;", "&#17;", "&#18;", "&#19;", "&#20;", "&#21;", "&#22;", "&#23;", "&#24;", "&#25;", "&#26;", "&#27;", "&#28;", "&#29;", "&#30;", "&#31;", null, null, "&quot;", null, null, null, "&amp;", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "&lt;", null, "&gt;", null};

    /* renamed from: n  reason: collision with root package name */
    private static String f64723n = "                                                              ";

    public i() {
        this(32768);
    }

    private void a(char c4) throws IOException {
        int i2 = this.f64726c;
        if (i2 >= this.f64724a - 1) {
            flush();
            i2 = this.f64726c;
        }
        this.f64725b[i2] = c4;
        this.f64726c = i2 + 1;
    }

    private void b(String str) throws IOException {
        c(str, 0, str.length());
    }

    private void c(String str, int i2, final int length) throws IOException {
        int i4 = this.f64724a;
        if (length <= i4) {
            int i5 = this.f64726c;
            if (i5 + length > i4) {
                flush();
                i5 = this.f64726c;
            }
            str.getChars(i2, i2 + length, this.f64725b, i5);
            this.f64726c = i5 + length;
            return;
        }
        int i6 = length + i2;
        while (i2 < i6) {
            int i7 = this.f64724a;
            int i8 = i2 + i7;
            if (i8 >= i6) {
                i7 = i6 - i2;
            }
            c(str, i2, i7);
            i2 = i8;
        }
    }

    private void d(char[] buf, int i2, final int length) throws IOException {
        int i4 = this.f64724a;
        if (length <= i4) {
            int i5 = this.f64726c;
            if (i5 + length > i4) {
                flush();
                i5 = this.f64726c;
            }
            System.arraycopy(buf, i2, this.f64725b, i5, length);
            this.f64726c = i5 + length;
            return;
        }
        int i6 = length + i2;
        while (i2 < i6) {
            int i7 = this.f64724a;
            int i8 = i2 + i7;
            if (i8 >= i6) {
                i7 = i6 - i2;
            }
            d(buf, i2, i7);
            i2 = i8;
        }
    }

    private void e(int indent) throws IOException {
        int i2 = indent * 4;
        if (i2 > f64723n.length()) {
            i2 = f64723n.length();
        }
        c(f64723n, 0, i2);
    }

    private void f(final String string) throws IOException {
        String str;
        int length = string.length();
        String[] strArr = f64721l;
        char length2 = (char) strArr.length;
        int i2 = 0;
        int i4 = 0;
        while (i2 < length) {
            char charAt = string.charAt(i2);
            if (charAt < length2 && (str = strArr[charAt]) != null) {
                if (i4 < i2) {
                    c(string, i4, i2 - i4);
                }
                i4 = i2 + 1;
                b(str);
            }
            i2++;
        }
        if (i4 < i2) {
            c(string, i4, i2 - i4);
        }
    }

    private void g(char[] buf, int start, int len) throws IOException {
        String str;
        String[] strArr = f64721l;
        char length = (char) strArr.length;
        int i2 = len + start;
        int i4 = start;
        while (start < i2) {
            char c4 = buf[start];
            if (c4 < length && (str = strArr[c4]) != null) {
                if (i4 < start) {
                    d(buf, i4, start - i4);
                }
                i4 = start + 1;
                b(str);
            }
            start++;
        }
        if (i4 < start) {
            d(buf, i4, start - i4);
        }
    }

    private void h() throws IOException {
        int position = this.f64730g.position();
        if (position > 0) {
            this.f64730g.flip();
            this.f64728e.write(this.f64730g.array(), 0, position);
            this.f64730g.clear();
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer attribute(String namespace, String name, String value) throws IOException, IllegalArgumentException, IllegalStateException {
        a(' ');
        if (namespace != null) {
            b(namespace);
            a(':');
        }
        b(name);
        b("=\"");
        f(value);
        a('\"');
        this.f64734k = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void cdsect(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void comment(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void docdecl(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void endDocument() throws IOException, IllegalArgumentException, IllegalStateException {
        flush();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer endTag(String namespace, String name) throws IOException, IllegalArgumentException, IllegalStateException {
        int i2 = this.f64733j - 1;
        this.f64733j = i2;
        if (this.f64732i) {
            b(" />\n");
        } else {
            if (this.f64731h && this.f64734k) {
                e(i2);
            }
            b("</");
            if (namespace != null) {
                b(namespace);
                a(':');
            }
            b(name);
            b(">\n");
        }
        this.f64734k = true;
        this.f64732i = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void entityRef(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void flush() throws IOException {
        int i2 = this.f64726c;
        if (i2 > 0) {
            if (this.f64728e != null) {
                CharBuffer wrap = CharBuffer.wrap(this.f64725b, 0, i2);
                CoderResult encode = this.f64729f.encode(wrap, this.f64730g, true);
                while (!encode.isError()) {
                    if (encode.isOverflow()) {
                        h();
                        encode = this.f64729f.encode(wrap, this.f64730g, true);
                    } else {
                        h();
                        this.f64728e.flush();
                    }
                }
                throw new IOException(encode.toString());
            }
            this.f64727d.write(this.f64725b, 0, i2);
            this.f64727d.flush();
            this.f64726c = 0;
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public int getDepth() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public boolean getFeature(String name) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getName() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getNamespace() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getPrefix(String namespace, boolean generatePrefix) throws IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public Object getProperty(String name) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void ignorableWhitespace(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void processingInstruction(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setFeature(String name, boolean state) throws IllegalArgumentException, IllegalStateException {
        if (name.equals("http://xmlpull.org/v1/doc/features.html#indent-output")) {
            this.f64731h = true;
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(OutputStream os, String encoding) throws IOException, IllegalArgumentException, IllegalStateException {
        if (os != null) {
            try {
                this.f64729f = Charset.forName(encoding).newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
                this.f64728e = os;
                return;
            } catch (IllegalCharsetNameException e4) {
                throw ((UnsupportedEncodingException) new UnsupportedEncodingException(encoding).initCause(e4));
            } catch (UnsupportedCharsetException e5) {
                throw ((UnsupportedEncodingException) new UnsupportedEncodingException(encoding).initCause(e5));
            }
        }
        throw new IllegalArgumentException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setPrefix(String prefix, String namespace) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setProperty(String name, Object value) throws IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void startDocument(String encoding, Boolean standalone) throws IOException, IllegalArgumentException, IllegalStateException {
        StringBuilder sb = new StringBuilder();
        sb.append("<?xml version='1.0' encoding='utf-8' standalone='");
        sb.append(standalone.booleanValue() ? "yes" : "no");
        sb.append("' ?>\n");
        b(sb.toString());
        this.f64734k = true;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer startTag(String namespace, String name) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f64732i) {
            b(">\n");
        }
        if (this.f64731h) {
            e(this.f64733j);
        }
        this.f64733j++;
        a(Typography.less);
        if (namespace != null) {
            b(namespace);
            a(':');
        }
        b(name);
        this.f64732i = true;
        this.f64734k = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(char[] buf, int start, int len) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f64732i) {
            b(SimpleComparison.GREATER_THAN_OPERATION);
            this.f64732i = false;
        }
        g(buf, start, len);
        if (this.f64731h) {
            this.f64734k = buf[(start + len) - 1] == '\n';
        }
        return this;
    }

    public i(int bufferSize) {
        this.f64731h = false;
        this.f64733j = 0;
        this.f64734k = true;
        bufferSize = bufferSize <= 0 ? 32768 : bufferSize;
        this.f64724a = bufferSize;
        this.f64725b = new char[bufferSize];
        this.f64730g = ByteBuffer.allocate(bufferSize);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        boolean z3 = false;
        if (this.f64732i) {
            b(SimpleComparison.GREATER_THAN_OPERATION);
            this.f64732i = false;
        }
        f(text);
        if (this.f64731h) {
            if (text.length() > 0 && text.charAt(text.length() - 1) == '\n') {
                z3 = true;
            }
            this.f64734k = z3;
        }
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(Writer writer) throws IOException, IllegalArgumentException, IllegalStateException {
        this.f64727d = writer;
    }
}
