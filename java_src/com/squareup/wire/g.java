package com.squareup.wire;

import com.join.mgps.activity.TagGameListActivity_;
import java.io.IOException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProtoAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0003B%\b\u0000\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u001c\u0010\u0001\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0016J&\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004H\u0016J$\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0016J.\u0010\r\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004H\u0016J\u001c\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J(\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0016R\"\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/squareup/wire/g;", "K", "V", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", TagGameListActivity_.f35885q0, "L", "Lcom/squareup/wire/n;", "writer", "", "I", "J", "Lcom/squareup/wire/m;", "reader", "H", "M", "Lcom/squareup/wire/f;", "N", "Lcom/squareup/wire/f;", "entryAdapter", "keyAdapter", "valueAdapter", "<init>", "(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class g<K, V> extends ProtoAdapter<Map<K, ? extends V>> {
    private final f<K, V> N;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(@NotNull ProtoAdapter<K> keyAdapter, @NotNull ProtoAdapter<V> valueAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Map.class), (String) null, valueAdapter.w(), MapsKt.emptyMap());
        Intrinsics.checkNotNullParameter(keyAdapter, "keyAdapter");
        Intrinsics.checkNotNullParameter(valueAdapter, "valueAdapter");
        this.N = new f<>(keyAdapter, valueAdapter);
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* renamed from: H */
    public Map<K, V> c(@NotNull m reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        long e4 = reader.e();
        K k4 = null;
        V v3 = null;
        while (true) {
            int i2 = reader.i();
            if (i2 == -1) {
                break;
            } else if (i2 == 1) {
                k4 = this.N.K().c(reader);
            } else if (i2 == 2) {
                v3 = this.N.L().c(reader);
            }
        }
        reader.g(e4);
        if (k4 != null) {
            if (v3 != null) {
                return MapsKt.mapOf(TuplesKt.to(k4, v3));
            }
            throw new IllegalStateException("Map entry with null value".toString());
        }
        throw new IllegalStateException("Map entry with null key".toString());
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: I */
    public void h(@NotNull n writer, @NotNull Map<K, ? extends V> value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: J */
    public void m(@NotNull n writer, int i2, @Nullable Map<K, ? extends V> map) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (map == null) {
            return;
        }
        for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
            this.N.m(writer, i2, entry);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: K */
    public int n(@NotNull Map<K, ? extends V> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new UnsupportedOperationException("Repeated values can only be sized with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: L */
    public int o(int i2, @Nullable Map<K, ? extends V> map) {
        int i4 = 0;
        if (map == null) {
            return 0;
        }
        for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
            i4 += this.N.o(i2, entry);
        }
        return i4;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* renamed from: M */
    public Map<K, V> E(@NotNull Map<K, ? extends V> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return MapsKt.emptyMap();
    }
}
