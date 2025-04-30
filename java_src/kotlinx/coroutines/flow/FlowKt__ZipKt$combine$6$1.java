package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Zip.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\u0010\u0003\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0002\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001H\n"}, d2 = {"T", "R", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class FlowKt__ZipKt$combine$6$1<T> extends Lambda implements Function0<T[]> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f<T>[] f71842a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combine$6$1(f<T>[] fVarArr) {
        super(0);
        this.f71842a = fVarArr;
    }

    @Override // kotlin.jvm.functions.Function0
    @Nullable
    /* renamed from: a */
    public final T[] invoke() {
        int length = this.f71842a.length;
        Intrinsics.reifiedOperationMarker(0, "T?");
        return (T[]) new Object[length];
    }
}
