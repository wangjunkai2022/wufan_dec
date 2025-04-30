package com.join.kotlin.ui.cloudarchive;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ModGameCloudViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle$copyArchive$1", f = "ModGameCloudViewModle.kt", i = {}, l = {697}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ModGameCloudViewModle$copyArchive$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1 $func;
    final /* synthetic */ Ref.ObjectRef $newArchivePath;
    final /* synthetic */ String $oldArchivePath;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModGameCloudViewModle$copyArchive$1(String str, Ref.ObjectRef objectRef, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.$oldArchivePath = str;
        this.$newArchivePath = objectRef;
        this.$func = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new ModGameCloudViewModle$copyArchive$1(this.$oldArchivePath, this.$newArchivePath, this.$func, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((ModGameCloudViewModle$copyArchive$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        z0 b4;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            b4 = k.b(v1.f72528a, g1.c(), null, new ModGameCloudViewModle$copyArchive$1$result$1(this, null), 2, null);
            this.label = 1;
            obj = b4.n(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        String str = (String) obj;
        this.$func.invoke(Boxing.boxBoolean(true));
        return Unit.INSTANCE;
    }
}
