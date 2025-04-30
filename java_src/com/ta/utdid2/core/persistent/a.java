package com.ta.utdid2.core.persistent;

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
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import kotlin.text.Typography;
import org.xmlpull.v1.XmlSerializer;
/* loaded from: classes4.dex */
class a implements XmlSerializer {

    /* renamed from: h  reason: collision with root package name */
    private static final String[] f59172h = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "&quot;", null, null, null, "&amp;", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "&lt;", null, "&gt;", null};

    /* renamed from: b  reason: collision with root package name */
    private int f59174b;

    /* renamed from: c  reason: collision with root package name */
    private Writer f59175c;

    /* renamed from: d  reason: collision with root package name */
    private OutputStream f59176d;

    /* renamed from: e  reason: collision with root package name */
    private CharsetEncoder f59177e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f59179g;

    /* renamed from: a  reason: collision with root package name */
    private final char[] f59173a = new char[8192];

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f59178f = ByteBuffer.allocate(8192);

    private void a(char c4) throws IOException {
        int i2 = this.f59174b;
        if (i2 >= 8191) {
            flush();
            i2 = this.f59174b;
        }
        this.f59173a[i2] = c4;
        this.f59174b = i2 + 1;
    }

    private void b(String str) throws IOException {
        c(str, 0, str.length());
    }

    private void c(String str, int i2, int i4) throws IOException {
        if (i4 > 8192) {
            int i5 = i4 + i2;
            while (i2 < i5) {
                int i6 = i2 + 8192;
                c(str, i2, i6 < i5 ? 8192 : i5 - i2);
                i2 = i6;
            }
            return;
        }
        int i7 = this.f59174b;
        if (i7 + i4 > 8192) {
            flush();
            i7 = this.f59174b;
        }
        str.getChars(i2, i2 + i4, this.f59173a, i7);
        this.f59174b = i7 + i4;
    }

    private void d(char[] cArr, int i2, int i4) throws IOException {
        if (i4 > 8192) {
            int i5 = i4 + i2;
            while (i2 < i5) {
                int i6 = i2 + 8192;
                d(cArr, i2, i6 < i5 ? 8192 : i5 - i2);
                i2 = i6;
            }
            return;
        }
        int i7 = this.f59174b;
        if (i7 + i4 > 8192) {
            flush();
            i7 = this.f59174b;
        }
        System.arraycopy(cArr, i2, this.f59173a, i7, i4);
        this.f59174b = i7 + i4;
    }

    private void e(String str) throws IOException {
        String str2;
        int length = str.length();
        String[] strArr = f59172h;
        char length2 = (char) strArr.length;
        int i2 = 0;
        int i4 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt < length2 && (str2 = strArr[charAt]) != null) {
                if (i4 < i2) {
                    c(str, i4, i2 - i4);
                }
                i4 = i2 + 1;
                b(str2);
            }
            i2++;
        }
        if (i4 < i2) {
            c(str, i4, i2 - i4);
        }
    }

    private void f(char[] cArr, int i2, int i4) throws IOException {
        String str;
        String[] strArr = f59172h;
        char length = (char) strArr.length;
        int i5 = i4 + i2;
        int i6 = i2;
        while (i2 < i5) {
            char c4 = cArr[i2];
            if (c4 < length && (str = strArr[c4]) != null) {
                if (i6 < i2) {
                    d(cArr, i6, i2 - i6);
                }
                i6 = i2 + 1;
                b(str);
            }
            i2++;
        }
        if (i6 < i2) {
            d(cArr, i6, i2 - i6);
        }
    }

    private void g() throws IOException {
        int position = this.f59178f.position();
        if (position > 0) {
            this.f59178f.flip();
            this.f59176d.write(this.f59178f.array(), 0, position);
            this.f59178f.clear();
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer attribute(String str, String str2, String str3) throws IOException, IllegalArgumentException, IllegalStateException {
        a(' ');
        if (str != null) {
            b(str);
            a(':');
        }
        b(str2);
        b("=\"");
        e(str3);
        a('\"');
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void cdsect(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void comment(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void docdecl(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void endDocument() throws IOException, IllegalArgumentException, IllegalStateException {
        flush();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer endTag(String str, String str2) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f59179g) {
            b(" />\n");
        } else {
            b("</");
            if (str != null) {
                b(str);
                a(':');
            }
            b(str2);
            b(">\n");
        }
        this.f59179g = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void entityRef(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void flush() throws IOException {
        int i2 = this.f59174b;
        if (i2 > 0) {
            if (this.f59176d != null) {
                CharBuffer wrap = CharBuffer.wrap(this.f59173a, 0, i2);
                CoderResult encode = this.f59177e.encode(wrap, this.f59178f, true);
                while (!encode.isError()) {
                    if (encode.isOverflow()) {
                        g();
                        encode = this.f59177e.encode(wrap, this.f59178f, true);
                    } else {
                        g();
                        this.f59176d.flush();
                    }
                }
                throw new IOException(encode.toString());
            }
            this.f59175c.write(this.f59173a, 0, i2);
            this.f59175c.flush();
            this.f59174b = 0;
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public int getDepth() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public boolean getFeature(String str) {
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
    public String getPrefix(String str, boolean z3) throws IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public Object getProperty(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void ignorableWhitespace(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void processingInstruction(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setFeature(String str, boolean z3) throws IllegalArgumentException, IllegalStateException {
        if (!str.equals("http://xmlpull.org/v1/doc/features.html#indent-output")) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(OutputStream outputStream, String str) throws IOException, IllegalArgumentException, IllegalStateException {
        if (outputStream != null) {
            try {
                this.f59177e = Charset.forName(str).newEncoder();
                this.f59176d = outputStream;
                return;
            } catch (IllegalCharsetNameException e4) {
                throw ((UnsupportedEncodingException) new UnsupportedEncodingException(str).initCause(e4));
            } catch (UnsupportedCharsetException e5) {
                throw ((UnsupportedEncodingException) new UnsupportedEncodingException(str).initCause(e5));
            }
        }
        throw new IllegalArgumentException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setPrefix(String str, String str2) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setProperty(String str, Object obj) throws IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void startDocument(String str, Boolean bool) throws IOException, IllegalArgumentException, IllegalStateException {
        StringBuilder sb = new StringBuilder("<?xml version='1.0' encoding='utf-8' standalone='");
        sb.append(bool.booleanValue() ? "yes" : "no");
        sb.append("' ?>\n");
        b(sb.toString());
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer startTag(String str, String str2) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f59179g) {
            b(">\n");
        }
        a(Typography.less);
        if (str != null) {
            b(str);
            a(':');
        }
        b(str2);
        this.f59179g = true;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(char[] cArr, int i2, int i4) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f59179g) {
            b(SimpleComparison.GREATER_THAN_OPERATION);
            this.f59179g = false;
        }
        f(cArr, i2, i4);
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(String str) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f59179g) {
            b(SimpleComparison.GREATER_THAN_OPERATION);
            this.f59179g = false;
        }
        e(str);
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(Writer writer) throws IOException, IllegalArgumentException, IllegalStateException {
        this.f59175c = writer;
    }
}
