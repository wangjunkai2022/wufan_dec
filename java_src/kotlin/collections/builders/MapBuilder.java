package kotlin.collections.builders;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.tencent.cos.common.COSHttpResponseKey;
import com.umeng.analytics.pro.ai;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MapBuilder.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010&\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\b\n\u0002\u0010\u001f\n\u0002\b\u000e\b\u0000\u0018\u0000 \u0082\u0001*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003:\f\u0082\u0001\u0083\u0001\u0084\u0001\u0085\u0001\u0086\u0001\u0087\u0001BG\b\u0002\u0012\f\u0010h\u001a\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u000e\u0010p\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\n\u0012\u0006\u0010r\u001a\u00020q\u0012\u0006\u0010y\u001a\u00020q\u0012\u0006\u0010t\u001a\u00020\u0004\u0012\u0006\u0010g\u001a\u00020\u0004¢\u0006\u0004\b~\u0010\u007fB\t\b\u0016¢\u0006\u0004\b~\u00108B\u0013\b\u0016\u0012\u0007\u0010\u0080\u0001\u001a\u00020\u0004¢\u0006\u0005\b~\u0010\u0081\u0001J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0002J\u0015\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0006H\u0002J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0016\u0010\u000fJ\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00028\u0001H\u0002¢\u0006\u0004\b\u0018\u0010\u000fJ\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u0018\u0010\u001f\u001a\u00020\u00142\u000e\u0010\u001e\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u001dH\u0002J\u001c\u0010\"\u001a\u00020\u00142\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 H\u0002J\"\u0010%\u001a\u00020\u00142\u0018\u0010$\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 0#H\u0002J\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001dJ\b\u0010'\u001a\u00020\u0014H\u0016J\u0017\u0010(\u001a\u00020\u00142\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00028\u0001H\u0016¢\u0006\u0004\b*\u0010)J\u001a\u0010+\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b+\u0010,J!\u0010-\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u0001H\u0016¢\u0006\u0004\b-\u0010.J\u001e\u0010/\u001a\u00020\u00062\u0014\u0010$\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001dH\u0016J\u0019\u00100\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b0\u0010,J\b\u00101\u001a\u00020\u0006H\u0016J\u0013\u00103\u001a\u00020\u00142\b\u0010\u001e\u001a\u0004\u0018\u000102H\u0096\u0002J\b\u00104\u001a\u00020\u0004H\u0016J\b\u00106\u001a\u000205H\u0016J\u000f\u00109\u001a\u00020\u0006H\u0000¢\u0006\u0004\b7\u00108J\u0017\u0010;\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0000¢\u0006\u0004\b:\u0010\u000fJ\u0017\u0010=\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0000¢\u0006\u0004\b<\u0010\u000fJ#\u0010@\u001a\u00020\u00142\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 H\u0000¢\u0006\u0004\b>\u0010?J\u001b\u0010D\u001a\u00020\u00142\n\u0010A\u001a\u0006\u0012\u0002\b\u00030#H\u0000¢\u0006\u0004\bB\u0010CJ#\u0010F\u001a\u00020\u00142\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 H\u0000¢\u0006\u0004\bE\u0010?J\u0017\u0010I\u001a\u00020\u00142\u0006\u0010G\u001a\u00028\u0001H\u0000¢\u0006\u0004\bH\u0010)J\u001b\u0010M\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010JH\u0000¢\u0006\u0004\bK\u0010LJ\u001b\u0010Q\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010NH\u0000¢\u0006\u0004\bO\u0010PJ\u001b\u0010U\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010RH\u0000¢\u0006\u0004\bS\u0010TR\u001c\u0010Y\u001a\b\u0012\u0004\u0012\u00028\u00000V8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bW\u0010XR$\u0010[\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010\b\u001a\u00020\u00048B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b]\u0010^R\u001e\u0010`\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR$\u0010e\u001a\u00020\u00042\u0006\u0010d\u001a\u00020\u00048\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\be\u0010c\u001a\u0004\bf\u0010^R\u0016\u0010g\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010cR\u001c\u0010h\u001a\b\u0012\u0004\u0012\u00028\u00000\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u001e\u0010k\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR(\u0010o\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010m0V8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bn\u0010XR\u001e\u0010p\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010iR\u0016\u0010r\u001a\u00020q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0016\u0010t\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010cR\u0016\u0010u\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010vR\u0016\u0010x\u001a\u00020\u00048B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bw\u0010^R\u0016\u0010y\u001a\u00020q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010sR\u001c\u0010}\u001a\b\u0012\u0004\u0012\u00028\u00010z8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b{\u0010|¨\u0006\u0088\u0001"}, d2 = {"Lkotlin/collections/builders/MapBuilder;", "K", "V", "", "", "n", "", "ensureExtraCapacity", "capacity", "ensureCapacity", "", "allocateValuesArray", "()[Ljava/lang/Object;", "key", "hash", "(Ljava/lang/Object;)I", "compact", "newHashSize", "rehash", ai.aA, "", "putRehash", "findKey", "value", "findValue", "index", "removeKeyAt", "removedHash", "removeHashAt", "", "other", "contentEquals", "", "entry", "putEntry", "", "from", "putAllEntries", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "isEmpty", "containsKey", "(Ljava/lang/Object;)Z", "containsValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putAll", "remove", "clear", "", "equals", TTDownloadField.TT_HASHCODE, "", "toString", "checkIsMutable$kotlin_stdlib", "()V", "checkIsMutable", "addKey$kotlin_stdlib", "addKey", "removeKey$kotlin_stdlib", "removeKey", "containsEntry$kotlin_stdlib", "(Ljava/util/Map$Entry;)Z", "containsEntry", "m", "containsAllEntries$kotlin_stdlib", "(Ljava/util/Collection;)Z", "containsAllEntries", "removeEntry$kotlin_stdlib", "removeEntry", "element", "removeValue$kotlin_stdlib", "removeValue", "Lkotlin/collections/builders/MapBuilder$KeysItr;", "keysIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$KeysItr;", "keysIterator", "Lkotlin/collections/builders/MapBuilder$ValuesItr;", "valuesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$ValuesItr;", "valuesIterator", "Lkotlin/collections/builders/MapBuilder$EntriesItr;", "entriesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$EntriesItr;", "entriesIterator", "", "getKeys", "()Ljava/util/Set;", COSHttpResponseKey.Data.KEYS, "Lkotlin/collections/builders/MapBuilderEntries;", "entriesView", "Lkotlin/collections/builders/MapBuilderEntries;", "getCapacity", "()I", "Lkotlin/collections/builders/MapBuilderValues;", "valuesView", "Lkotlin/collections/builders/MapBuilderValues;", "hashShift", "I", "<set-?>", "size", "getSize", "length", "keysArray", "[Ljava/lang/Object;", "Lkotlin/collections/builders/MapBuilderKeys;", "keysView", "Lkotlin/collections/builders/MapBuilderKeys;", "", "getEntries", "entries", "valuesArray", "", "presenceArray", "[I", "maxProbeDistance", "isReadOnly", "Z", "getHashSize", "hashSize", "hashArray", "", "getValues", "()Ljava/util/Collection;", "values", "<init>", "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V", "initialCapacity", "(I)V", "Companion", "EntriesItr", "EntryRef", "Itr", "KeysItr", "ValuesItr", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class MapBuilder<K, V> implements Map<K, V>, KMutableMap {
    @NotNull
    private static final Companion Companion = new Companion(null);
    @Deprecated
    private static final int INITIAL_CAPACITY = 8;
    @Deprecated
    private static final int INITIAL_MAX_PROBE_DISTANCE = 2;
    @Deprecated
    private static final int MAGIC = -1640531527;
    @Deprecated
    private static final int TOMBSTONE = -1;
    private MapBuilderEntries<K, V> entriesView;
    private int[] hashArray;
    private int hashShift;
    private boolean isReadOnly;
    private K[] keysArray;
    private MapBuilderKeys<K> keysView;
    private int length;
    private int maxProbeDistance;
    private int[] presenceArray;
    private int size;
    private V[] valuesArray;
    private MapBuilderValues<V> valuesView;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\u0007\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\bR\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0016\u0010\u000b\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Companion;", "", "", "capacity", "computeHashSize", "hashSize", "computeShift", "INITIAL_CAPACITY", "I", "INITIAL_MAX_PROBE_DISTANCE", "MAGIC", "TOMBSTONE", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int computeHashSize(int i2) {
            int coerceAtLeast;
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i2, 1);
            return Integer.highestOneBit(coerceAtLeast * 3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int computeShift(int i2) {
            return Integer.numberOfLeadingZeros(i2) + 1;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010'\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00050\u0004B\u001b\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006H\u0096\u0002J\u000f\u0010\u000b\u001a\u00020\bH\u0000¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u0010\u001a\u00020\u000f2\n\u0010\u000e\u001a\u00060\fj\u0002`\r¨\u0006\u0015"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntriesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "", "Lkotlin/collections/builders/MapBuilder$EntryRef;", "next", "", "nextHashCode$kotlin_stdlib", "()I", "nextHashCode", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "", "nextAppendString", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class EntriesItr<K, V> extends Itr<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EntriesItr(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        public final void nextAppendString(@NotNull StringBuilder sb) {
            Intrinsics.checkNotNullParameter(sb, "sb");
            if (getIndex$kotlin_stdlib() < ((MapBuilder) getMap$kotlin_stdlib()).length) {
                int index$kotlin_stdlib = getIndex$kotlin_stdlib();
                setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
                setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
                Object obj = ((MapBuilder) getMap$kotlin_stdlib()).keysArray[getLastIndex$kotlin_stdlib()];
                if (Intrinsics.areEqual(obj, getMap$kotlin_stdlib())) {
                    sb.append("(this Map)");
                } else {
                    sb.append(obj);
                }
                sb.append('=');
                Object[] objArr = ((MapBuilder) getMap$kotlin_stdlib()).valuesArray;
                Intrinsics.checkNotNull(objArr);
                Object obj2 = objArr[getLastIndex$kotlin_stdlib()];
                if (Intrinsics.areEqual(obj2, getMap$kotlin_stdlib())) {
                    sb.append("(this Map)");
                } else {
                    sb.append(obj2);
                }
                initNext$kotlin_stdlib();
                return;
            }
            throw new NoSuchElementException();
        }

        public final int nextHashCode$kotlin_stdlib() {
            if (getIndex$kotlin_stdlib() < ((MapBuilder) getMap$kotlin_stdlib()).length) {
                int index$kotlin_stdlib = getIndex$kotlin_stdlib();
                setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
                setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
                Object obj = ((MapBuilder) getMap$kotlin_stdlib()).keysArray[getLastIndex$kotlin_stdlib()];
                int hashCode = obj != null ? obj.hashCode() : 0;
                Object[] objArr = ((MapBuilder) getMap$kotlin_stdlib()).valuesArray;
                Intrinsics.checkNotNull(objArr);
                Object obj2 = objArr[getLastIndex$kotlin_stdlib()];
                int hashCode2 = hashCode ^ (obj2 != null ? obj2.hashCode() : 0);
                initNext$kotlin_stdlib();
                return hashCode2;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        @NotNull
        public EntryRef<K, V> next() {
            if (getIndex$kotlin_stdlib() < ((MapBuilder) getMap$kotlin_stdlib()).length) {
                int index$kotlin_stdlib = getIndex$kotlin_stdlib();
                setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
                setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
                EntryRef<K, V> entryRef = new EntryRef<>(getMap$kotlin_stdlib(), getLastIndex$kotlin_stdlib());
                initNext$kotlin_stdlib();
                return entryRef;
            }
            throw new NoSuchElementException();
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003B#\u0012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u000b¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u0005\u001a\u00028\u00032\u0006\u0010\u0004\u001a\u00028\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016R\u0016\u0010\u0011\u001a\u00028\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00028\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0010¨\u0006\u001b"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntryRef;", "K", "V", "", "newValue", "setValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "other", "", "equals", "", TTDownloadField.TT_HASHCODE, "", "toString", "getValue", "()Ljava/lang/Object;", "value", "Lkotlin/collections/builders/MapBuilder;", "map", "Lkotlin/collections/builders/MapBuilder;", "index", "I", "getKey", "key", "<init>", "(Lkotlin/collections/builders/MapBuilder;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class EntryRef<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {
        private final int index;
        private final MapBuilder<K, V> map;

        public EntryRef(@NotNull MapBuilder<K, V> map, int i2) {
            Intrinsics.checkNotNullParameter(map, "map");
            this.map = map;
            this.index = i2;
        }

        @Override // java.util.Map.Entry
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (Intrinsics.areEqual(entry.getKey(), getKey()) && Intrinsics.areEqual(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) ((MapBuilder) this.map).keysArray[this.index];
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            Object[] objArr = ((MapBuilder) this.map).valuesArray;
            Intrinsics.checkNotNull(objArr);
            return (V) objArr[this.index];
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K key = getKey();
            int hashCode = key != null ? key.hashCode() : 0;
            V value = getValue();
            return hashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v3) {
            this.map.checkIsMutable$kotlin_stdlib();
            Object[] allocateValuesArray = this.map.allocateValuesArray();
            int i2 = this.index;
            V v4 = (V) allocateValuesArray[i2];
            allocateValuesArray[i2] = v3;
            return v4;
        }

        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\b\u0010\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u001b\u0012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0012¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u0007\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\n\u001a\u00020\u0004R\"\u0010\f\u001a\u00020\u000b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R(\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00128\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\u000b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\r\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0011¨\u0006\u001c"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Itr;", "K", "V", "", "", "initNext$kotlin_stdlib", "()V", "initNext", "", "hasNext", "remove", "", "lastIndex", "I", "getLastIndex$kotlin_stdlib", "()I", "setLastIndex$kotlin_stdlib", "(I)V", "Lkotlin/collections/builders/MapBuilder;", "map", "Lkotlin/collections/builders/MapBuilder;", "getMap$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder;", "index", "getIndex$kotlin_stdlib", "setIndex$kotlin_stdlib", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static class Itr<K, V> {
        private int index;
        private int lastIndex;
        @NotNull
        private final MapBuilder<K, V> map;

        public Itr(@NotNull MapBuilder<K, V> map) {
            Intrinsics.checkNotNullParameter(map, "map");
            this.map = map;
            this.lastIndex = -1;
            initNext$kotlin_stdlib();
        }

        public final int getIndex$kotlin_stdlib() {
            return this.index;
        }

        public final int getLastIndex$kotlin_stdlib() {
            return this.lastIndex;
        }

        @NotNull
        public final MapBuilder<K, V> getMap$kotlin_stdlib() {
            return this.map;
        }

        public final boolean hasNext() {
            return this.index < ((MapBuilder) this.map).length;
        }

        public final void initNext$kotlin_stdlib() {
            while (this.index < ((MapBuilder) this.map).length) {
                int[] iArr = ((MapBuilder) this.map).presenceArray;
                int i2 = this.index;
                if (iArr[i2] >= 0) {
                    return;
                }
                this.index = i2 + 1;
            }
        }

        public final void remove() {
            this.map.checkIsMutable$kotlin_stdlib();
            this.map.removeKeyAt(this.lastIndex);
            this.lastIndex = -1;
        }

        public final void setIndex$kotlin_stdlib(int i2) {
            this.index = i2;
        }

        public final void setLastIndex$kotlin_stdlib(int i2) {
            this.lastIndex = i2;
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\b\u0012\u0004\u0012\u00028\u00020\u0004B\u001b\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0005\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lkotlin/collections/builders/MapBuilder$KeysItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "next", "()Ljava/lang/Object;", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class KeysItr<K, V> extends Itr<K, V> implements Iterator<K>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public KeysItr(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        @Override // java.util.Iterator
        public K next() {
            if (getIndex$kotlin_stdlib() < ((MapBuilder) getMap$kotlin_stdlib()).length) {
                int index$kotlin_stdlib = getIndex$kotlin_stdlib();
                setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
                setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
                K k4 = (K) ((MapBuilder) getMap$kotlin_stdlib()).keysArray[getLastIndex$kotlin_stdlib()];
                initNext$kotlin_stdlib();
                return k4;
            }
            throw new NoSuchElementException();
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\b\u0012\u0004\u0012\u00028\u00030\u0004B\u001b\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0005\u001a\u00028\u0003H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lkotlin/collections/builders/MapBuilder$ValuesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "next", "()Ljava/lang/Object;", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class ValuesItr<K, V> extends Itr<K, V> implements Iterator<V>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ValuesItr(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        @Override // java.util.Iterator
        public V next() {
            if (getIndex$kotlin_stdlib() < ((MapBuilder) getMap$kotlin_stdlib()).length) {
                int index$kotlin_stdlib = getIndex$kotlin_stdlib();
                setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
                setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
                Object[] objArr = ((MapBuilder) getMap$kotlin_stdlib()).valuesArray;
                Intrinsics.checkNotNull(objArr);
                V v3 = (V) objArr[getLastIndex$kotlin_stdlib()];
                initNext$kotlin_stdlib();
                return v3;
            }
            throw new NoSuchElementException();
        }
    }

    private MapBuilder(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i2, int i4) {
        this.keysArray = kArr;
        this.valuesArray = vArr;
        this.presenceArray = iArr;
        this.hashArray = iArr2;
        this.maxProbeDistance = i2;
        this.length = i4;
        this.hashShift = Companion.computeShift(getHashSize());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V[] allocateValuesArray() {
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) ListBuilderKt.arrayOfUninitializedElements(getCapacity());
        this.valuesArray = vArr2;
        return vArr2;
    }

    private final void compact() {
        int i2;
        V[] vArr = this.valuesArray;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i2 = this.length;
            if (i4 >= i2) {
                break;
            }
            if (this.presenceArray[i4] >= 0) {
                K[] kArr = this.keysArray;
                kArr[i5] = kArr[i4];
                if (vArr != null) {
                    vArr[i5] = vArr[i4];
                }
                i5++;
            }
            i4++;
        }
        ListBuilderKt.resetRange(this.keysArray, i5, i2);
        if (vArr != null) {
            ListBuilderKt.resetRange(vArr, i5, this.length);
        }
        this.length = i5;
    }

    private final boolean contentEquals(Map<?, ?> map) {
        return size() == map.size() && containsAllEntries$kotlin_stdlib(map.entrySet());
    }

    private final void ensureCapacity(int i2) {
        if (i2 > getCapacity()) {
            int capacity = (getCapacity() * 3) / 2;
            if (i2 <= capacity) {
                i2 = capacity;
            }
            this.keysArray = (K[]) ListBuilderKt.copyOfUninitializedElements(this.keysArray, i2);
            V[] vArr = this.valuesArray;
            this.valuesArray = vArr != null ? (V[]) ListBuilderKt.copyOfUninitializedElements(vArr, i2) : null;
            int[] copyOf = Arrays.copyOf(this.presenceArray, i2);
            Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.presenceArray = copyOf;
            int computeHashSize = Companion.computeHashSize(i2);
            if (computeHashSize > getHashSize()) {
                rehash(computeHashSize);
            }
        } else if ((this.length + i2) - size() > getCapacity()) {
            rehash(getHashSize());
        }
    }

    private final void ensureExtraCapacity(int i2) {
        ensureCapacity(this.length + i2);
    }

    private final int findKey(K k4) {
        int hash = hash(k4);
        int i2 = this.maxProbeDistance;
        while (true) {
            int i4 = this.hashArray[hash];
            if (i4 == 0) {
                return -1;
            }
            if (i4 > 0) {
                int i5 = i4 - 1;
                if (Intrinsics.areEqual(this.keysArray[i5], k4)) {
                    return i5;
                }
            }
            i2--;
            if (i2 < 0) {
                return -1;
            }
            hash = hash == 0 ? getHashSize() - 1 : hash - 1;
        }
    }

    private final int findValue(V v3) {
        int i2 = this.length;
        while (true) {
            i2--;
            if (i2 < 0) {
                return -1;
            }
            if (this.presenceArray[i2] >= 0) {
                V[] vArr = this.valuesArray;
                Intrinsics.checkNotNull(vArr);
                if (Intrinsics.areEqual(vArr[i2], v3)) {
                    return i2;
                }
            }
        }
    }

    private final int getCapacity() {
        return this.keysArray.length;
    }

    private final int getHashSize() {
        return this.hashArray.length;
    }

    private final int hash(K k4) {
        return ((k4 != null ? k4.hashCode() : 0) * MAGIC) >>> this.hashShift;
    }

    private final boolean putAllEntries(Collection<? extends Map.Entry<? extends K, ? extends V>> collection) {
        boolean z3 = false;
        if (collection.isEmpty()) {
            return false;
        }
        ensureExtraCapacity(collection.size());
        for (Map.Entry<? extends K, ? extends V> entry : collection) {
            if (putEntry(entry)) {
                z3 = true;
            }
        }
        return z3;
    }

    private final boolean putEntry(Map.Entry<? extends K, ? extends V> entry) {
        int addKey$kotlin_stdlib = addKey$kotlin_stdlib(entry.getKey());
        V[] allocateValuesArray = allocateValuesArray();
        if (addKey$kotlin_stdlib >= 0) {
            allocateValuesArray[addKey$kotlin_stdlib] = entry.getValue();
            return true;
        }
        int i2 = (-addKey$kotlin_stdlib) - 1;
        if (!Intrinsics.areEqual(entry.getValue(), allocateValuesArray[i2])) {
            allocateValuesArray[i2] = entry.getValue();
            return true;
        }
        return false;
    }

    private final boolean putRehash(int i2) {
        int hash = hash(this.keysArray[i2]);
        int i4 = this.maxProbeDistance;
        while (true) {
            int[] iArr = this.hashArray;
            if (iArr[hash] == 0) {
                iArr[hash] = i2 + 1;
                this.presenceArray[i2] = hash;
                return true;
            }
            i4--;
            if (i4 < 0) {
                return false;
            }
            hash = hash == 0 ? getHashSize() - 1 : hash - 1;
        }
    }

    private final void rehash(int i2) {
        if (this.length > size()) {
            compact();
        }
        int i4 = 0;
        if (i2 != getHashSize()) {
            this.hashArray = new int[i2];
            this.hashShift = Companion.computeShift(i2);
        } else {
            ArraysKt___ArraysJvmKt.fill(this.hashArray, 0, 0, getHashSize());
        }
        while (i4 < this.length) {
            int i5 = i4 + 1;
            if (!putRehash(i4)) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i4 = i5;
        }
    }

    private final void removeHashAt(int i2) {
        int coerceAtMost;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(this.maxProbeDistance * 2, getHashSize() / 2);
        int i4 = coerceAtMost;
        int i5 = 0;
        int i6 = i2;
        do {
            i2 = i2 == 0 ? getHashSize() - 1 : i2 - 1;
            i5++;
            if (i5 > this.maxProbeDistance) {
                this.hashArray[i6] = 0;
                return;
            }
            int[] iArr = this.hashArray;
            int i7 = iArr[i2];
            if (i7 == 0) {
                iArr[i6] = 0;
                return;
            }
            if (i7 < 0) {
                iArr[i6] = -1;
            } else {
                int i8 = i7 - 1;
                if (((hash(this.keysArray[i8]) - i2) & (getHashSize() - 1)) >= i5) {
                    this.hashArray[i6] = i7;
                    this.presenceArray[i8] = i6;
                }
                i4--;
            }
            i6 = i2;
            i5 = 0;
            i4--;
        } while (i4 >= 0);
        this.hashArray[i6] = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeKeyAt(int i2) {
        ListBuilderKt.resetAt(this.keysArray, i2);
        removeHashAt(this.presenceArray[i2]);
        this.presenceArray[i2] = -1;
        this.size = size() - 1;
    }

    public final int addKey$kotlin_stdlib(K k4) {
        int coerceAtMost;
        checkIsMutable$kotlin_stdlib();
        while (true) {
            int hash = hash(k4);
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(this.maxProbeDistance * 2, getHashSize() / 2);
            int i2 = 0;
            while (true) {
                int i4 = this.hashArray[hash];
                if (i4 <= 0) {
                    if (this.length >= getCapacity()) {
                        ensureExtraCapacity(1);
                    } else {
                        int i5 = this.length;
                        int i6 = i5 + 1;
                        this.length = i6;
                        this.keysArray[i5] = k4;
                        this.presenceArray[i5] = hash;
                        this.hashArray[hash] = i6;
                        this.size = size() + 1;
                        if (i2 > this.maxProbeDistance) {
                            this.maxProbeDistance = i2;
                        }
                        return i5;
                    }
                } else if (Intrinsics.areEqual(this.keysArray[i4 - 1], k4)) {
                    return -i4;
                } else {
                    i2++;
                    if (i2 > coerceAtMost) {
                        rehash(getHashSize() * 2);
                        break;
                    }
                    hash = hash == 0 ? getHashSize() - 1 : hash - 1;
                }
            }
        }
    }

    @NotNull
    public final Map<K, V> build() {
        checkIsMutable$kotlin_stdlib();
        this.isReadOnly = true;
        return this;
    }

    public final void checkIsMutable$kotlin_stdlib() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public void clear() {
        checkIsMutable$kotlin_stdlib();
        int i2 = this.length - 1;
        if (i2 >= 0) {
            int i4 = 0;
            while (true) {
                int[] iArr = this.presenceArray;
                int i5 = iArr[i4];
                if (i5 >= 0) {
                    this.hashArray[i5] = 0;
                    iArr[i4] = -1;
                }
                if (i4 == i2) {
                    break;
                }
                i4++;
            }
        }
        ListBuilderKt.resetRange(this.keysArray, 0, this.length);
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            ListBuilderKt.resetRange(vArr, 0, this.length);
        }
        this.size = 0;
        this.length = 0;
    }

    public final boolean containsAllEntries$kotlin_stdlib(@NotNull Collection<?> m4) {
        Intrinsics.checkNotNullParameter(m4, "m");
        for (Object obj : m4) {
            if (obj != null) {
                try {
                    if (!containsEntry$kotlin_stdlib((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean containsEntry$kotlin_stdlib(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        int findKey = findKey(entry.getKey());
        if (findKey < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.checkNotNull(vArr);
        return Intrinsics.areEqual(vArr[findKey], entry.getValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return findKey(obj) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return findValue(obj) >= 0;
    }

    @NotNull
    public final EntriesItr<K, V> entriesIterator$kotlin_stdlib() {
        return new EntriesItr<>(this);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return obj == this || ((obj instanceof Map) && contentEquals((Map) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        int findKey = findKey(obj);
        if (findKey < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.checkNotNull(vArr);
        return vArr[findKey];
    }

    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        MapBuilderEntries<K, V> mapBuilderEntries = this.entriesView;
        if (mapBuilderEntries == null) {
            MapBuilderEntries<K, V> mapBuilderEntries2 = new MapBuilderEntries<>(this);
            this.entriesView = mapBuilderEntries2;
            return mapBuilderEntries2;
        }
        return mapBuilderEntries;
    }

    @NotNull
    public Set<K> getKeys() {
        MapBuilderKeys<K> mapBuilderKeys = this.keysView;
        if (mapBuilderKeys == null) {
            MapBuilderKeys<K> mapBuilderKeys2 = new MapBuilderKeys<>(this);
            this.keysView = mapBuilderKeys2;
            return mapBuilderKeys2;
        }
        return mapBuilderKeys;
    }

    public int getSize() {
        return this.size;
    }

    @NotNull
    public Collection<V> getValues() {
        MapBuilderValues<V> mapBuilderValues = this.valuesView;
        if (mapBuilderValues == null) {
            MapBuilderValues<V> mapBuilderValues2 = new MapBuilderValues<>(this);
            this.valuesView = mapBuilderValues2;
            return mapBuilderValues2;
        }
        return mapBuilderValues;
    }

    @Override // java.util.Map
    public int hashCode() {
        EntriesItr<K, V> entriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int i2 = 0;
        while (entriesIterator$kotlin_stdlib.hasNext()) {
            i2 += entriesIterator$kotlin_stdlib.nextHashCode$kotlin_stdlib();
        }
        return i2;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    @NotNull
    public final KeysItr<K, V> keysIterator$kotlin_stdlib() {
        return new KeysItr<>(this);
    }

    @Override // java.util.Map
    @Nullable
    public V put(K k4, V v3) {
        checkIsMutable$kotlin_stdlib();
        int addKey$kotlin_stdlib = addKey$kotlin_stdlib(k4);
        V[] allocateValuesArray = allocateValuesArray();
        if (addKey$kotlin_stdlib < 0) {
            int i2 = (-addKey$kotlin_stdlib) - 1;
            V v4 = allocateValuesArray[i2];
            allocateValuesArray[i2] = v3;
            return v4;
        }
        allocateValuesArray[addKey$kotlin_stdlib] = v3;
        return null;
    }

    @Override // java.util.Map
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        checkIsMutable$kotlin_stdlib();
        putAllEntries(from.entrySet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V remove(Object obj) {
        int removeKey$kotlin_stdlib = removeKey$kotlin_stdlib(obj);
        if (removeKey$kotlin_stdlib < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.checkNotNull(vArr);
        V v3 = vArr[removeKey$kotlin_stdlib];
        ListBuilderKt.resetAt(vArr, removeKey$kotlin_stdlib);
        return v3;
    }

    public final boolean removeEntry$kotlin_stdlib(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        checkIsMutable$kotlin_stdlib();
        int findKey = findKey(entry.getKey());
        if (findKey < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.checkNotNull(vArr);
        if (!Intrinsics.areEqual(vArr[findKey], entry.getValue())) {
            return false;
        }
        removeKeyAt(findKey);
        return true;
    }

    public final int removeKey$kotlin_stdlib(K k4) {
        checkIsMutable$kotlin_stdlib();
        int findKey = findKey(k4);
        if (findKey < 0) {
            return -1;
        }
        removeKeyAt(findKey);
        return findKey;
    }

    public final boolean removeValue$kotlin_stdlib(V v3) {
        checkIsMutable$kotlin_stdlib();
        int findValue = findValue(v3);
        if (findValue < 0) {
            return false;
        }
        removeKeyAt(findValue);
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        EntriesItr<K, V> entriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int i2 = 0;
        while (entriesIterator$kotlin_stdlib.hasNext()) {
            if (i2 > 0) {
                sb.append(", ");
            }
            entriesIterator$kotlin_stdlib.nextAppendString(sb);
            i2++;
        }
        sb.append("}");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    @NotNull
    public final ValuesItr<K, V> valuesIterator$kotlin_stdlib() {
        return new ValuesItr<>(this);
    }

    public MapBuilder() {
        this(8);
    }

    public MapBuilder(int i2) {
        this(ListBuilderKt.arrayOfUninitializedElements(i2), null, new int[i2], new int[Companion.computeHashSize(i2)], 2, 0);
    }
}
