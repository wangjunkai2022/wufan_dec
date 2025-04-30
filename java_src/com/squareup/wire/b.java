package com.squareup.wire;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.s;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EnumAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B)\b\u0004\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u0019\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u001a\u0010\u001bB)\b\u0016\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u0019\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u001a\u0010\u001dB\u0017\b\u0016\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c¢\u0006\u0004\b\u001a\u0010\u001eB\u001f\b\u0016\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u001fB\u0017\b\u0016\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015¢\u0006\u0004\b\u001a\u0010 B\u001f\b\u0016\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010!J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0013\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0004\u001a\u00020\u0005H$¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\""}, d2 = {"Lcom/squareup/wire/b;", "Lcom/squareup/wire/s;", "E", "Lcom/squareup/wire/ProtoAdapter;", "value", "", "J", "(Lcom/squareup/wire/s;)I", "Lcom/squareup/wire/n;", "writer", "", "I", "(Lcom/squareup/wire/n;Lcom/squareup/wire/s;)V", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Lcom/squareup/wire/s;", "L", "(Lcom/squareup/wire/s;)Lcom/squareup/wire/s;", "K", "(I)Lcom/squareup/wire/s;", "Lkotlin/reflect/KClass;", "type", "Lcom/squareup/wire/Syntax;", "syntax", "identity", "<init>", "(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/s;)V", "Ljava/lang/Class;", "(Ljava/lang/Class;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/s;)V", "(Ljava/lang/Class;)V", "(Ljava/lang/Class;Lcom/squareup/wire/Syntax;)V", "(Lkotlin/reflect/KClass;)V", "(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public abstract class b<E extends s> extends ProtoAdapter<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull KClass<E> type, @NotNull Syntax syntax, @Nullable E e4) {
        super(FieldEncoding.VARINT, (KClass<?>) type, (String) null, syntax, e4);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* renamed from: H */
    public E c(@NotNull m reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        int p3 = reader.p();
        E K = K(p3);
        if (K != null) {
            return K;
        }
        throw new ProtoAdapter.EnumConstantNotFoundException(p3, getType());
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: I */
    public void h(@NotNull n writer, @NotNull E value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.g(value.getValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: J */
    public int n(@NotNull E value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return n.f56869b.i(value.getValue());
    }

    @Nullable
    protected abstract E K(int i2);

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* renamed from: L */
    public E E(@NotNull E value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(@NotNull Class<E> type, @NotNull Syntax syntax, @Nullable E e4) {
        this(JvmClassMappingKt.getKotlinClass(type), syntax, e4);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(@NotNull Class<E> type) {
        this(JvmClassMappingKt.getKotlinClass(type), Syntax.PROTO_2, com.squareup.wire.internal.f.n(type));
        Intrinsics.checkNotNullParameter(type, "type");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(@NotNull Class<E> type, @NotNull Syntax syntax) {
        this(JvmClassMappingKt.getKotlinClass(type), syntax, com.squareup.wire.internal.f.n(type));
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(@NotNull KClass<E> type) {
        this(type, Syntax.PROTO_2, com.squareup.wire.internal.f.n(JvmClassMappingKt.getJavaClass((KClass) type)));
        Intrinsics.checkNotNullParameter(type, "type");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(@NotNull KClass<E> type, @NotNull Syntax syntax) {
        this(type, syntax, com.squareup.wire.internal.f.n(JvmClassMappingKt.getJavaClass((KClass) type)));
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }
}
