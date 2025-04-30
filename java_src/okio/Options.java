package okio;

import com.join.mgps.activity.MyAccountLoginActivity_;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Options.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u000b\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0017B!\b\u0002\u0012\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0096\u0002R$\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\b8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u000e\u001a\u00020\r8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, d2 = {"Lokio/Options;", "Lkotlin/collections/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "index", "get", "", "byteStrings", "[Lokio/ByteString;", "getByteStrings$okio", "()[Lokio/ByteString;", "", "trie", "[I", "getTrie$okio", "()[I", "getSize", "()I", "size", "<init>", "([Lokio/ByteString;[I)V", "Companion", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5.dex */
public final class Options extends AbstractList<ByteString> implements RandomAccess {
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final ByteString[] byteStrings;
    @NotNull
    private final int[] trie;

    /* compiled from: Options.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018JT\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0002J#\u0010\u0012\u001a\u00020\u00112\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\t0\u0010\"\u00020\tH\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0016\u001a\u00020\u0002*\u00020\u00048B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lokio/Options$Companion;", "", "", "nodeOffset", "Lokio/Buffer;", "node", "", "byteStringOffset", "", "Lokio/ByteString;", "byteStrings", MyAccountLoginActivity_.J, "toIndex", "indexes", "", "buildTrieRecursive", "", "Lokio/Options;", "of", "([Lokio/ByteString;)Lokio/Options;", "getIntCount", "(Lokio/Buffer;)J", "intCount", "<init>", "()V", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        private final void buildTrieRecursive(long j4, Buffer buffer, int i2, List<? extends ByteString> list, int i4, int i5, List<Integer> list2) {
            int i6;
            int i7;
            int i8;
            int i9;
            Buffer buffer2;
            int i10 = i2;
            if (i4 < i5) {
                for (int i11 = i4; i11 < i5; i11++) {
                    if (!(list.get(i11).size() >= i10)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                ByteString byteString = list.get(i4);
                ByteString byteString2 = list.get(i5 - 1);
                if (i10 == byteString.size()) {
                    int i12 = i4 + 1;
                    i6 = i12;
                    i7 = list2.get(i4).intValue();
                    byteString = list.get(i12);
                } else {
                    i6 = i4;
                    i7 = -1;
                }
                if (byteString.getByte(i10) != byteString2.getByte(i10)) {
                    int i13 = 1;
                    for (int i14 = i6 + 1; i14 < i5; i14++) {
                        if (list.get(i14 - 1).getByte(i10) != list.get(i14).getByte(i10)) {
                            i13++;
                        }
                    }
                    long intCount = j4 + getIntCount(buffer) + 2 + (i13 * 2);
                    buffer.writeInt(i13);
                    buffer.writeInt(i7);
                    for (int i15 = i6; i15 < i5; i15++) {
                        byte b4 = list.get(i15).getByte(i10);
                        if (i15 == i6 || b4 != list.get(i15 - 1).getByte(i10)) {
                            buffer.writeInt(b4 & 255);
                        }
                    }
                    Buffer buffer3 = new Buffer();
                    while (i6 < i5) {
                        byte b5 = list.get(i6).getByte(i10);
                        int i16 = i6 + 1;
                        int i17 = i16;
                        while (true) {
                            if (i17 >= i5) {
                                i8 = i5;
                                break;
                            } else if (b5 != list.get(i17).getByte(i10)) {
                                i8 = i17;
                                break;
                            } else {
                                i17++;
                            }
                        }
                        if (i16 == i8 && i10 + 1 == list.get(i6).size()) {
                            buffer.writeInt(list2.get(i6).intValue());
                            i9 = i8;
                            buffer2 = buffer3;
                        } else {
                            buffer.writeInt(((int) (intCount + getIntCount(buffer3))) * (-1));
                            i9 = i8;
                            buffer2 = buffer3;
                            buildTrieRecursive(intCount, buffer3, i10 + 1, list, i6, i8, list2);
                        }
                        buffer3 = buffer2;
                        i6 = i9;
                    }
                    buffer.writeAll(buffer3);
                    return;
                }
                int min = Math.min(byteString.size(), byteString2.size());
                int i18 = 0;
                for (int i19 = i10; i19 < min && byteString.getByte(i19) == byteString2.getByte(i19); i19++) {
                    i18++;
                }
                long intCount2 = j4 + getIntCount(buffer) + 2 + i18 + 1;
                buffer.writeInt(-i18);
                buffer.writeInt(i7);
                int i20 = i10 + i18;
                while (i10 < i20) {
                    buffer.writeInt(byteString.getByte(i10) & 255);
                    i10++;
                }
                if (i6 + 1 == i5) {
                    if (i20 == list.get(i6).size()) {
                        buffer.writeInt(list2.get(i6).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
                Buffer buffer4 = new Buffer();
                buffer.writeInt(((int) (getIntCount(buffer4) + intCount2)) * (-1));
                buildTrieRecursive(intCount2, buffer4, i20, list, i6, i5, list2);
                buffer.writeAll(buffer4);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        static /* synthetic */ void buildTrieRecursive$default(Companion companion, long j4, Buffer buffer, int i2, List list, int i4, int i5, List list2, int i6, Object obj) {
            companion.buildTrieRecursive((i6 & 1) != 0 ? 0L : j4, buffer, (i6 & 4) != 0 ? 0 : i2, list, (i6 & 16) != 0 ? 0 : i4, (i6 & 32) != 0 ? list.size() : i5, list2);
        }

        private final long getIntCount(Buffer buffer) {
            return buffer.size() / 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x00f1, code lost:
            continue;
         */
        @kotlin.jvm.JvmStatic
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okio.Options of(@org.jetbrains.annotations.NotNull okio.ByteString... r17) {
            /*
                Method dump skipped, instructions count: 330
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.Companion.of(okio.ByteString[]):okio.Options");
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringArr, iArr);
    }

    @JvmStatic
    @NotNull
    public static final Options of(@NotNull ByteString... byteStringArr) {
        return Companion.of(byteStringArr);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return contains((ByteString) obj);
        }
        return false;
    }

    @NotNull
    public final ByteString[] getByteStrings$okio() {
        return this.byteStrings;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.byteStrings.length;
    }

    @NotNull
    public final int[] getTrie$okio() {
        return this.trie;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return lastIndexOf((ByteString) obj);
        }
        return -1;
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    public /* bridge */ boolean contains(ByteString byteString) {
        return super.contains((Object) byteString);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    @NotNull
    public ByteString get(int i2) {
        return this.byteStrings[i2];
    }

    public /* bridge */ int indexOf(ByteString byteString) {
        return super.indexOf((Object) byteString);
    }

    public /* bridge */ int lastIndexOf(ByteString byteString) {
        return super.lastIndexOf((Object) byteString);
    }
}
