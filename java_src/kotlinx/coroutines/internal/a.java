package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ArrayQueue.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0010\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0015\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\n\u001a\u00020\u0003R\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010\fR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\fR\u001e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0010R\u0013\u0010\u0015\u001a\u00020\u00128F@\u0006¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/internal/a;", "", "T", "", ai.aD, "element", "a", "(Ljava/lang/Object;)V", "e", "()Ljava/lang/Object;", "b", "", "I", "tail", "head", "", "[Ljava/lang/Object;", "elements", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "()Z", "isEmpty", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class a<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private Object[] f72157a = new Object[16];

    /* renamed from: b  reason: collision with root package name */
    private int f72158b;

    /* renamed from: c  reason: collision with root package name */
    private int f72159c;

    private final void c() {
        Object[] objArr = this.f72157a;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        ArraysKt___ArraysJvmKt.copyInto$default(objArr, objArr2, 0, this.f72158b, 0, 10, (Object) null);
        Object[] objArr3 = this.f72157a;
        int length2 = objArr3.length;
        int i2 = this.f72158b;
        ArraysKt___ArraysJvmKt.copyInto$default(objArr3, objArr2, length2 - i2, 0, i2, 4, (Object) null);
        this.f72157a = objArr2;
        this.f72158b = 0;
        this.f72159c = length;
    }

    public final void a(@NotNull T t3) {
        Object[] objArr = this.f72157a;
        int i2 = this.f72159c;
        objArr[i2] = t3;
        int length = (objArr.length - 1) & (i2 + 1);
        this.f72159c = length;
        if (length == this.f72158b) {
            c();
        }
    }

    public final void b() {
        this.f72158b = 0;
        this.f72159c = 0;
        this.f72157a = new Object[this.f72157a.length];
    }

    public final boolean d() {
        return this.f72158b == this.f72159c;
    }

    @Nullable
    public final T e() {
        int i2 = this.f72158b;
        if (i2 == this.f72159c) {
            return null;
        }
        Object[] objArr = this.f72157a;
        T t3 = (T) objArr[i2];
        objArr[i2] = null;
        this.f72158b = (i2 + 1) & (objArr.length - 1);
        Objects.requireNonNull(t3, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue");
        return t3;
    }
}
