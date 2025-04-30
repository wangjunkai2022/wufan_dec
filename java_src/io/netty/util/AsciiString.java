package io.netty.util;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.InternalThreadLocalMap;
import io.netty.util.internal.MathUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public final class AsciiString implements CharSequence, Comparable<CharSequence> {
    public static final int INDEX_NOT_FOUND = -1;
    private static final char MAX_CHAR_VALUE = 255;
    private int hash;
    private final int length;
    private final int offset;
    private String string;
    private final byte[] value;
    public static final AsciiString EMPTY_STRING = cached("");
    public static final HashingStrategy<CharSequence> CASE_INSENSITIVE_HASHER = new HashingStrategy<CharSequence>() { // from class: io.netty.util.AsciiString.1
        @Override // io.netty.util.HashingStrategy
        public boolean equals(CharSequence charSequence, CharSequence charSequence2) {
            return AsciiString.contentEqualsIgnoreCase(charSequence, charSequence2);
        }

        @Override // io.netty.util.HashingStrategy
        public int hashCode(CharSequence charSequence) {
            return AsciiString.hashCode(charSequence);
        }
    };
    public static final HashingStrategy<CharSequence> CASE_SENSITIVE_HASHER = new HashingStrategy<CharSequence>() { // from class: io.netty.util.AsciiString.2
        @Override // io.netty.util.HashingStrategy
        public boolean equals(CharSequence charSequence, CharSequence charSequence2) {
            return AsciiString.contentEquals(charSequence, charSequence2);
        }

        @Override // io.netty.util.HashingStrategy
        public int hashCode(CharSequence charSequence) {
            return AsciiString.hashCode(charSequence);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class AsciiCaseInsensitiveCharEqualityComparator implements CharEqualityComparator {
        static final AsciiCaseInsensitiveCharEqualityComparator INSTANCE = new AsciiCaseInsensitiveCharEqualityComparator();

        private AsciiCaseInsensitiveCharEqualityComparator() {
        }

        @Override // io.netty.util.AsciiString.CharEqualityComparator
        public boolean equals(char c4, char c5) {
            return AsciiString.equalsIgnoreCase(c4, c5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public interface CharEqualityComparator {
        boolean equals(char c4, char c5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class DefaultCharEqualityComparator implements CharEqualityComparator {
        static final DefaultCharEqualityComparator INSTANCE = new DefaultCharEqualityComparator();

        private DefaultCharEqualityComparator() {
        }

        @Override // io.netty.util.AsciiString.CharEqualityComparator
        public boolean equals(char c4, char c5) {
            return c4 == c5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class GeneralCaseInsensitiveCharEqualityComparator implements CharEqualityComparator {
        static final GeneralCaseInsensitiveCharEqualityComparator INSTANCE = new GeneralCaseInsensitiveCharEqualityComparator();

        private GeneralCaseInsensitiveCharEqualityComparator() {
        }

        @Override // io.netty.util.AsciiString.CharEqualityComparator
        public boolean equals(char c4, char c5) {
            return Character.toUpperCase(c4) == Character.toUpperCase(c5) || Character.toLowerCase(c4) == Character.toLowerCase(c5);
        }
    }

    public AsciiString(byte[] bArr) {
        this(bArr, true);
    }

    public static char b2c(byte b4) {
        return (char) (b4 & 255);
    }

    public static byte c2b(char c4) {
        if (c4 > 255) {
            c4 = '?';
        }
        return (byte) c4;
    }

    private static byte c2b0(char c4) {
        return (byte) c4;
    }

    public static AsciiString cached(String str) {
        AsciiString asciiString = new AsciiString(str);
        asciiString.string = str;
        return asciiString;
    }

    public static boolean containsAllContentEqualsIgnoreCase(Collection<CharSequence> collection, Collection<CharSequence> collection2) {
        for (CharSequence charSequence : collection2) {
            if (!containsContentEqualsIgnoreCase(collection, charSequence)) {
                return false;
            }
        }
        return true;
    }

    public static boolean containsContentEqualsIgnoreCase(Collection<CharSequence> collection, CharSequence charSequence) {
        for (CharSequence charSequence2 : collection) {
            if (contentEqualsIgnoreCase(charSequence, charSequence2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean containsIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        return contains(charSequence, charSequence2, AsciiCaseInsensitiveCharEqualityComparator.INSTANCE);
    }

    private static boolean equalsIgnoreCase(byte b4, byte b5) {
        return b4 == b5 || toLowerCase(b4) == toLowerCase(b5);
    }

    private int forEachByte0(int i2, int i4, ByteProcessor byteProcessor) throws Exception {
        int i5 = this.offset;
        int i6 = i5 + i2 + i4;
        for (int i7 = i5 + i2; i7 < i6; i7++) {
            if (!byteProcessor.process(this.value[i7])) {
                return i7 - this.offset;
            }
        }
        return -1;
    }

    private int forEachByteDesc0(int i2, int i4, ByteProcessor byteProcessor) throws Exception {
        int i5 = this.offset;
        int i6 = i5 + i2;
        for (int i7 = ((i5 + i2) + i4) - 1; i7 >= i6; i7--) {
            if (!byteProcessor.process(this.value[i7])) {
                return i7 - this.offset;
            }
        }
        return -1;
    }

    public static int indexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2, int i2) {
        if (charSequence != null && charSequence2 != null) {
            if (i2 < 0) {
                i2 = 0;
            }
            int length = charSequence2.length();
            int length2 = (charSequence.length() - length) + 1;
            if (i2 > length2) {
                return -1;
            }
            if (length == 0) {
                return i2;
            }
            while (i2 < length2) {
                if (regionMatches(charSequence, true, i2, charSequence2, 0, length)) {
                    return i2;
                }
                i2++;
            }
        }
        return -1;
    }

    public static int indexOfIgnoreCaseAscii(CharSequence charSequence, CharSequence charSequence2, int i2) {
        if (charSequence != null && charSequence2 != null) {
            if (i2 < 0) {
                i2 = 0;
            }
            int length = charSequence2.length();
            int length2 = (charSequence.length() - length) + 1;
            if (i2 > length2) {
                return -1;
            }
            if (length == 0) {
                return i2;
            }
            while (i2 < length2) {
                if (regionMatchesAscii(charSequence, true, i2, charSequence2, 0, length)) {
                    return i2;
                }
                i2++;
            }
        }
        return -1;
    }

    private static boolean isLowerCase(byte b4) {
        return b4 >= 97 && b4 <= 122;
    }

    public static boolean isUpperCase(byte b4) {
        return b4 >= 65 && b4 <= 90;
    }

    public static boolean isUpperCase(char c4) {
        return c4 >= 'A' && c4 <= 'Z';
    }

    public static AsciiString of(CharSequence charSequence) {
        return charSequence instanceof AsciiString ? (AsciiString) charSequence : new AsciiString(charSequence);
    }

    public static boolean regionMatchesAscii(CharSequence charSequence, boolean z3, int i2, CharSequence charSequence2, int i4, int i5) {
        if (charSequence == null || charSequence2 == null) {
            return false;
        }
        if (!z3 && (charSequence instanceof String) && (charSequence2 instanceof String)) {
            return ((String) charSequence).regionMatches(false, i2, (String) charSequence2, i4, i5);
        }
        if (charSequence instanceof AsciiString) {
            return ((AsciiString) charSequence).regionMatches(z3, i2, charSequence2, i4, i5);
        }
        return regionMatchesCharSequences(charSequence, i2, charSequence2, i4, i5, z3 ? AsciiCaseInsensitiveCharEqualityComparator.INSTANCE : DefaultCharEqualityComparator.INSTANCE);
    }

    private static boolean regionMatchesCharSequences(CharSequence charSequence, int i2, CharSequence charSequence2, int i4, int i5, CharEqualityComparator charEqualityComparator) {
        if (i2 < 0 || i5 > charSequence.length() - i2 || i4 < 0 || i5 > charSequence2.length() - i4) {
            return false;
        }
        int i6 = i5 + i2;
        while (i2 < i6) {
            int i7 = i2 + 1;
            int i8 = i4 + 1;
            if (!charEqualityComparator.equals(charSequence.charAt(i2), charSequence2.charAt(i4))) {
                return false;
            }
            i2 = i7;
            i4 = i8;
        }
        return true;
    }

    private static AsciiString[] toAsciiStringArray(String[] strArr) {
        AsciiString[] asciiStringArr = new AsciiString[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            asciiStringArr[i2] = new AsciiString(strArr[i2]);
        }
        return asciiStringArr;
    }

    public static CharSequence trim(CharSequence charSequence) {
        if (charSequence instanceof AsciiString) {
            return ((AsciiString) charSequence).trim();
        }
        if (charSequence instanceof String) {
            return ((String) charSequence).trim();
        }
        int i2 = 0;
        int length = charSequence.length() - 1;
        while (i2 <= length && charSequence.charAt(i2) <= ' ') {
            i2++;
        }
        int i4 = length;
        while (i4 >= i2 && charSequence.charAt(i4) <= ' ') {
            i4--;
        }
        return (i2 == 0 && i4 == length) ? charSequence : charSequence.subSequence(i2, i4);
    }

    public byte[] array() {
        return this.value;
    }

    public void arrayChanged() {
        this.string = null;
        this.hash = 0;
    }

    public int arrayOffset() {
        return this.offset;
    }

    public byte byteAt(int i2) {
        if (i2 >= 0 && i2 < this.length) {
            if (PlatformDependent.hasUnsafe()) {
                return PlatformDependent.getByte(this.value, i2 + this.offset);
            }
            return this.value[i2 + this.offset];
        }
        throw new IndexOutOfBoundsException("index: " + i2 + " must be in the range [0," + this.length + ")");
    }

    @Override // java.lang.CharSequence
    public char charAt(int i2) {
        return b2c(byteAt(i2));
    }

    public AsciiString concat(CharSequence charSequence) {
        int length = length();
        int length2 = charSequence.length();
        if (length2 == 0) {
            return this;
        }
        if (charSequence instanceof AsciiString) {
            AsciiString asciiString = (AsciiString) charSequence;
            if (isEmpty()) {
                return asciiString;
            }
            byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray(length + length2);
            System.arraycopy(this.value, arrayOffset(), allocateUninitializedArray, 0, length);
            System.arraycopy(asciiString.value, asciiString.arrayOffset(), allocateUninitializedArray, length, length2);
            return new AsciiString(allocateUninitializedArray, false);
        } else if (isEmpty()) {
            return new AsciiString(charSequence);
        } else {
            byte[] allocateUninitializedArray2 = PlatformDependent.allocateUninitializedArray(length2 + length);
            System.arraycopy(this.value, arrayOffset(), allocateUninitializedArray2, 0, length);
            int i2 = 0;
            while (length < allocateUninitializedArray2.length) {
                allocateUninitializedArray2[length] = c2b(charSequence.charAt(i2));
                length++;
                i2++;
            }
            return new AsciiString(allocateUninitializedArray2, false);
        }
    }

    public boolean contains(CharSequence charSequence) {
        return indexOf(charSequence) >= 0;
    }

    public boolean contentEquals(CharSequence charSequence) {
        if (this == charSequence) {
            return true;
        }
        if (charSequence == null || charSequence.length() != length()) {
            return false;
        }
        if (charSequence instanceof AsciiString) {
            return equals(charSequence);
        }
        int arrayOffset = arrayOffset();
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (b2c(this.value[arrayOffset]) != charSequence.charAt(i2)) {
                return false;
            }
            arrayOffset++;
        }
        return true;
    }

    public boolean contentEqualsIgnoreCase(CharSequence charSequence) {
        if (this == charSequence) {
            return true;
        }
        if (charSequence == null || charSequence.length() != length()) {
            return false;
        }
        if (charSequence instanceof AsciiString) {
            AsciiString asciiString = (AsciiString) charSequence;
            int arrayOffset = arrayOffset();
            int arrayOffset2 = asciiString.arrayOffset();
            int length = length() + arrayOffset;
            while (arrayOffset < length) {
                if (!equalsIgnoreCase(this.value[arrayOffset], asciiString.value[arrayOffset2])) {
                    return false;
                }
                arrayOffset++;
                arrayOffset2++;
            }
            return true;
        }
        int arrayOffset3 = arrayOffset();
        int length2 = length();
        for (int i2 = 0; i2 < length2; i2++) {
            if (!equalsIgnoreCase(b2c(this.value[arrayOffset3]), charSequence.charAt(i2))) {
                return false;
            }
            arrayOffset3++;
        }
        return true;
    }

    public void copy(int i2, byte[] bArr, int i4, int i5) {
        if (!MathUtil.isOutOfBounds(i2, i5, length())) {
            System.arraycopy(this.value, i2 + this.offset, ObjectUtil.checkNotNull(bArr, "dst"), i4, i5);
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= srcIdx(" + i2 + ") <= srcIdx + length(" + i5 + ") <= srcLen(" + length() + ')');
    }

    public boolean endsWith(CharSequence charSequence) {
        int length = charSequence.length();
        return regionMatches(length() - length, charSequence, 0, length);
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != AsciiString.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        AsciiString asciiString = (AsciiString) obj;
        return length() == asciiString.length() && hashCode() == asciiString.hashCode() && PlatformDependent.equals(array(), arrayOffset(), asciiString.array(), asciiString.arrayOffset(), length());
    }

    public int forEachByte(ByteProcessor byteProcessor) throws Exception {
        return forEachByte0(0, length(), byteProcessor);
    }

    public int forEachByteDesc(ByteProcessor byteProcessor) throws Exception {
        return forEachByteDesc0(0, length(), byteProcessor);
    }

    public int hashCode() {
        int i2 = this.hash;
        if (i2 == 0) {
            int hashCodeAscii = PlatformDependent.hashCodeAscii(this.value, this.offset, this.length);
            this.hash = hashCodeAscii;
            return hashCodeAscii;
        }
        return i2;
    }

    public int indexOf(CharSequence charSequence) {
        return indexOf(charSequence, 0);
    }

    public boolean isEmpty() {
        return this.length == 0;
    }

    public boolean isEntireArrayUsed() {
        return this.offset == 0 && this.length == this.value.length;
    }

    public int lastIndexOf(CharSequence charSequence) {
        return lastIndexOf(charSequence, this.length);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.length;
    }

    public boolean matches(String str) {
        return Pattern.matches(str, this);
    }

    public boolean parseBoolean() {
        return this.length >= 1 && this.value[this.offset] != 0;
    }

    public char parseChar() {
        return parseChar(0);
    }

    public double parseDouble() {
        return parseDouble(0, length());
    }

    public float parseFloat() {
        return parseFloat(0, length());
    }

    public int parseInt() {
        return parseInt(0, length(), 10);
    }

    public long parseLong() {
        return parseLong(0, length(), 10);
    }

    public short parseShort() {
        return parseShort(0, length(), 10);
    }

    public boolean regionMatches(int i2, CharSequence charSequence, int i4, int i5) {
        ObjectUtil.checkNotNull(charSequence, TypedValues.Custom.S_STRING);
        if (i4 >= 0 && charSequence.length() - i4 >= i5) {
            int length = length();
            if (i2 >= 0 && length - i2 >= i5) {
                if (i5 <= 0) {
                    return true;
                }
                int i6 = i5 + i4;
                int arrayOffset = i2 + arrayOffset();
                while (i4 < i6) {
                    if (b2c(this.value[arrayOffset]) != charSequence.charAt(i4)) {
                        return false;
                    }
                    i4++;
                    arrayOffset++;
                }
                return true;
            }
        }
        return false;
    }

    public AsciiString replace(char c4, char c5) {
        if (c4 > 255) {
            return this;
        }
        byte c2b0 = c2b0(c4);
        byte c2b = c2b(c5);
        int i2 = this.offset;
        int i4 = this.length + i2;
        while (i2 < i4) {
            if (this.value[i2] == c2b0) {
                byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray(length());
                byte[] bArr = this.value;
                int i5 = this.offset;
                System.arraycopy(bArr, i5, allocateUninitializedArray, 0, i2 - i5);
                allocateUninitializedArray[i2 - this.offset] = c2b;
                while (true) {
                    i2++;
                    if (i2 < i4) {
                        byte b4 = this.value[i2];
                        int i6 = i2 - this.offset;
                        if (b4 == c2b0) {
                            b4 = c2b;
                        }
                        allocateUninitializedArray[i6] = b4;
                    } else {
                        return new AsciiString(allocateUninitializedArray, false);
                    }
                }
            } else {
                i2++;
            }
        }
        return this;
    }

    public AsciiString[] split(String str, int i2) {
        return toAsciiStringArray(Pattern.compile(str).split(this, i2));
    }

    public boolean startsWith(CharSequence charSequence) {
        return startsWith(charSequence, 0);
    }

    public byte[] toByteArray() {
        return toByteArray(0, length());
    }

    public char[] toCharArray() {
        return toCharArray(0, length());
    }

    public AsciiString toLowerCase() {
        boolean z3;
        int length = length() + arrayOffset();
        int arrayOffset = arrayOffset();
        while (true) {
            if (arrayOffset >= length) {
                z3 = true;
                break;
            }
            byte b4 = this.value[arrayOffset];
            if (b4 >= 65 && b4 <= 90) {
                z3 = false;
                break;
            }
            arrayOffset++;
        }
        if (z3) {
            return this;
        }
        byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray(length());
        int arrayOffset2 = arrayOffset();
        int i2 = 0;
        while (i2 < allocateUninitializedArray.length) {
            allocateUninitializedArray[i2] = toLowerCase(this.value[arrayOffset2]);
            i2++;
            arrayOffset2++;
        }
        return new AsciiString(allocateUninitializedArray, false);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        String str = this.string;
        if (str == null) {
            String asciiString = toString(0);
            this.string = asciiString;
            return asciiString;
        }
        return str;
    }

    public AsciiString toUpperCase() {
        boolean z3;
        int length = length() + arrayOffset();
        int arrayOffset = arrayOffset();
        while (true) {
            if (arrayOffset >= length) {
                z3 = true;
                break;
            }
            byte b4 = this.value[arrayOffset];
            if (b4 >= 97 && b4 <= 122) {
                z3 = false;
                break;
            }
            arrayOffset++;
        }
        if (z3) {
            return this;
        }
        byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray(length());
        int arrayOffset2 = arrayOffset();
        int i2 = 0;
        while (i2 < allocateUninitializedArray.length) {
            allocateUninitializedArray[i2] = toUpperCase(this.value[arrayOffset2]);
            i2++;
            arrayOffset2++;
        }
        return new AsciiString(allocateUninitializedArray, false);
    }

    public AsciiString(byte[] bArr, boolean z3) {
        this(bArr, 0, bArr.length, z3);
    }

    public static boolean contains(CharSequence charSequence, CharSequence charSequence2) {
        return contains(charSequence, charSequence2, DefaultCharEqualityComparator.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean equalsIgnoreCase(char c4, char c5) {
        return c4 == c5 || toLowerCase(c4) == toLowerCase(c5);
    }

    @Override // java.lang.Comparable
    public int compareTo(CharSequence charSequence) {
        int i2 = 0;
        if (this == charSequence) {
            return 0;
        }
        int length = length();
        int length2 = charSequence.length();
        int min = Math.min(length, length2);
        int arrayOffset = arrayOffset();
        while (i2 < min) {
            int b2c = b2c(this.value[arrayOffset]) - charSequence.charAt(i2);
            if (b2c != 0) {
                return b2c;
            }
            i2++;
            arrayOffset++;
        }
        return length - length2;
    }

    public int forEachByte(int i2, int i4, ByteProcessor byteProcessor) throws Exception {
        if (!MathUtil.isOutOfBounds(i2, i4, length())) {
            return forEachByte0(i2, i4, byteProcessor);
        }
        throw new IndexOutOfBoundsException("expected: 0 <= index(" + i2 + ") <= start + length(" + i4 + ") <= length(" + length() + ')');
    }

    public int forEachByteDesc(int i2, int i4, ByteProcessor byteProcessor) throws Exception {
        if (!MathUtil.isOutOfBounds(i2, i4, length())) {
            return forEachByteDesc0(i2, i4, byteProcessor);
        }
        throw new IndexOutOfBoundsException("expected: 0 <= index(" + i2 + ") <= start + length(" + i4 + ") <= length(" + length() + ')');
    }

    public int indexOf(CharSequence charSequence, int i2) {
        char charAt;
        int length = charSequence.length();
        if (i2 < 0) {
            i2 = 0;
        }
        if (length <= 0) {
            int i4 = this.length;
            return i2 < i4 ? i2 : i4;
        } else if (length <= this.length - i2 && (charAt = charSequence.charAt(0)) <= 255) {
            byte c2b0 = c2b0(charAt);
            int i5 = this.offset;
            int i6 = (this.length + i5) - length;
            for (int i7 = i2 + i5; i7 <= i6; i7++) {
                if (this.value[i7] == c2b0) {
                    int i8 = i7;
                    int i9 = 0;
                    do {
                        i9++;
                        if (i9 >= length) {
                            break;
                        }
                        i8++;
                    } while (b2c(this.value[i8]) == charSequence.charAt(i9));
                    if (i9 == length) {
                        return i7 - this.offset;
                    }
                }
            }
            return -1;
        } else {
            return -1;
        }
    }

    public int lastIndexOf(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        int min = Math.min(i2, this.length - length);
        if (min < 0) {
            return -1;
        }
        if (length == 0) {
            return min;
        }
        char charAt = charSequence.charAt(0);
        if (charAt > 255) {
            return -1;
        }
        byte c2b0 = c2b0(charAt);
        for (int i4 = this.offset + min; i4 >= 0; i4--) {
            if (this.value[i4] == c2b0) {
                int i5 = i4;
                int i6 = 0;
                do {
                    i6++;
                    if (i6 >= length) {
                        break;
                    }
                    i5++;
                } while (b2c(this.value[i5]) == charSequence.charAt(i6));
                if (i6 == length) {
                    return i4 - this.offset;
                }
            }
        }
        return -1;
    }

    public char parseChar(int i2) {
        if (i2 + 1 < length()) {
            int i4 = i2 + this.offset;
            return (char) (b2c(this.value[i4 + 1]) | (b2c(this.value[i4]) << '\b'));
        }
        throw new IndexOutOfBoundsException("2 bytes required to convert to character. index " + i2 + " would go out of bounds.");
    }

    public double parseDouble(int i2, int i4) {
        return Double.parseDouble(toString(i2, i4));
    }

    public float parseFloat(int i2, int i4) {
        return Float.parseFloat(toString(i2, i4));
    }

    public int parseInt(int i2) {
        return parseInt(0, length(), i2);
    }

    public long parseLong(int i2) {
        return parseLong(0, length(), i2);
    }

    public short parseShort(int i2) {
        return parseShort(0, length(), i2);
    }

    public AsciiString[] split(char c4) {
        ArrayList arrayList = InternalThreadLocalMap.get().arrayList();
        int length = length();
        int i2 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (charAt(i4) == c4) {
                if (i2 == i4) {
                    arrayList.add(EMPTY_STRING);
                } else {
                    arrayList.add(new AsciiString(this.value, arrayOffset() + i2, i4 - i2, false));
                }
                i2 = i4 + 1;
            }
        }
        if (i2 == 0) {
            arrayList.add(this);
        } else if (i2 != length) {
            arrayList.add(new AsciiString(this.value, arrayOffset() + i2, length - i2, false));
        } else {
            for (int size = arrayList.size() - 1; size >= 0 && ((AsciiString) arrayList.get(size)).isEmpty(); size--) {
                arrayList.remove(size);
            }
        }
        return (AsciiString[]) arrayList.toArray(new AsciiString[0]);
    }

    public boolean startsWith(CharSequence charSequence, int i2) {
        return regionMatches(i2, charSequence, 0, charSequence.length());
    }

    public AsciiString subSequence(int i2) {
        return subSequence(i2, length());
    }

    public byte[] toByteArray(int i2, int i4) {
        byte[] bArr = this.value;
        int i5 = this.offset;
        return Arrays.copyOfRange(bArr, i2 + i5, i4 + i5);
    }

    public char[] toCharArray(int i2, int i4) {
        int i5 = i4 - i2;
        if (i5 == 0) {
            return EmptyArrays.EMPTY_CHARS;
        }
        if (!MathUtil.isOutOfBounds(i2, i5, length())) {
            char[] cArr = new char[i5];
            int i6 = 0;
            int arrayOffset = i2 + arrayOffset();
            while (i6 < i5) {
                cArr[i6] = b2c(this.value[arrayOffset]);
                i6++;
                arrayOffset++;
            }
            return cArr;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i2 + ") <= srcIdx + length(" + i5 + ") <= srcLen(" + length() + ')');
    }

    public AsciiString(byte[] bArr, int i2, int i4, boolean z3) {
        if (z3) {
            this.value = Arrays.copyOfRange(bArr, i2, i2 + i4);
            this.offset = 0;
        } else if (!MathUtil.isOutOfBounds(i2, i4, bArr.length)) {
            this.value = bArr;
            this.offset = i2;
        } else {
            throw new IndexOutOfBoundsException("expected: 0 <= start(" + i2 + ") <= start + length(" + i4 + ") <= value.length(" + bArr.length + ')');
        }
        this.length = i4;
    }

    private static boolean contains(CharSequence charSequence, CharSequence charSequence2, CharEqualityComparator charEqualityComparator) {
        if (charSequence != null && charSequence2 != null && charSequence.length() >= charSequence2.length()) {
            if (charSequence2.length() == 0) {
                return true;
            }
            int i2 = 0;
            for (int i4 = 0; i4 < charSequence.length(); i4++) {
                if (charEqualityComparator.equals(charSequence2.charAt(i2), charSequence.charAt(i4))) {
                    i2++;
                    if (i2 == charSequence2.length()) {
                        return true;
                    }
                } else if (charSequence.length() - i4 < charSequence2.length()) {
                    return false;
                } else {
                    i2 = 0;
                }
            }
        }
        return false;
    }

    public int parseInt(int i2, int i4) {
        return parseInt(i2, i4, 10);
    }

    public long parseLong(int i2, int i4) {
        return parseLong(i2, i4, 10);
    }

    public short parseShort(int i2, int i4) {
        return parseShort(i2, i4, 10);
    }

    @Override // java.lang.CharSequence
    public AsciiString subSequence(int i2, int i4) {
        return subSequence(i2, i4, true);
    }

    public static int hashCode(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        if (charSequence instanceof AsciiString) {
            return charSequence.hashCode();
        }
        return PlatformDependent.hashCodeAscii(charSequence);
    }

    public int parseInt(int i2, int i4, int i5) {
        if (i5 < 2 || i5 > 36) {
            throw new NumberFormatException();
        }
        if (i2 != i4) {
            boolean z3 = byteAt(i2) == 45;
            if (z3) {
                int i6 = i2 + 1;
                if (i6 == i4) {
                    throw new NumberFormatException(subSequence(i2, i4, false).toString());
                }
                i2 = i6;
            }
            return parseInt(i2, i4, i5, z3);
        }
        throw new NumberFormatException();
    }

    public long parseLong(int i2, int i4, int i5) {
        if (i5 < 2 || i5 > 36) {
            throw new NumberFormatException();
        }
        if (i2 != i4) {
            boolean z3 = byteAt(i2) == 45;
            if (z3) {
                int i6 = i2 + 1;
                if (i6 == i4) {
                    throw new NumberFormatException(subSequence(i2, i4, false).toString());
                }
                i2 = i6;
            }
            return parseLong(i2, i4, i5, z3);
        }
        throw new NumberFormatException();
    }

    public short parseShort(int i2, int i4, int i5) {
        int parseInt = parseInt(i2, i4, i5);
        short s3 = (short) parseInt;
        if (s3 == parseInt) {
            return s3;
        }
        throw new NumberFormatException(subSequence(i2, i4, false).toString());
    }

    public AsciiString subSequence(int i2, int i4, boolean z3) {
        int i5 = i4 - i2;
        if (!MathUtil.isOutOfBounds(i2, i5, length())) {
            if (i2 == 0 && i4 == length()) {
                return this;
            }
            if (i4 == i2) {
                return EMPTY_STRING;
            }
            return new AsciiString(this.value, i2 + this.offset, i5, z3);
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i2 + ") <= end (" + i4 + ") <= length(" + length() + ')');
    }

    public String toString(int i2) {
        return toString(i2, length());
    }

    public void copy(int i2, char[] cArr, int i4, int i5) {
        ObjectUtil.checkNotNull(cArr, "dst");
        if (!MathUtil.isOutOfBounds(i2, i5, length())) {
            int i6 = i5 + i4;
            int arrayOffset = i2 + arrayOffset();
            while (i4 < i6) {
                cArr[i4] = b2c(this.value[arrayOffset]);
                i4++;
                arrayOffset++;
            }
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= srcIdx(" + i2 + ") <= srcIdx + length(" + i5 + ") <= srcLen(" + length() + ')');
    }

    public String toString(int i2, int i4) {
        int i5 = i4 - i2;
        if (i5 == 0) {
            return "";
        }
        if (!MathUtil.isOutOfBounds(i2, i5, length())) {
            return new String(this.value, 0, i2 + this.offset, i5);
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i2 + ") <= srcIdx + length(" + i5 + ") <= srcLen(" + length() + ')');
    }

    public static boolean contentEquals(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        } else if (charSequence instanceof AsciiString) {
            return ((AsciiString) charSequence).contentEquals(charSequence2);
        } else {
            if (charSequence2 instanceof AsciiString) {
                return ((AsciiString) charSequence2).contentEquals(charSequence);
            }
            if (charSequence.length() != charSequence2.length()) {
                return false;
            }
            for (int i2 = 0; i2 < charSequence.length(); i2++) {
                if (charSequence.charAt(i2) != charSequence2.charAt(i2)) {
                    return false;
                }
            }
            return true;
        }
    }

    public boolean regionMatches(boolean z3, int i2, CharSequence charSequence, int i4, int i5) {
        if (!z3) {
            return regionMatches(i2, charSequence, i4, i5);
        }
        ObjectUtil.checkNotNull(charSequence, TypedValues.Custom.S_STRING);
        int length = length();
        if (i2 < 0 || i5 > length - i2 || i4 < 0 || i5 > charSequence.length() - i4) {
            return false;
        }
        int arrayOffset = i2 + arrayOffset();
        int i6 = i5 + arrayOffset;
        while (arrayOffset < i6) {
            int i7 = arrayOffset + 1;
            int i8 = i4 + 1;
            if (!equalsIgnoreCase(b2c(this.value[arrayOffset]), charSequence.charAt(i4))) {
                return false;
            }
            i4 = i8;
            arrayOffset = i7;
        }
        return true;
    }

    public static boolean contentEqualsIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        } else if (charSequence instanceof AsciiString) {
            return ((AsciiString) charSequence).contentEqualsIgnoreCase(charSequence2);
        } else {
            if (charSequence2 instanceof AsciiString) {
                return ((AsciiString) charSequence2).contentEqualsIgnoreCase(charSequence);
            }
            if (charSequence.length() != charSequence2.length()) {
                return false;
            }
            for (int i2 = 0; i2 < charSequence.length(); i2++) {
                if (!equalsIgnoreCase(charSequence.charAt(i2), charSequence2.charAt(i2))) {
                    return false;
                }
            }
            return true;
        }
    }

    private static byte toLowerCase(byte b4) {
        return isUpperCase(b4) ? (byte) (b4 + 32) : b4;
    }

    private static byte toUpperCase(byte b4) {
        return isLowerCase(b4) ? (byte) (b4 - 32) : b4;
    }

    private int parseInt(int i2, int i4, int i5, boolean z3) {
        int i6 = Integer.MIN_VALUE / i5;
        int i7 = i2;
        int i8 = 0;
        while (i7 < i4) {
            int i9 = i7 + 1;
            int digit = Character.digit((char) (this.value[i7 + this.offset] & 255), i5);
            if (digit == -1) {
                throw new NumberFormatException(subSequence(i2, i4, false).toString());
            }
            if (i6 > i8) {
                throw new NumberFormatException(subSequence(i2, i4, false).toString());
            }
            int i10 = (i8 * i5) - digit;
            if (i10 > i8) {
                throw new NumberFormatException(subSequence(i2, i4, false).toString());
            }
            i8 = i10;
            i7 = i9;
        }
        if (z3 || (i8 = -i8) >= 0) {
            return i8;
        }
        throw new NumberFormatException(subSequence(i2, i4, false).toString());
    }

    private long parseLong(int i2, int i4, int i5, boolean z3) {
        long j4 = i5;
        long j5 = Long.MIN_VALUE / j4;
        int i6 = i2;
        long j6 = 0;
        while (i6 < i4) {
            int i7 = i6 + 1;
            int digit = Character.digit((char) (this.value[i6 + this.offset] & 255), i5);
            if (digit == -1) {
                throw new NumberFormatException(subSequence(i2, i4, false).toString());
            }
            if (j5 > j6) {
                throw new NumberFormatException(subSequence(i2, i4, false).toString());
            }
            long j7 = (j6 * j4) - digit;
            if (j7 > j6) {
                throw new NumberFormatException(subSequence(i2, i4, false).toString());
            }
            j6 = j7;
            i6 = i7;
        }
        if (!z3) {
            j6 = -j6;
            if (j6 < 0) {
                throw new NumberFormatException(subSequence(i2, i4, false).toString());
            }
        }
        return j6;
    }

    public static char toLowerCase(char c4) {
        return isUpperCase(c4) ? (char) (c4 + ' ') : c4;
    }

    public AsciiString trim() {
        int arrayOffset = arrayOffset();
        int arrayOffset2 = (arrayOffset() + length()) - 1;
        while (arrayOffset <= arrayOffset2 && this.value[arrayOffset] <= 32) {
            arrayOffset++;
        }
        int i2 = arrayOffset2;
        while (i2 >= arrayOffset && this.value[i2] <= 32) {
            i2--;
        }
        return (arrayOffset == 0 && i2 == arrayOffset2) ? this : new AsciiString(this.value, arrayOffset, (i2 - arrayOffset) + 1, false);
    }

    public AsciiString(ByteBuffer byteBuffer) {
        this(byteBuffer, true);
    }

    public int indexOf(char c4, int i2) {
        if (c4 > 255) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        byte c2b0 = c2b0(c4);
        int i4 = this.offset;
        int i5 = this.length + i4;
        for (int i6 = i2 + i4; i6 < i5; i6++) {
            if (this.value[i6] == c2b0) {
                return i6 - this.offset;
            }
        }
        return -1;
    }

    public AsciiString(ByteBuffer byteBuffer, boolean z3) {
        this(byteBuffer, byteBuffer.position(), byteBuffer.remaining(), z3);
    }

    public static boolean regionMatches(CharSequence charSequence, boolean z3, int i2, CharSequence charSequence2, int i4, int i5) {
        if (charSequence == null || charSequence2 == null) {
            return false;
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return ((String) charSequence).regionMatches(z3, i2, (String) charSequence2, i4, i5);
        }
        if (charSequence instanceof AsciiString) {
            return ((AsciiString) charSequence).regionMatches(z3, i2, charSequence2, i4, i5);
        }
        return regionMatchesCharSequences(charSequence, i2, charSequence2, i4, i5, z3 ? GeneralCaseInsensitiveCharEqualityComparator.INSTANCE : DefaultCharEqualityComparator.INSTANCE);
    }

    public AsciiString(ByteBuffer byteBuffer, int i2, int i4, boolean z3) {
        if (!MathUtil.isOutOfBounds(i2, i4, byteBuffer.capacity())) {
            if (!byteBuffer.hasArray()) {
                byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray(i4);
                this.value = allocateUninitializedArray;
                int position = byteBuffer.position();
                byteBuffer.get(allocateUninitializedArray, 0, i4);
                byteBuffer.position(position);
                this.offset = 0;
            } else if (z3) {
                int arrayOffset = byteBuffer.arrayOffset() + i2;
                this.value = Arrays.copyOfRange(byteBuffer.array(), arrayOffset, arrayOffset + i4);
                this.offset = 0;
            } else {
                this.value = byteBuffer.array();
                this.offset = i2;
            }
            this.length = i4;
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i2 + ") <= start + length(" + i4 + ") <= value.capacity(" + byteBuffer.capacity() + ')');
    }

    public static int indexOf(CharSequence charSequence, char c4, int i2) {
        if (charSequence instanceof String) {
            return ((String) charSequence).indexOf(c4, i2);
        }
        if (charSequence instanceof AsciiString) {
            return ((AsciiString) charSequence).indexOf(c4, i2);
        }
        if (charSequence == null) {
            return -1;
        }
        int length = charSequence.length();
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < length) {
            if (charSequence.charAt(i2) == c4) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public AsciiString(char[] cArr) {
        this(cArr, 0, cArr.length);
    }

    public AsciiString(char[] cArr, int i2, int i4) {
        if (!MathUtil.isOutOfBounds(i2, i4, cArr.length)) {
            this.value = PlatformDependent.allocateUninitializedArray(i4);
            int i5 = 0;
            while (i5 < i4) {
                this.value[i5] = c2b(cArr[i2]);
                i5++;
                i2++;
            }
            this.offset = 0;
            this.length = i4;
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i2 + ") <= start + length(" + i4 + ") <= value.length(" + cArr.length + ')');
    }

    public AsciiString(char[] cArr, Charset charset) {
        this(cArr, charset, 0, cArr.length);
    }

    public AsciiString(char[] cArr, Charset charset, int i2, int i4) {
        CharBuffer wrap = CharBuffer.wrap(cArr, i2, i4);
        CharsetEncoder encoder = CharsetUtil.encoder(charset);
        ByteBuffer allocate = ByteBuffer.allocate((int) (encoder.maxBytesPerChar() * i4));
        encoder.encode(wrap, allocate, true);
        int arrayOffset = allocate.arrayOffset();
        byte[] copyOfRange = Arrays.copyOfRange(allocate.array(), arrayOffset, allocate.position() + arrayOffset);
        this.value = copyOfRange;
        this.offset = 0;
        this.length = copyOfRange.length;
    }

    public AsciiString(CharSequence charSequence) {
        this(charSequence, 0, charSequence.length());
    }

    public AsciiString(CharSequence charSequence, int i2, int i4) {
        if (!MathUtil.isOutOfBounds(i2, i4, charSequence.length())) {
            this.value = PlatformDependent.allocateUninitializedArray(i4);
            int i5 = 0;
            while (i5 < i4) {
                this.value[i5] = c2b(charSequence.charAt(i2));
                i5++;
                i2++;
            }
            this.offset = 0;
            this.length = i4;
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i2 + ") <= start + length(" + i4 + ") <= value.length(" + charSequence.length() + ')');
    }

    public AsciiString(CharSequence charSequence, Charset charset) {
        this(charSequence, charset, 0, charSequence.length());
    }

    public AsciiString(CharSequence charSequence, Charset charset, int i2, int i4) {
        CharBuffer wrap = CharBuffer.wrap(charSequence, i2, i2 + i4);
        CharsetEncoder encoder = CharsetUtil.encoder(charset);
        ByteBuffer allocate = ByteBuffer.allocate((int) (encoder.maxBytesPerChar() * i4));
        encoder.encode(wrap, allocate, true);
        int arrayOffset = allocate.arrayOffset();
        byte[] copyOfRange = Arrays.copyOfRange(allocate.array(), arrayOffset, allocate.position() + arrayOffset);
        this.value = copyOfRange;
        this.offset = 0;
        this.length = copyOfRange.length;
    }
}
