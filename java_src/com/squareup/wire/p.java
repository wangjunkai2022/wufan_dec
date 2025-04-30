package com.squareup.wire;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.squareup.wire.s;
import java.lang.reflect.Method;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RuntimeEnumAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001a*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u001bB\u001f\b\u0000\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018B\u0017\b\u0016\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011¢\u0006\u0004\b\u0017\u0010\u0019J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0019\u0010\b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u0006H\u0016R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u000fR\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u001c"}, d2 = {"Lcom/squareup/wire/p;", "Lcom/squareup/wire/s;", "E", "Lcom/squareup/wire/b;", "Ljava/lang/reflect/Method;", "N", "", "value", "K", "(I)Lcom/squareup/wire/s;", "", "other", "", "equals", TTDownloadField.TT_HASHCODE, "Ljava/lang/reflect/Method;", "fromValueMethod", "Ljava/lang/Class;", "O", "Ljava/lang/Class;", "javaType", "Lcom/squareup/wire/Syntax;", "syntax", "<init>", "(Ljava/lang/Class;Lcom/squareup/wire/Syntax;)V", "(Ljava/lang/Class;)V", "P", "a", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class p<E extends s> extends b<E> {
    public static final a P = new a(null);
    private Method N;
    private final Class<E> O;

    /* compiled from: RuntimeEnumAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006\"\b\b\u0001\u0010\u0003*\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0007¨\u0006\n"}, d2 = {"com/squareup/wire/p$a", "", "Lcom/squareup/wire/s;", "E", "Ljava/lang/Class;", "enumType", "Lcom/squareup/wire/p;", "a", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        @JvmStatic
        @NotNull
        public final <E extends s> p<E> a(@NotNull Class<E> enumType) {
            Intrinsics.checkNotNullParameter(enumType, "enumType");
            return new p<>(enumType, ProtoAdapter.M.b(enumType).w());
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(@NotNull Class<E> javaType, @NotNull Syntax syntax) {
        super(JvmClassMappingKt.getKotlinClass(javaType), syntax, com.squareup.wire.internal.f.n(javaType));
        Intrinsics.checkNotNullParameter(javaType, "javaType");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
        this.O = javaType;
    }

    @JvmStatic
    @NotNull
    public static final <E extends s> p<E> M(@NotNull Class<E> cls) {
        return P.a(cls);
    }

    private final Method N() {
        Method method = this.N;
        if (method != null) {
            return method;
        }
        Method method2 = this.O.getMethod("fromValue", Integer.TYPE);
        this.N = method2;
        Intrinsics.checkNotNullExpressionValue(method2, "javaType.getMethod(\"from…romValueMethod = it\n    }");
        return method2;
    }

    @Override // com.squareup.wire.b
    @Nullable
    protected E K(int i2) {
        Object invoke = N().invoke(null, Integer.valueOf(i2));
        Objects.requireNonNull(invoke, "null cannot be cast to non-null type E");
        return (E) invoke;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof p) && Intrinsics.areEqual(((p) obj).getType(), getType());
    }

    public int hashCode() {
        KClass<?> type = getType();
        if (type != null) {
            return type.hashCode();
        }
        return 0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public p(@NotNull Class<E> javaType) {
        this(javaType, Syntax.PROTO_2);
        Intrinsics.checkNotNullParameter(javaType, "javaType");
    }
}
