package kotlin.properties;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Delegates.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ&\u0010\u0007\u001a\u00028\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u00012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ.\u0010\u000b\u001a\u00020\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00052\u0006\u0010\t\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\t\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\r¨\u0006\u0010"}, d2 = {"Lkotlin/properties/NotNullVar;", "", "T", "Lkotlin/properties/ReadWriteProperty;", "thisRef", "Lkotlin/reflect/KProperty;", "property", "getValue", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;", "value", "", "setValue", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V", "Ljava/lang/Object;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class NotNullVar<T> implements ReadWriteProperty<Object, T> {
    private T value;

    @Override // kotlin.properties.ReadWriteProperty, kotlin.properties.ReadOnlyProperty
    @NotNull
    public T getValue(@Nullable Object obj, @NotNull KProperty<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        T t3 = this.value;
        if (t3 != null) {
            return t3;
        }
        throw new IllegalStateException("Property " + property.getName() + " should be initialized before get.");
    }

    @Override // kotlin.properties.ReadWriteProperty
    public void setValue(@Nullable Object obj, @NotNull KProperty<?> property, @NotNull T value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        this.value = value;
    }
}
