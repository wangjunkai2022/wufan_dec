package com.squareup.wire;

import java.io.IOException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProtoAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0003B%\b\u0000\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0016J\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\r\u001a\u00020\fH\u0016J(\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0016R\"\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00010\u00038\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0011\u001a\u0004\b\u0001\u0010\u0013¨\u0006\u0019"}, d2 = {"Lcom/squareup/wire/f;", "K", "V", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "M", "O", "Lcom/squareup/wire/ProtoAdapter;", "L", "()Lcom/squareup/wire/ProtoAdapter;", "valueAdapter", "N", "keyAdapter", "<init>", "(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class f<K, V> extends ProtoAdapter<Map.Entry<? extends K, ? extends V>> {
    @NotNull
    private final ProtoAdapter<K> N;
    @NotNull
    private final ProtoAdapter<V> O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(@NotNull ProtoAdapter<K> keyAdapter, @NotNull ProtoAdapter<V> valueAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Map.Entry.class), (String) null, valueAdapter.w());
        Intrinsics.checkNotNullParameter(keyAdapter, "keyAdapter");
        Intrinsics.checkNotNullParameter(valueAdapter, "valueAdapter");
        this.N = keyAdapter;
        this.O = valueAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* renamed from: H */
    public Map.Entry<K, V> c(@NotNull m reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        throw new UnsupportedOperationException();
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: I */
    public void h(@NotNull n writer, @NotNull Map.Entry<? extends K, ? extends V> value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        this.N.m(writer, 1, value.getKey());
        this.O.m(writer, 2, value.getValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: J */
    public int n(@NotNull Map.Entry<? extends K, ? extends V> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return this.N.o(1, value.getKey()) + this.O.o(2, value.getValue());
    }

    @NotNull
    public final ProtoAdapter<K> K() {
        return this.N;
    }

    @NotNull
    public final ProtoAdapter<V> L() {
        return this.O;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* renamed from: M */
    public Map.Entry<K, V> E(@NotNull Map.Entry<? extends K, ? extends V> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new UnsupportedOperationException();
    }
}
