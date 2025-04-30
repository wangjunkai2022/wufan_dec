package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B!\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r8\b@\bX\u0088\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00028\u00008V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\f¨\u0006\u0016"}, d2 = {"Lkotlin/SynchronizedLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "", "isInitialized", "", "toString", "_value", "Ljava/lang/Object;", "Lkotlin/Function0;", "initializer", "Lkotlin/jvm/functions/Function0;", "getValue", "()Ljava/lang/Object;", "value", "lock", "<init>", "(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class SynchronizedLazyImpl<T> implements Lazy<T>, Serializable {
    private volatile Object _value;
    private Function0<? extends T> initializer;
    private final Object lock;

    public SynchronizedLazyImpl(@NotNull Function0<? extends T> initializer, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        this.initializer = initializer;
        this._value = UNINITIALIZED_VALUE.INSTANCE;
        this.lock = obj == null ? this : obj;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    @Override // kotlin.Lazy
    public T getValue() {
        T t3;
        T t4 = (T) this._value;
        UNINITIALIZED_VALUE uninitialized_value = UNINITIALIZED_VALUE.INSTANCE;
        if (t4 != uninitialized_value) {
            return t4;
        }
        synchronized (this.lock) {
            t3 = (T) this._value;
            if (t3 == uninitialized_value) {
                Function0<? extends T> function0 = this.initializer;
                Intrinsics.checkNotNull(function0);
                t3 = function0.invoke();
                this._value = t3;
                this.initializer = null;
            }
        }
        return t3;
    }

    @Override // kotlin.Lazy
    public boolean isInitialized() {
        return this._value != UNINITIALIZED_VALUE.INSTANCE;
    }

    @NotNull
    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    public /* synthetic */ SynchronizedLazyImpl(Function0 function0, Object obj, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, (i2 & 2) != 0 ? null : obj);
    }
}
