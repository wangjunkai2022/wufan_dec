package com.android.dx.util;

import com.android.dex.Leb128;
import com.android.dex.util.ByteOutput;
import com.android.dex.util.ExceptionWithContext;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ByteArrayAnnotatedOutput implements AnnotatedOutput, ByteOutput {
    private static final int DEFAULT_SIZE = 1000;
    private int annotationWidth;
    private ArrayList<Annotation> annotations;
    private int cursor;
    private byte[] data;
    private int hexCols;
    private final boolean stretchy;
    private boolean verbose;

    public ByteArrayAnnotatedOutput(byte[] bArr) {
        this(bArr, false);
    }

    private void ensureCapacity(int i2) {
        byte[] bArr = this.data;
        if (bArr.length < i2) {
            byte[] bArr2 = new byte[(i2 * 2) + 1000];
            System.arraycopy(bArr, 0, bArr2, 0, this.cursor);
            this.data = bArr2;
        }
    }

    private static void throwBounds() {
        throw new IndexOutOfBoundsException("attempt to write past the end");
    }

    @Override // com.android.dx.util.Output
    public void alignTo(int i2) {
        int i4 = i2 - 1;
        if (i2 >= 0 && (i2 & i4) == 0) {
            int i5 = (this.cursor + i4) & (i4 ^ (-1));
            if (this.stretchy) {
                ensureCapacity(i5);
            } else if (i5 > this.data.length) {
                throwBounds();
                return;
            }
            Arrays.fill(this.data, this.cursor, i5, (byte) 0);
            this.cursor = i5;
            return;
        }
        throw new IllegalArgumentException("bogus alignment");
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public void annotate(String str) {
        if (this.annotations == null) {
            return;
        }
        endAnnotation();
        this.annotations.add(new Annotation(this.cursor, str));
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public boolean annotates() {
        return this.annotations != null;
    }

    @Override // com.android.dx.util.Output
    public void assertCursor(int i2) {
        if (this.cursor == i2) {
            return;
        }
        throw new ExceptionWithContext("expected cursor " + i2 + "; actual value: " + this.cursor);
    }

    public void enableAnnotations(int i2, boolean z3) {
        if (this.annotations != null || this.cursor != 0) {
            throw new RuntimeException("cannot enable annotations");
        }
        if (i2 >= 40) {
            int i4 = (((i2 - 7) / 15) + 1) & (-2);
            if (i4 < 6) {
                i4 = 6;
            } else if (i4 > 10) {
                i4 = 10;
            }
            this.annotations = new ArrayList<>(1000);
            this.annotationWidth = i2;
            this.hexCols = i4;
            this.verbose = z3;
            return;
        }
        throw new IllegalArgumentException("annotationWidth < 40");
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public void endAnnotation() {
        int size;
        ArrayList<Annotation> arrayList = this.annotations;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return;
        }
        this.annotations.get(size - 1).setEndIfUnset(this.cursor);
    }

    public void finishAnnotating() {
        endAnnotation();
        ArrayList<Annotation> arrayList = this.annotations;
        if (arrayList != null) {
            for (int size = arrayList.size(); size > 0; size--) {
                int i2 = size - 1;
                Annotation annotation = this.annotations.get(i2);
                if (annotation.getStart() > this.cursor) {
                    this.annotations.remove(i2);
                } else {
                    int end = annotation.getEnd();
                    int i4 = this.cursor;
                    if (end > i4) {
                        annotation.setEnd(i4);
                        return;
                    }
                    return;
                }
            }
        }
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public int getAnnotationWidth() {
        int i2 = this.hexCols;
        return this.annotationWidth - (((i2 * 2) + 8) + (i2 / 2));
    }

    public byte[] getArray() {
        return this.data;
    }

    @Override // com.android.dx.util.Output
    public int getCursor() {
        return this.cursor;
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public boolean isVerbose() {
        return this.verbose;
    }

    public byte[] toByteArray() {
        int i2 = this.cursor;
        byte[] bArr = new byte[i2];
        System.arraycopy(this.data, 0, bArr, 0, i2);
        return bArr;
    }

    @Override // com.android.dx.util.Output
    public void write(ByteArray byteArray) {
        int size = byteArray.size();
        int i2 = this.cursor;
        int i4 = size + i2;
        if (this.stretchy) {
            ensureCapacity(i4);
        } else if (i4 > this.data.length) {
            throwBounds();
            return;
        }
        byteArray.getBytes(this.data, i2);
        this.cursor = i4;
    }

    public void writeAnnotationsTo(Writer writer) throws IOException {
        int i2;
        String text;
        int i4;
        int i5;
        int annotationWidth = getAnnotationWidth();
        TwoColumnOutput twoColumnOutput = new TwoColumnOutput(writer, (this.annotationWidth - annotationWidth) - 1, annotationWidth, "|");
        Writer left = twoColumnOutput.getLeft();
        Writer right = twoColumnOutput.getRight();
        int size = this.annotations.size();
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = this.cursor;
            if (i7 >= i2 || i6 >= size) {
                break;
            }
            Annotation annotation = this.annotations.get(i6);
            int start = annotation.getStart();
            if (i7 < start) {
                text = "";
                i5 = start;
                i4 = i7;
            } else {
                int end = annotation.getEnd();
                text = annotation.getText();
                i6++;
                i4 = start;
                i5 = end;
            }
            left.write(Hex.dump(this.data, i4, i5 - i4, i4, this.hexCols, 6));
            right.write(text);
            twoColumnOutput.flush();
            i7 = i5;
        }
        if (i7 < i2) {
            left.write(Hex.dump(this.data, i7, i2 - i7, i7, this.hexCols, 6));
        }
        while (i6 < size) {
            right.write(this.annotations.get(i6).getText());
            i6++;
        }
        twoColumnOutput.flush();
    }

    @Override // com.android.dx.util.Output, com.android.dex.util.ByteOutput
    public void writeByte(int i2) {
        int i4 = this.cursor;
        int i5 = i4 + 1;
        if (this.stretchy) {
            ensureCapacity(i5);
        } else if (i5 > this.data.length) {
            throwBounds();
            return;
        }
        this.data[i4] = (byte) i2;
        this.cursor = i5;
    }

    @Override // com.android.dx.util.Output
    public void writeInt(int i2) {
        int i4 = this.cursor;
        int i5 = i4 + 4;
        if (this.stretchy) {
            ensureCapacity(i5);
        } else if (i5 > this.data.length) {
            throwBounds();
            return;
        }
        byte[] bArr = this.data;
        bArr[i4] = (byte) i2;
        bArr[i4 + 1] = (byte) (i2 >> 8);
        bArr[i4 + 2] = (byte) (i2 >> 16);
        bArr[i4 + 3] = (byte) (i2 >> 24);
        this.cursor = i5;
    }

    @Override // com.android.dx.util.Output
    public void writeLong(long j4) {
        int i2 = this.cursor;
        int i4 = i2 + 8;
        if (this.stretchy) {
            ensureCapacity(i4);
        } else if (i4 > this.data.length) {
            throwBounds();
            return;
        }
        int i5 = (int) j4;
        byte[] bArr = this.data;
        bArr[i2] = (byte) i5;
        bArr[i2 + 1] = (byte) (i5 >> 8);
        bArr[i2 + 2] = (byte) (i5 >> 16);
        bArr[i2 + 3] = (byte) (i5 >> 24);
        int i6 = (int) (j4 >> 32);
        bArr[i2 + 4] = (byte) i6;
        bArr[i2 + 5] = (byte) (i6 >> 8);
        bArr[i2 + 6] = (byte) (i6 >> 16);
        bArr[i2 + 7] = (byte) (i6 >> 24);
        this.cursor = i4;
    }

    @Override // com.android.dx.util.Output
    public void writeShort(int i2) {
        int i4 = this.cursor;
        int i5 = i4 + 2;
        if (this.stretchy) {
            ensureCapacity(i5);
        } else if (i5 > this.data.length) {
            throwBounds();
            return;
        }
        byte[] bArr = this.data;
        bArr[i4] = (byte) i2;
        bArr[i4 + 1] = (byte) (i2 >> 8);
        this.cursor = i5;
    }

    @Override // com.android.dx.util.Output
    public int writeSleb128(int i2) {
        if (this.stretchy) {
            ensureCapacity(this.cursor + 5);
        }
        int i4 = this.cursor;
        Leb128.writeSignedLeb128(this, i2);
        return this.cursor - i4;
    }

    @Override // com.android.dx.util.Output
    public int writeUleb128(int i2) {
        if (this.stretchy) {
            ensureCapacity(this.cursor + 5);
        }
        int i4 = this.cursor;
        Leb128.writeUnsignedLeb128(this, i2);
        return this.cursor - i4;
    }

    @Override // com.android.dx.util.Output
    public void writeZeroes(int i2) {
        if (i2 >= 0) {
            int i4 = this.cursor + i2;
            if (this.stretchy) {
                ensureCapacity(i4);
            } else if (i4 > this.data.length) {
                throwBounds();
                return;
            }
            Arrays.fill(this.data, this.cursor, i4, (byte) 0);
            this.cursor = i4;
            return;
        }
        throw new IllegalArgumentException("count < 0");
    }

    public ByteArrayAnnotatedOutput() {
        this(1000);
    }

    public ByteArrayAnnotatedOutput(int i2) {
        this(new byte[i2], true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Annotation {
        private int end;
        private final int start;
        private final String text;

        public Annotation(int i2, int i4, String str) {
            this.start = i2;
            this.end = i4;
            this.text = str;
        }

        public int getEnd() {
            return this.end;
        }

        public int getStart() {
            return this.start;
        }

        public String getText() {
            return this.text;
        }

        public void setEnd(int i2) {
            this.end = i2;
        }

        public void setEndIfUnset(int i2) {
            if (this.end == Integer.MAX_VALUE) {
                this.end = i2;
            }
        }

        public Annotation(int i2, String str) {
            this(i2, Integer.MAX_VALUE, str);
        }
    }

    private ByteArrayAnnotatedOutput(byte[] bArr, boolean z3) {
        Objects.requireNonNull(bArr, "data == null");
        this.stretchy = z3;
        this.data = bArr;
        this.cursor = 0;
        this.verbose = false;
        this.annotations = null;
        this.annotationWidth = 0;
        this.hexCols = 0;
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public void annotate(int i2, String str) {
        if (this.annotations == null) {
            return;
        }
        endAnnotation();
        int size = this.annotations.size();
        int end = size == 0 ? 0 : this.annotations.get(size - 1).getEnd();
        int i4 = this.cursor;
        if (end <= i4) {
            end = i4;
        }
        this.annotations.add(new Annotation(end, i2 + end, str));
    }

    @Override // com.android.dx.util.Output
    public void write(byte[] bArr, int i2, int i4) {
        int i5 = this.cursor;
        int i6 = i5 + i4;
        int i7 = i2 + i4;
        if ((i2 | i4 | i6) >= 0 && i7 <= bArr.length) {
            if (this.stretchy) {
                ensureCapacity(i6);
            } else if (i6 > this.data.length) {
                throwBounds();
                return;
            }
            System.arraycopy(bArr, i2, this.data, i5, i4);
            this.cursor = i6;
            return;
        }
        throw new IndexOutOfBoundsException("bytes.length " + bArr.length + "; " + i2 + "..!" + i6);
    }

    @Override // com.android.dx.util.Output
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }
}
