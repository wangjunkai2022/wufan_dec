package com.join.kotlin.ui.account.viewmodle;

import android.content.Context;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.MMSRequesBean;
import com.join.mgps.rpc.impl.a;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnbindViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1", f = "UnbindViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class UnbindViewModle$sendsmsCode$job$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ MMSRequesBean $requestbean;
    int label;
    final /* synthetic */ UnbindViewModle this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UnbindViewModle.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
    @DebugMetadata(c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1$1", f = "UnbindViewModle.kt", i = {0}, l = {122}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    /* renamed from: com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
        final /* synthetic */ AccountResultMainBean $result;
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: UnbindViewModle.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
        @DebugMetadata(c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1$1$1", f = "UnbindViewModle.kt", i = {}, l = {122}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C01421 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
            int label;

            C01421(Continuation continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
                Intrinsics.checkNotNullParameter(completion, "completion");
                return new C01421(completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
                return ((C01421) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (DelayKt.b(1000L, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AccountResultMainBean accountResultMainBean, Continuation continuation) {
            super(2, continuation);
            this.$result = accountResultMainBean;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$result, completion);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00c9 -> B:22:0x00cc). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 314
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnbindViewModle$sendsmsCode$job$1(UnbindViewModle unbindViewModle, MMSRequesBean mMSRequesBean, Context context, Continuation continuation) {
        super(2, continuation);
        this.this$0 = unbindViewModle;
        this.$requestbean = mMSRequesBean;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new UnbindViewModle$sendsmsCode$job$1(this.this$0, this.$requestbean, this.$context, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((UnbindViewModle$sendsmsCode$job$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AccountResultMainBean<AccountTokenSuccess> accountResultMainBean;
        c2 f4;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                accountResultMainBean = a.b0().i(this.$requestbean.getParams());
            } catch (Exception unused) {
                accountResultMainBean = new AccountResultMainBean<>(1, null);
            }
            c2 coluting = this.this$0.getColuting();
            if (coluting != null) {
                c2.a.b(coluting, null, 1, null);
            }
            UnbindViewModle unbindViewModle = this.this$0;
            f4 = k.f(v1.f72528a, g1.e(), null, new AnonymousClass1(accountResultMainBean, null), 2, null);
            unbindViewModle.setColuting(f4);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
