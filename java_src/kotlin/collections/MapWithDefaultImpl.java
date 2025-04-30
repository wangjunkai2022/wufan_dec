package kotlin.collections;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MapWithDefault.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003B>\u0012\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010!\u0012!\u0010+\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00028\u00010(¢\u0006\u0004\b-\u0010.J\u0013\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\u0006H\u0016J\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0011\u0010\u000fJ\u001a\u0010\u0012\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00028\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0014\u0010\u0013R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00158V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R(\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001a0\u00198V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR(\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010!8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u001c\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000\u00198V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u001cR1\u0010+\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00028\u00010(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006/"}, d2 = {"Lkotlin/collections/MapWithDefaultImpl;", "K", "V", "Lkotlin/collections/MapWithDefault;", "", "other", "", "equals", "", TTDownloadField.TT_HASHCODE, "", "toString", "isEmpty", "key", "containsKey", "(Ljava/lang/Object;)Z", "value", "containsValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "getOrImplicitDefault", "", "getValues", "()Ljava/util/Collection;", "values", "", "", "getEntries", "()Ljava/util/Set;", "entries", "getSize", "()I", "size", "", "map", "Ljava/util/Map;", "getMap", "()Ljava/util/Map;", "getKeys", COSHttpResponseKey.Data.KEYS, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "default", "Lkotlin/jvm/functions/Function1;", "<init>", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class MapWithDefaultImpl<K, V> implements MapWithDefault<K, V> {

    /* renamed from: default  reason: not valid java name */
    private final Function1<K, V> f1default;
    @NotNull
    private final Map<K, V> map;

    /* JADX WARN: Multi-variable type inference failed */
    public MapWithDefaultImpl(@NotNull Map<K, ? extends V> map, @NotNull Function1<? super K, ? extends V> function1) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(function1, "default");
        this.map = map;
        this.f1default = function1;
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return getMap().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return getMap().containsValue(obj);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return getMap().equals(obj);
    }

    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        return getMap().get(obj);
    }

    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        return getMap().entrySet();
    }

    @NotNull
    public Set<K> getKeys() {
        return getMap().keySet();
    }

    @Override // kotlin.collections.MapWithDefault
    @NotNull
    public Map<K, V> getMap() {
        return this.map;
    }

    @Override // kotlin.collections.MapWithDefault
    public V getOrImplicitDefault(K k4) {
        Map<K, V> map = getMap();
        V v3 = map.get(k4);
        return (v3 != null || map.containsKey(k4)) ? v3 : this.f1default.invoke(k4);
    }

    public int getSize() {
        return getMap().size();
    }

    @NotNull
    public Collection<V> getValues() {
        return getMap().values();
    }

    @Override // java.util.Map
    public int hashCode() {
        return getMap().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return getMap().isEmpty();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    @Override // java.util.Map
    public V put(K k4, V v3) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @NotNull
    public String toString() {
        return getMap().toString();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }
}
