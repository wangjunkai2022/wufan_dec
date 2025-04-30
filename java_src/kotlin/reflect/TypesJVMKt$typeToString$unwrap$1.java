package kotlin.reflect;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TypesJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u0005\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00000\u00002\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030\u0000¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Ljava/lang/Class;", "p1", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Class;)Ljava/lang/Class;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final /* synthetic */ class TypesJVMKt$typeToString$unwrap$1 extends FunctionReferenceImpl implements Function1<Class<? extends Object>, Class<?>> {
    public static final TypesJVMKt$typeToString$unwrap$1 INSTANCE = new TypesJVMKt$typeToString$unwrap$1();

    TypesJVMKt$typeToString$unwrap$1() {
        super(1, Class.class, "getComponentType", "getComponentType()Ljava/lang/Class;", 0);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Class<?> invoke2(@NotNull Class<?> p12) {
        Intrinsics.checkNotNullParameter(p12, "p1");
        return p12.getComponentType();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Class<?> invoke(Class<? extends Object> cls) {
        return invoke2((Class<?>) cls);
    }
}
