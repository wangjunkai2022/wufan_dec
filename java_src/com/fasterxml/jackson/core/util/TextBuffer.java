package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.io.NumberInput;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class TextBuffer {
    static final int MAX_SEGMENT_LEN = 65536;
    static final int MIN_SEGMENT_LEN = 500;
    static final char[] NO_CHARS = new char[0];
    private final BufferRecycler _allocator;
    private char[] _currentSegment;
    private int _currentSize;
    private boolean _hasSegments;
    private char[] _inputBuffer;
    private int _inputLen;
    private int _inputStart;
    private char[] _resultArray;
    private String _resultString;
    private int _segmentSize;
    private ArrayList<char[]> _segments;

    public TextBuffer(BufferRecycler bufferRecycler) {
        this._allocator = bufferRecycler;
    }

    private char[] buf(int i2) {
        BufferRecycler bufferRecycler = this._allocator;
        if (bufferRecycler != null) {
            return bufferRecycler.allocCharBuffer(2, i2);
        }
        return new char[Math.max(i2, 500)];
    }

    private char[] carr(int i2) {
        return new char[i2];
    }

    private void clearSegments() {
        this._hasSegments = false;
        this._segments.clear();
        this._segmentSize = 0;
        this._currentSize = 0;
    }

    private void expand(int i2) {
        if (this._segments == null) {
            this._segments = new ArrayList<>();
        }
        char[] cArr = this._currentSegment;
        this._hasSegments = true;
        this._segments.add(cArr);
        this._segmentSize += cArr.length;
        this._currentSize = 0;
        int length = cArr.length;
        int i4 = length + (length >> 1);
        if (i4 < 500) {
            i4 = 500;
        } else if (i4 > 65536) {
            i4 = 65536;
        }
        this._currentSegment = carr(i4);
    }

    public static TextBuffer fromInitial(char[] cArr) {
        return new TextBuffer(null, cArr);
    }

    private char[] resultArray() {
        int i2;
        String str = this._resultString;
        if (str != null) {
            return str.toCharArray();
        }
        int i4 = this._inputStart;
        if (i4 >= 0) {
            int i5 = this._inputLen;
            if (i5 < 1) {
                return NO_CHARS;
            }
            if (i4 == 0) {
                return Arrays.copyOf(this._inputBuffer, i5);
            }
            return Arrays.copyOfRange(this._inputBuffer, i4, i5 + i4);
        }
        int size = size();
        if (size < 1) {
            return NO_CHARS;
        }
        char[] carr = carr(size);
        ArrayList<char[]> arrayList = this._segments;
        if (arrayList != null) {
            int size2 = arrayList.size();
            i2 = 0;
            for (int i6 = 0; i6 < size2; i6++) {
                char[] cArr = this._segments.get(i6);
                int length = cArr.length;
                System.arraycopy(cArr, 0, carr, i2, length);
                i2 += length;
            }
        } else {
            i2 = 0;
        }
        System.arraycopy(this._currentSegment, 0, carr, i2, this._currentSize);
        return carr;
    }

    private void unshare(int i2) {
        int i4 = this._inputLen;
        this._inputLen = 0;
        char[] cArr = this._inputBuffer;
        this._inputBuffer = null;
        int i5 = this._inputStart;
        this._inputStart = -1;
        int i6 = i2 + i4;
        char[] cArr2 = this._currentSegment;
        if (cArr2 == null || i6 > cArr2.length) {
            this._currentSegment = buf(i6);
        }
        if (i4 > 0) {
            System.arraycopy(cArr, i5, this._currentSegment, 0, i4);
        }
        this._segmentSize = 0;
        this._currentSize = i4;
    }

    public void append(char c4) {
        if (this._inputStart >= 0) {
            unshare(16);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr = this._currentSegment;
        if (this._currentSize >= cArr.length) {
            expand(1);
            cArr = this._currentSegment;
        }
        int i2 = this._currentSize;
        this._currentSize = i2 + 1;
        cArr[i2] = c4;
    }

    public char[] contentsAsArray() {
        char[] cArr = this._resultArray;
        if (cArr == null) {
            char[] resultArray = resultArray();
            this._resultArray = resultArray;
            return resultArray;
        }
        return cArr;
    }

    public BigDecimal contentsAsDecimal() throws NumberFormatException {
        char[] cArr;
        char[] cArr2;
        char[] cArr3 = this._resultArray;
        if (cArr3 != null) {
            return NumberInput.parseBigDecimal(cArr3);
        }
        int i2 = this._inputStart;
        if (i2 >= 0 && (cArr2 = this._inputBuffer) != null) {
            return NumberInput.parseBigDecimal(cArr2, i2, this._inputLen);
        }
        if (this._segmentSize == 0 && (cArr = this._currentSegment) != null) {
            return NumberInput.parseBigDecimal(cArr, 0, this._currentSize);
        }
        return NumberInput.parseBigDecimal(contentsAsArray());
    }

    public double contentsAsDouble() throws NumberFormatException {
        return NumberInput.parseDouble(contentsAsString());
    }

    public int contentsAsInt(boolean z3) {
        char[] cArr;
        int i2 = this._inputStart;
        if (i2 < 0 || (cArr = this._inputBuffer) == null) {
            if (z3) {
                return -NumberInput.parseInt(this._currentSegment, 1, this._currentSize - 1);
            }
            return NumberInput.parseInt(this._currentSegment, 0, this._currentSize);
        } else if (z3) {
            return -NumberInput.parseInt(cArr, i2 + 1, this._inputLen - 1);
        } else {
            return NumberInput.parseInt(cArr, i2, this._inputLen);
        }
    }

    public long contentsAsLong(boolean z3) {
        char[] cArr;
        int i2 = this._inputStart;
        if (i2 < 0 || (cArr = this._inputBuffer) == null) {
            if (z3) {
                return -NumberInput.parseLong(this._currentSegment, 1, this._currentSize - 1);
            }
            return NumberInput.parseLong(this._currentSegment, 0, this._currentSize);
        } else if (z3) {
            return -NumberInput.parseLong(cArr, i2 + 1, this._inputLen - 1);
        } else {
            return NumberInput.parseLong(cArr, i2, this._inputLen);
        }
    }

    public String contentsAsString() {
        if (this._resultString == null) {
            char[] cArr = this._resultArray;
            if (cArr != null) {
                this._resultString = new String(cArr);
            } else {
                int i2 = this._inputStart;
                if (i2 >= 0) {
                    int i4 = this._inputLen;
                    if (i4 < 1) {
                        this._resultString = "";
                        return "";
                    }
                    this._resultString = new String(this._inputBuffer, i2, i4);
                } else {
                    int i5 = this._segmentSize;
                    int i6 = this._currentSize;
                    if (i5 == 0) {
                        this._resultString = i6 != 0 ? new String(this._currentSegment, 0, i6) : "";
                    } else {
                        StringBuilder sb = new StringBuilder(i5 + i6);
                        ArrayList<char[]> arrayList = this._segments;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            for (int i7 = 0; i7 < size; i7++) {
                                char[] cArr2 = this._segments.get(i7);
                                sb.append(cArr2, 0, cArr2.length);
                            }
                        }
                        sb.append(this._currentSegment, 0, this._currentSize);
                        this._resultString = sb.toString();
                    }
                }
            }
        }
        return this._resultString;
    }

    public int contentsToWriter(Writer writer) throws IOException {
        int i2;
        char[] cArr = this._resultArray;
        if (cArr != null) {
            writer.write(cArr);
            return this._resultArray.length;
        }
        String str = this._resultString;
        if (str != null) {
            writer.write(str);
            return this._resultString.length();
        }
        int i4 = this._inputStart;
        if (i4 >= 0) {
            int i5 = this._inputLen;
            if (i5 > 0) {
                writer.write(this._inputBuffer, i4, i5);
            }
            return i5;
        }
        ArrayList<char[]> arrayList = this._segments;
        if (arrayList != null) {
            int size = arrayList.size();
            i2 = 0;
            for (int i6 = 0; i6 < size; i6++) {
                char[] cArr2 = this._segments.get(i6);
                int length = cArr2.length;
                writer.write(cArr2, 0, length);
                i2 += length;
            }
        } else {
            i2 = 0;
        }
        int i7 = this._currentSize;
        if (i7 > 0) {
            writer.write(this._currentSegment, 0, i7);
            return i2 + i7;
        }
        return i2;
    }

    public char[] emptyAndGetCurrentSegment() {
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        char[] cArr = this._currentSegment;
        if (cArr == null) {
            char[] buf = buf(0);
            this._currentSegment = buf;
            return buf;
        }
        return cArr;
    }

    public void ensureNotShared() {
        if (this._inputStart >= 0) {
            unshare(16);
        }
    }

    public char[] expandCurrentSegment() {
        char[] cArr = this._currentSegment;
        int length = cArr.length;
        int i2 = (length >> 1) + length;
        if (i2 > 65536) {
            i2 = (length >> 2) + length;
        }
        char[] copyOf = Arrays.copyOf(cArr, i2);
        this._currentSegment = copyOf;
        return copyOf;
    }

    public char[] finishCurrentSegment() {
        if (this._segments == null) {
            this._segments = new ArrayList<>();
        }
        this._hasSegments = true;
        this._segments.add(this._currentSegment);
        int length = this._currentSegment.length;
        this._segmentSize += length;
        this._currentSize = 0;
        int i2 = length + (length >> 1);
        if (i2 < 500) {
            i2 = 500;
        } else if (i2 > 65536) {
            i2 = 65536;
        }
        char[] carr = carr(i2);
        this._currentSegment = carr;
        return carr;
    }

    public char[] getBufferWithoutReset() {
        return this._currentSegment;
    }

    public char[] getCurrentSegment() {
        if (this._inputStart >= 0) {
            unshare(1);
        } else {
            char[] cArr = this._currentSegment;
            if (cArr == null) {
                this._currentSegment = buf(0);
            } else if (this._currentSize >= cArr.length) {
                expand(1);
            }
        }
        return this._currentSegment;
    }

    public int getCurrentSegmentSize() {
        return this._currentSize;
    }

    public char[] getTextBuffer() {
        if (this._inputStart >= 0) {
            return this._inputBuffer;
        }
        char[] cArr = this._resultArray;
        if (cArr != null) {
            return cArr;
        }
        String str = this._resultString;
        if (str != null) {
            char[] charArray = str.toCharArray();
            this._resultArray = charArray;
            return charArray;
        } else if (!this._hasSegments) {
            char[] cArr2 = this._currentSegment;
            return cArr2 == null ? NO_CHARS : cArr2;
        } else {
            return contentsAsArray();
        }
    }

    public int getTextOffset() {
        int i2 = this._inputStart;
        if (i2 >= 0) {
            return i2;
        }
        return 0;
    }

    public boolean hasTextAsCharacters() {
        return this._inputStart >= 0 || this._resultArray != null || this._resultString == null;
    }

    public void releaseBuffers() {
        char[] cArr;
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        BufferRecycler bufferRecycler = this._allocator;
        if (bufferRecycler == null || (cArr = this._currentSegment) == null) {
            return;
        }
        this._currentSegment = null;
        bufferRecycler.releaseCharBuffer(2, cArr);
    }

    public void resetWith(char c4) {
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        } else if (this._currentSegment == null) {
            this._currentSegment = buf(1);
        }
        this._currentSegment[0] = c4;
        this._segmentSize = 1;
        this._currentSize = 1;
    }

    public void resetWithCopy(char[] cArr, int i2, int i4) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        } else if (this._currentSegment == null) {
            this._currentSegment = buf(i4);
        }
        this._segmentSize = 0;
        this._currentSize = 0;
        append(cArr, i2, i4);
    }

    public void resetWithEmpty() {
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
    }

    public void resetWithShared(char[] cArr, int i2, int i4) {
        this._resultString = null;
        this._resultArray = null;
        this._inputBuffer = cArr;
        this._inputStart = i2;
        this._inputLen = i4;
        if (this._hasSegments) {
            clearSegments();
        }
    }

    public void resetWithString(String str) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = str;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        this._currentSize = 0;
    }

    public String setCurrentAndReturn(int i2) {
        this._currentSize = i2;
        if (this._segmentSize > 0) {
            return contentsAsString();
        }
        String str = i2 == 0 ? "" : new String(this._currentSegment, 0, i2);
        this._resultString = str;
        return str;
    }

    public void setCurrentLength(int i2) {
        this._currentSize = i2;
    }

    public int size() {
        if (this._inputStart >= 0) {
            return this._inputLen;
        }
        char[] cArr = this._resultArray;
        if (cArr != null) {
            return cArr.length;
        }
        String str = this._resultString;
        if (str != null) {
            return str.length();
        }
        return this._segmentSize + this._currentSize;
    }

    public String toString() {
        return contentsAsString();
    }

    protected TextBuffer(BufferRecycler bufferRecycler, char[] cArr) {
        this._allocator = bufferRecycler;
        this._currentSegment = cArr;
        this._currentSize = cArr.length;
        this._inputStart = -1;
    }

    public char[] expandCurrentSegment(int i2) {
        char[] cArr = this._currentSegment;
        if (cArr.length >= i2) {
            return cArr;
        }
        char[] copyOf = Arrays.copyOf(cArr, i2);
        this._currentSegment = copyOf;
        return copyOf;
    }

    public void append(char[] cArr, int i2, int i4) {
        if (this._inputStart >= 0) {
            unshare(i4);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr2 = this._currentSegment;
        int length = cArr2.length;
        int i5 = this._currentSize;
        int i6 = length - i5;
        if (i6 >= i4) {
            System.arraycopy(cArr, i2, cArr2, i5, i4);
            this._currentSize += i4;
            return;
        }
        if (i6 > 0) {
            System.arraycopy(cArr, i2, cArr2, i5, i6);
            i2 += i6;
            i4 -= i6;
        }
        do {
            expand(i4);
            int min = Math.min(this._currentSegment.length, i4);
            System.arraycopy(cArr, i2, this._currentSegment, 0, min);
            this._currentSize += min;
            i2 += min;
            i4 -= min;
        } while (i4 > 0);
    }

    public void resetWithCopy(String str, int i2, int i4) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        } else if (this._currentSegment == null) {
            this._currentSegment = buf(i4);
        }
        this._segmentSize = 0;
        this._currentSize = 0;
        append(str, i2, i4);
    }

    public void append(String str, int i2, int i4) {
        if (this._inputStart >= 0) {
            unshare(i4);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr = this._currentSegment;
        int length = cArr.length;
        int i5 = this._currentSize;
        int i6 = length - i5;
        if (i6 >= i4) {
            str.getChars(i2, i2 + i4, cArr, i5);
            this._currentSize += i4;
            return;
        }
        if (i6 > 0) {
            int i7 = i2 + i6;
            str.getChars(i2, i7, cArr, i5);
            i4 -= i6;
            i2 = i7;
        }
        while (true) {
            expand(i4);
            int min = Math.min(this._currentSegment.length, i4);
            int i8 = i2 + min;
            str.getChars(i2, i8, this._currentSegment, 0);
            this._currentSize += min;
            i4 -= min;
            if (i4 <= 0) {
                return;
            }
            i2 = i8;
        }
    }
}
