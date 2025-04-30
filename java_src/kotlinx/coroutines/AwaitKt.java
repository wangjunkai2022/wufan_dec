package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Await.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a?\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00002\u001e\u0010\u0003\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001\"\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a/\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\r\u001a\u00020\f2\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u0001\"\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u001d\u0010\u000f\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\n0\u0007H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"T", "", "Lkotlinx/coroutines/z0;", "deferreds", "", "b", "([Lkotlinx/coroutines/z0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "a", "(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/c2;", "jobs", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "([Lkotlinx/coroutines/c2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ai.aD, "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class AwaitKt {
    @Nullable
    public static final <T> Object a(@NotNull Collection<? extends z0<? extends T>> collection, @NotNull Continuation<? super List<? extends T>> continuation) {
        List emptyList;
        if (collection.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        Object[] array = collection.toArray(new z0[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return new e((z0[]) array).b(continuation);
    }

    @Nullable
    public static final <T> Object b(@NotNull z0<? extends T>[] z0VarArr, @NotNull Continuation<? super List<? extends T>> continuation) {
        List emptyList;
        if (z0VarArr.length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return new e(z0VarArr).b(continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(@org.jetbrains.annotations.NotNull java.util.Collection<? extends kotlinx.coroutines.c2> r4, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.AwaitKt$joinAll$3
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.AwaitKt$joinAll$3 r0 = (kotlinx.coroutines.AwaitKt$joinAll$3) r0
            int r1 = r0.f70707c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f70707c = r1
            goto L18
        L13:
            kotlinx.coroutines.AwaitKt$joinAll$3 r0 = new kotlinx.coroutines.AwaitKt$joinAll$3
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f70706b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f70707c
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.f70705a
            java.util.Iterator r4 = (java.util.Iterator) r4
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3c
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            java.util.Iterator r4 = r4.iterator()
        L3c:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L53
            java.lang.Object r5 = r4.next()
            kotlinx.coroutines.c2 r5 = (kotlinx.coroutines.c2) r5
            r0.f70705a = r4
            r0.f70707c = r3
            java.lang.Object r5 = r5.E(r0)
            if (r5 != r1) goto L3c
            return r1
        L53:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.c(java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0052 -> B:19:0x0055). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object d(@org.jetbrains.annotations.NotNull kotlinx.coroutines.c2[] r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.AwaitKt$joinAll$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.AwaitKt$joinAll$1 r0 = (kotlinx.coroutines.AwaitKt$joinAll$1) r0
            int r1 = r0.f70704e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f70704e = r1
            goto L18
        L13:
            kotlinx.coroutines.AwaitKt$joinAll$1 r0 = new kotlinx.coroutines.AwaitKt$joinAll$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f70703d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f70704e
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            int r5 = r0.f70702c
            int r2 = r0.f70701b
            java.lang.Object r4 = r0.f70700a
            kotlinx.coroutines.c2[] r4 = (kotlinx.coroutines.c2[]) r4
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r4
            goto L55
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            int r6 = r5.length
            r2 = 0
            r2 = r6
            r6 = r5
            r5 = 0
        L42:
            if (r5 >= r2) goto L57
            r4 = r6[r5]
            r0.f70700a = r6
            r0.f70701b = r2
            r0.f70702c = r5
            r0.f70704e = r3
            java.lang.Object r4 = r4.E(r0)
            if (r4 != r1) goto L55
            return r1
        L55:
            int r5 = r5 + r3
            goto L42
        L57:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.d(kotlinx.coroutines.c2[], kotlin.coroutines.Continuation):java.lang.Object");
    }
}
