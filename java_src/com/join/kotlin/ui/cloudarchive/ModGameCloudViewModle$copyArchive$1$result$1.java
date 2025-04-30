package com.join.kotlin.ui.cloudarchive;

import com.join.mgps.Util.f0;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModGameCloudViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle$copyArchive$1$result$1", f = "ModGameCloudViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class ModGameCloudViewModle$copyArchive$1$result$1 extends SuspendLambda implements Function2<t0, Continuation<? super String>, Object> {
    int label;
    final /* synthetic */ ModGameCloudViewModle$copyArchive$1 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModGameCloudViewModle$copyArchive$1$result$1(ModGameCloudViewModle$copyArchive$1 modGameCloudViewModle$copyArchive$1, Continuation continuation) {
        super(2, continuation);
        this.this$0 = modGameCloudViewModle$copyArchive$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new ModGameCloudViewModle$copyArchive$1$result$1(this.this$0, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super String> continuation) {
        return ((ModGameCloudViewModle$copyArchive$1$result$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                ModGameCloudViewModle$copyArchive$1 modGameCloudViewModle$copyArchive$1 = this.this$0;
                f0.a(modGameCloudViewModle$copyArchive$1.$oldArchivePath, (String) modGameCloudViewModle$copyArchive$1.$newArchivePath.element);
                return "";
            } catch (IOException e4) {
                e4.printStackTrace();
                return "";
            }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
