package kotlin.properties;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
/* compiled from: Delegates.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001e\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00028\u00000\u0003\"\b\b\u0000\u0010\u0002*\u00020\u0001J\u0082\u0001\u0010\u000f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0005\u001a\u00028\u00002Q\b\u0004\u0010\u000e\u001aK\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\u0006H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u0082\u0001\u0010\u0012\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0005\u001a\u00028\u00002Q\b\u0004\u0010\u000e\u001aK\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00110\u0006H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0010\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0015"}, d2 = {"Lkotlin/properties/Delegates;", "", "T", "Lkotlin/properties/ReadWriteProperty;", "notNull", "initialValue", "Lkotlin/Function3;", "Lkotlin/reflect/KProperty;", "Lkotlin/ParameterName;", "name", "property", "oldValue", "newValue", "", "onChange", "observable", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlin/properties/ReadWriteProperty;", "", "vetoable", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class Delegates {
    @NotNull
    public static final Delegates INSTANCE = new Delegates();

    private Delegates() {
    }

    @NotNull
    public final <T> ReadWriteProperty<Object, T> notNull() {
        return new NotNullVar();
    }

    @NotNull
    public final <T> ReadWriteProperty<Object, T> observable(final T t3, @NotNull final Function3<? super KProperty<?>, ? super T, ? super T, Unit> onChange) {
        Intrinsics.checkNotNullParameter(onChange, "onChange");
        return new ObservableProperty<T>(t3) { // from class: kotlin.properties.Delegates$observable$1
            @Override // kotlin.properties.ObservableProperty
            protected void afterChange(@NotNull KProperty<?> property, T t4, T t5) {
                Intrinsics.checkNotNullParameter(property, "property");
                Function3.this.invoke(property, t4, t5);
            }
        };
    }

    @NotNull
    public final <T> ReadWriteProperty<Object, T> vetoable(final T t3, @NotNull final Function3<? super KProperty<?>, ? super T, ? super T, Boolean> onChange) {
        Intrinsics.checkNotNullParameter(onChange, "onChange");
        return new ObservableProperty<T>(t3) { // from class: kotlin.properties.Delegates$vetoable$1
            @Override // kotlin.properties.ObservableProperty
            protected boolean beforeChange(@NotNull KProperty<?> property, T t4, T t5) {
                Intrinsics.checkNotNullParameter(property, "property");
                return ((Boolean) Function3.this.invoke(property, t4, t5)).booleanValue();
            }
        };
    }
}
