package com.join.kotlin.ui.account.viewmodle;

import android.content.Context;
import com.join.kotlin.ui.account.modle.UnBindPlatform;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.listener.a;
import com.psk.kotlin.ext.CommonExtKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.i;
import kotlinx.coroutines.k;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnbindViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendUnbindThridPart$job$1", f = "UnbindViewModle.kt", i = {}, l = {140}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class UnbindViewModle$sendUnbindThridPart$job$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ Ref.ObjectRef $request;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ UnbindViewModle this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UnbindViewModle.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
    @DebugMetadata(c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendUnbindThridPart$job$1$1", f = "UnbindViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendUnbindThridPart$job$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef objectRef, Continuation continuation) {
            super(2, continuation);
            this.$result = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            return new AnonymousClass1(this.$result, completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (((ResponseModel) this.$result.element).getError() == 0) {
                    Object data = ((ResponseModel) this.$result.element).getData();
                    Intrinsics.checkNotNullExpressionValue(data, "result.data");
                    if (((Boolean) data).booleanValue()) {
                        AccountUtil_ instance_ = AccountUtil_.getInstance_(UnbindViewModle$sendUnbindThridPart$job$1.this.$context);
                        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
                        AccountBean accountBean = instance_.getAccountData();
                        String platform = UnbindViewModle$sendUnbindThridPart$job$1.this.this$0.getPlatform();
                        if (Intrinsics.areEqual(platform, UnBindPlatform.QQ_OPENID.name())) {
                            Intrinsics.checkNotNullExpressionValue(accountBean, "accountBean");
                            accountBean.setIs_bind_qq(0);
                        } else if (Intrinsics.areEqual(platform, UnBindPlatform.WEIXIN_OPENID.name())) {
                            Intrinsics.checkNotNullExpressionValue(accountBean, "accountBean");
                            accountBean.setIs_bind_wx(0);
                        } else if (Intrinsics.areEqual(platform, UnBindPlatform.WB_OPENID.name())) {
                            Intrinsics.checkNotNullExpressionValue(accountBean, "accountBean");
                            accountBean.setIs_bind_wb(0);
                        }
                        a.b().c();
                        CommonExtKt.toast(UnbindViewModle$sendUnbindThridPart$job$1.this.$context, "解绑成功");
                        UnbindViewModle$sendUnbindThridPart$job$1.this.this$0.getCallStatus().setValue(Boxing.boxInt(1));
                    } else {
                        Context context = UnbindViewModle$sendUnbindThridPart$job$1.this.$context;
                        String msg = ((ResponseModel) this.$result.element).getMsg();
                        if (msg == null) {
                            msg = ((ResponseModel) this.$result.element).getMessage();
                        }
                        CommonExtKt.toast(context, msg);
                    }
                } else {
                    Context context2 = UnbindViewModle$sendUnbindThridPart$job$1.this.$context;
                    String msg2 = ((ResponseModel) this.$result.element).getMsg();
                    if (msg2 == null) {
                        msg2 = ((ResponseModel) this.$result.element).getMessage();
                    }
                    CommonExtKt.toast(context2, msg2);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnbindViewModle$sendUnbindThridPart$job$1(UnbindViewModle unbindViewModle, Ref.ObjectRef objectRef, Context context, Continuation continuation) {
        super(2, continuation);
        this.this$0 = unbindViewModle;
        this.$request = objectRef;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new UnbindViewModle$sendUnbindThridPart$job$1(this.this$0, this.$request, this.$context, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((UnbindViewModle$sendUnbindThridPart$job$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r10v4, types: [T, com.join.mgps.dto.ResponseModel] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            CoroutineDispatcher c4 = g1.c();
            UnbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1 unbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1 = new UnbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1(null, this);
            this.L$0 = objectRef3;
            this.L$1 = objectRef3;
            this.label = 1;
            Object h4 = i.h(c4, unbindViewModle$sendUnbindThridPart$job$1$invokeSuspend$$inlined$apiCall$1, this);
            if (h4 == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef3;
            obj = h4;
            objectRef2 = objectRef;
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            objectRef = (Ref.ObjectRef) this.L$1;
            objectRef2 = (Ref.ObjectRef) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        objectRef.element = (ResponseModel) obj;
        k.f(v1.f72528a, g1.e(), null, new AnonymousClass1(objectRef2, null), 2, null);
        return Unit.INSTANCE;
    }
}
