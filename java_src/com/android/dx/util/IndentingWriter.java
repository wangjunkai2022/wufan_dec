package com.android.dx.util;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class IndentingWriter extends FilterWriter {
    private boolean collectingIndent;
    private int column;
    private int indent;
    private final int maxIndent;
    private final String prefix;
    private final int width;

    public IndentingWriter(Writer writer, int i2, String str) {
        super(writer);
        Objects.requireNonNull(writer, "out == null");
        if (i2 >= 0) {
            Objects.requireNonNull(str, "prefix == null");
            this.width = i2 != 0 ? i2 : Integer.MAX_VALUE;
            this.maxIndent = i2 >> 1;
            this.prefix = str.length() == 0 ? null : str;
            bol();
            return;
        }
        throw new IllegalArgumentException("width < 0");
    }

    private void bol() {
        this.column = 0;
        this.collectingIndent = this.maxIndent != 0;
        this.indent = 0;
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i2) throws IOException {
        int i4;
        synchronized (((FilterWriter) this).lock) {
            int i5 = 0;
            if (this.collectingIndent) {
                if (i2 == 32) {
                    int i6 = this.indent + 1;
                    this.indent = i6;
                    int i7 = this.maxIndent;
                    if (i6 >= i7) {
                        this.indent = i7;
                        this.collectingIndent = false;
                    }
                } else {
                    this.collectingIndent = false;
                }
            }
            if (this.column == this.width && i2 != 10) {
                ((FilterWriter) this).out.write(10);
                this.column = 0;
            }
            if (this.column == 0) {
                String str = this.prefix;
                if (str != null) {
                    ((FilterWriter) this).out.write(str);
                }
                if (!this.collectingIndent) {
                    while (true) {
                        i4 = this.indent;
                        if (i5 >= i4) {
                            break;
                        }
                        ((FilterWriter) this).out.write(32);
                        i5++;
                    }
                    this.column = i4;
                }
            }
            ((FilterWriter) this).out.write(i2);
            if (i2 == 10) {
                bol();
            } else {
                this.column++;
            }
        }
    }

    public IndentingWriter(Writer writer, int i2) {
        this(writer, i2, "");
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i2, int i4) throws IOException {
        synchronized (((FilterWriter) this).lock) {
            while (i4 > 0) {
                write(cArr[i2]);
                i2++;
                i4--;
            }
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i2, int i4) throws IOException {
        synchronized (((FilterWriter) this).lock) {
            while (i4 > 0) {
                write(str.charAt(i2));
                i2++;
                i4--;
            }
        }
    }
}
