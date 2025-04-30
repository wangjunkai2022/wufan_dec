package com.squareup.wire;

import com.join.mgps.activity.TagGameListActivity_;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProtoAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002B\u0015\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0015\u0010\u0016J(\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003H\u0016J\u0016\u0010\u000b\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J \u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003H\u0016J\u001e\u0010\r\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0016R\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcom/squareup/wire/k;", "E", "Lcom/squareup/wire/ProtoAdapter;", "", "Lcom/squareup/wire/n;", "writer", "", TagGameListActivity_.f35885q0, "value", "", "J", "K", "L", "I", "Lcom/squareup/wire/m;", "reader", "H", "M", "N", "Lcom/squareup/wire/ProtoAdapter;", "originalAdapter", "<init>", "(Lcom/squareup/wire/ProtoAdapter;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class k<E> extends ProtoAdapter<List<? extends E>> {
    private final ProtoAdapter<E> N;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public k(@org.jetbrains.annotations.NotNull com.squareup.wire.ProtoAdapter<E> r8) {
        /*
            r7 = this;
            java.lang.String r0 = "originalAdapter"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            com.squareup.wire.FieldEncoding r2 = com.squareup.wire.FieldEncoding.LENGTH_DELIMITED
            java.lang.Class<java.util.List> r0 = java.util.List.class
            kotlin.reflect.KClass r3 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r0)
            com.squareup.wire.Syntax r5 = r8.w()
            java.util.List r6 = kotlin.collections.CollectionsKt.emptyList()
            r4 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            r7.N = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.wire.k.<init>(com.squareup.wire.ProtoAdapter):void");
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* renamed from: H */
    public List<E> c(@NotNull m reader) throws IOException {
        List<E> listOf;
        Intrinsics.checkNotNullParameter(reader, "reader");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.N.c(reader));
        return listOf;
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: I */
    public void h(@NotNull n writer, @NotNull List<? extends E> value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        int size = value.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.N.h(writer, value.get(i2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: J */
    public void m(@NotNull n writer, int i2, @Nullable List<? extends E> list) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (list == 0 || !(!list.isEmpty())) {
            return;
        }
        super.m(writer, i2, list);
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: K */
    public int n(@NotNull List<? extends E> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int size = value.size();
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i2 += this.N.n(value.get(i4));
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: L */
    public int o(int i2, @Nullable List<? extends E> list) {
        if (list == 0 || list.isEmpty()) {
            return 0;
        }
        return super.o(i2, list);
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* renamed from: M */
    public List<E> E(@NotNull List<? extends E> value) {
        List<E> emptyList;
        Intrinsics.checkNotNullParameter(value, "value");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }
}
