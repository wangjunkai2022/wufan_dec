package okio.internal;

import com.join.mgps.activity.MyAccountLoginActivity_;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import okio.Segment;
import okio.SegmentedByteString;
import okio.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SegmentedByteString.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a$\u0010\u0005\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0000\u001a\u0014\u0010\b\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a]\u0010\u0012\u001a\u00020\u0010*\u00020\u00062K\u0010\u0011\u001aG\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\tH\u0080\bø\u0001\u0000\u001aj\u0010\u0012\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u00012K\u0010\u0011\u001aG\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\tH\u0082\b\u001a\u001d\u0010\u0016\u001a\u00020\u0015*\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0080\b\u001a\u0015\u0010\u0018\u001a\u00020\u0017*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0080\b\u001a\r\u0010\u0019\u001a\u00020\u0001*\u00020\u0006H\u0080\b\u001a\r\u0010\u001a\u001a\u00020\n*\u00020\u0006H\u0080\b\u001a%\u0010\u001d\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a-\u0010!\u001a\u00020 *\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a-\u0010!\u001a\u00020 *\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a\u0017\u0010#\u001a\u00020 *\u00020\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010\"H\u0080\b\u001a\r\u0010$\u001a\u00020\u0001*\u00020\u0006H\u0080\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006%"}, d2 = {"", "", "value", MyAccountLoginActivity_.J, "toIndex", "binarySearch", "Lokio/SegmentedByteString;", "pos", "segment", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "data", "offset", "byteCount", "", "action", "forEachSegment", "beginIndex", "endIndex", "Lokio/ByteString;", "commonSubstring", "", "commonInternalGet", "commonGetSize", "commonToByteArray", "Lokio/Buffer;", "buffer", "commonWrite", "other", "otherOffset", "", "commonRangeEquals", "", "commonEquals", "commonHashCode", "okio"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class SegmentedByteStringKt {
    public static final int binarySearch(@NotNull int[] binarySearch, int i2, int i4, int i5) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        int i6 = i5 - 1;
        while (i4 <= i6) {
            int i7 = (i4 + i6) >>> 1;
            int i8 = binarySearch[i7];
            if (i8 < i2) {
                i4 = i7 + 1;
            } else if (i8 <= i2) {
                return i7;
            } else {
                i6 = i7 - 1;
            }
        }
        return (-i4) - 1;
    }

    public static final boolean commonEquals(@NotNull SegmentedByteString commonEquals, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(commonEquals, "$this$commonEquals");
        if (obj == commonEquals) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == commonEquals.size() && commonEquals.rangeEquals(0, byteString, 0, commonEquals.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(@NotNull SegmentedByteString commonGetSize) {
        Intrinsics.checkNotNullParameter(commonGetSize, "$this$commonGetSize");
        return commonGetSize.getDirectory$okio()[commonGetSize.getSegments$okio().length - 1];
    }

    public static final int commonHashCode(@NotNull SegmentedByteString commonHashCode) {
        Intrinsics.checkNotNullParameter(commonHashCode, "$this$commonHashCode");
        int hashCode$okio = commonHashCode.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = commonHashCode.getSegments$okio().length;
        int i2 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i2 < length) {
            int i6 = commonHashCode.getDirectory$okio()[length + i2];
            int i7 = commonHashCode.getDirectory$okio()[i2];
            byte[] bArr = commonHashCode.getSegments$okio()[i2];
            int i8 = (i7 - i4) + i6;
            while (i6 < i8) {
                i5 = (i5 * 31) + bArr[i6];
                i6++;
            }
            i2++;
            i4 = i7;
        }
        commonHashCode.setHashCode$okio(i5);
        return i5;
    }

    public static final byte commonInternalGet(@NotNull SegmentedByteString commonInternalGet, int i2) {
        Intrinsics.checkNotNullParameter(commonInternalGet, "$this$commonInternalGet");
        Util.checkOffsetAndCount(commonInternalGet.getDirectory$okio()[commonInternalGet.getSegments$okio().length - 1], i2, 1L);
        int segment = segment(commonInternalGet, i2);
        return commonInternalGet.getSegments$okio()[segment][(i2 - (segment == 0 ? 0 : commonInternalGet.getDirectory$okio()[segment - 1])) + commonInternalGet.getDirectory$okio()[commonInternalGet.getSegments$okio().length + segment]];
    }

    public static final boolean commonRangeEquals(@NotNull SegmentedByteString commonRangeEquals, int i2, @NotNull ByteString other, int i4, int i5) {
        Intrinsics.checkNotNullParameter(commonRangeEquals, "$this$commonRangeEquals");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i2 < 0 || i2 > commonRangeEquals.size() - i5) {
            return false;
        }
        int i6 = i5 + i2;
        int segment = segment(commonRangeEquals, i2);
        while (i2 < i6) {
            int i7 = segment == 0 ? 0 : commonRangeEquals.getDirectory$okio()[segment - 1];
            int i8 = commonRangeEquals.getDirectory$okio()[commonRangeEquals.getSegments$okio().length + segment];
            int min = Math.min(i6, (commonRangeEquals.getDirectory$okio()[segment] - i7) + i7) - i2;
            if (!other.rangeEquals(i4, commonRangeEquals.getSegments$okio()[segment], i8 + (i2 - i7), min)) {
                return false;
            }
            i4 += min;
            i2 += min;
            segment++;
        }
        return true;
    }

    @NotNull
    public static final ByteString commonSubstring(@NotNull SegmentedByteString commonSubstring, int i2, int i4) {
        Intrinsics.checkNotNullParameter(commonSubstring, "$this$commonSubstring");
        if (i2 >= 0) {
            if (!(i4 <= commonSubstring.size())) {
                throw new IllegalArgumentException(("endIndex=" + i4 + " > length(" + commonSubstring.size() + ')').toString());
            }
            int i5 = i4 - i2;
            if (i5 >= 0) {
                if (i2 == 0 && i4 == commonSubstring.size()) {
                    return commonSubstring;
                }
                if (i2 == i4) {
                    return ByteString.EMPTY;
                }
                int segment = segment(commonSubstring, i2);
                int segment2 = segment(commonSubstring, i4 - 1);
                byte[][] bArr = (byte[][]) ArraysKt.copyOfRange(commonSubstring.getSegments$okio(), segment, segment2 + 1);
                int[] iArr = new int[bArr.length * 2];
                if (segment <= segment2) {
                    int i6 = segment;
                    int i7 = 0;
                    while (true) {
                        iArr[i7] = Math.min(commonSubstring.getDirectory$okio()[i6] - i2, i5);
                        int i8 = i7 + 1;
                        iArr[i7 + bArr.length] = commonSubstring.getDirectory$okio()[commonSubstring.getSegments$okio().length + i6];
                        if (i6 == segment2) {
                            break;
                        }
                        i6++;
                        i7 = i8;
                    }
                }
                int i9 = segment != 0 ? commonSubstring.getDirectory$okio()[segment - 1] : 0;
                int length = bArr.length;
                iArr[length] = iArr[length] + (i2 - i9);
                return new SegmentedByteString(bArr, iArr);
            }
            throw new IllegalArgumentException(("endIndex=" + i4 + " < beginIndex=" + i2).toString());
        }
        throw new IllegalArgumentException(("beginIndex=" + i2 + " < 0").toString());
    }

    @NotNull
    public static final byte[] commonToByteArray(@NotNull SegmentedByteString commonToByteArray) {
        Intrinsics.checkNotNullParameter(commonToByteArray, "$this$commonToByteArray");
        byte[] bArr = new byte[commonToByteArray.size()];
        int length = commonToByteArray.getSegments$okio().length;
        int i2 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < length) {
            int i6 = commonToByteArray.getDirectory$okio()[length + i2];
            int i7 = commonToByteArray.getDirectory$okio()[i2];
            int i8 = i7 - i4;
            ArraysKt___ArraysJvmKt.copyInto(commonToByteArray.getSegments$okio()[i2], bArr, i5, i6, i6 + i8);
            i5 += i8;
            i2++;
            i4 = i7;
        }
        return bArr;
    }

    public static final void commonWrite(@NotNull SegmentedByteString commonWrite, @NotNull Buffer buffer, int i2, int i4) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i5 = i4 + i2;
        int segment = segment(commonWrite, i2);
        while (i2 < i5) {
            int i6 = segment == 0 ? 0 : commonWrite.getDirectory$okio()[segment - 1];
            int i7 = commonWrite.getDirectory$okio()[commonWrite.getSegments$okio().length + segment];
            int min = Math.min(i5, (commonWrite.getDirectory$okio()[segment] - i6) + i6) - i2;
            int i8 = i7 + (i2 - i6);
            Segment segment2 = new Segment(commonWrite.getSegments$okio()[segment], i8, i8 + min, true, false);
            Segment segment3 = buffer.head;
            if (segment3 == null) {
                segment2.prev = segment2;
                segment2.next = segment2;
                buffer.head = segment2;
            } else {
                Intrinsics.checkNotNull(segment3);
                Segment segment4 = segment3.prev;
                Intrinsics.checkNotNull(segment4);
                segment4.push(segment2);
            }
            i2 += min;
            segment++;
        }
        buffer.setSize$okio(buffer.size() + commonWrite.size());
    }

    public static final void forEachSegment(@NotNull SegmentedByteString forEachSegment, @NotNull Function3<? super byte[], ? super Integer, ? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(forEachSegment, "$this$forEachSegment");
        Intrinsics.checkNotNullParameter(action, "action");
        int length = forEachSegment.getSegments$okio().length;
        int i2 = 0;
        int i4 = 0;
        while (i2 < length) {
            int i5 = forEachSegment.getDirectory$okio()[length + i2];
            int i6 = forEachSegment.getDirectory$okio()[i2];
            action.invoke(forEachSegment.getSegments$okio()[i2], Integer.valueOf(i5), Integer.valueOf(i6 - i4));
            i2++;
            i4 = i6;
        }
    }

    public static final int segment(@NotNull SegmentedByteString segment, int i2) {
        Intrinsics.checkNotNullParameter(segment, "$this$segment");
        int binarySearch = binarySearch(segment.getDirectory$okio(), i2 + 1, 0, segment.getSegments$okio().length);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ (-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forEachSegment(SegmentedByteString segmentedByteString, int i2, int i4, Function3<? super byte[], ? super Integer, ? super Integer, Unit> function3) {
        int segment = segment(segmentedByteString, i2);
        while (i2 < i4) {
            int i5 = segment == 0 ? 0 : segmentedByteString.getDirectory$okio()[segment - 1];
            int i6 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i4, (segmentedByteString.getDirectory$okio()[segment] - i5) + i5) - i2;
            function3.invoke(segmentedByteString.getSegments$okio()[segment], Integer.valueOf(i6 + (i2 - i5)), Integer.valueOf(min));
            i2 += min;
            segment++;
        }
    }

    public static final boolean commonRangeEquals(@NotNull SegmentedByteString commonRangeEquals, int i2, @NotNull byte[] other, int i4, int i5) {
        Intrinsics.checkNotNullParameter(commonRangeEquals, "$this$commonRangeEquals");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i2 < 0 || i2 > commonRangeEquals.size() - i5 || i4 < 0 || i4 > other.length - i5) {
            return false;
        }
        int i6 = i5 + i2;
        int segment = segment(commonRangeEquals, i2);
        while (i2 < i6) {
            int i7 = segment == 0 ? 0 : commonRangeEquals.getDirectory$okio()[segment - 1];
            int i8 = commonRangeEquals.getDirectory$okio()[commonRangeEquals.getSegments$okio().length + segment];
            int min = Math.min(i6, (commonRangeEquals.getDirectory$okio()[segment] - i7) + i7) - i2;
            if (!Util.arrayRangeEquals(commonRangeEquals.getSegments$okio()[segment], i8 + (i2 - i7), other, i4, min)) {
                return false;
            }
            i4 += min;
            i2 += min;
            segment++;
        }
        return true;
    }
}
