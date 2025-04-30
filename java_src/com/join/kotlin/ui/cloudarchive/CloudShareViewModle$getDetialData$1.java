package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import com.join.android.app.common.utils.f;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.RequestModGameArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
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
import kotlinx.coroutines.g1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CloudShareViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.CloudShareViewModle$getDetialData$1", f = "CloudShareViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CloudShareViewModle$getDetialData$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ String $gameId;
    int label;
    final /* synthetic */ CloudShareViewModle this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CloudShareViewModle.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
    @DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.CloudShareViewModle$getDetialData$1$1", f = "CloudShareViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.join.kotlin.ui.cloudarchive.CloudShareViewModle$getDetialData$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef $main;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef objectRef, Continuation continuation) {
            super(2, continuation);
            this.$main = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            return new AnonymousClass1(this.$main, completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            ModGameArchivePathData modGameArchivePathData;
            GamedetialModleFourBean main_game_info;
            GamedetialModleFourBean mod_game_info;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CloudShareViewModle$getDetialData$1.this.this$0.getShowDialog().setValue(Boxing.boxBoolean(false));
                CloudShareViewModle cloudShareViewModle = CloudShareViewModle$getDetialData$1.this.this$0;
                ModGameDetailBean modGameDetailBean = (ModGameDetailBean) ((ResponseModel) this.$main.element).getData();
                if (modGameDetailBean == null || (modGameArchivePathData = modGameDetailBean.getCloud_archive_local_path()) == null) {
                    modGameArchivePathData = new ModGameArchivePathData();
                }
                cloudShareViewModle.setModGameArchivePathData(modGameArchivePathData);
                ModGameArchivePathData modGameArchivePathData2 = CloudShareViewModle$getDetialData$1.this.this$0.getModGameArchivePathData();
                ModGameDetailBean modGameDetailBean2 = (ModGameDetailBean) ((ResponseModel) this.$main.element).getData();
                String str = null;
                modGameArchivePathData2.setModPackageName((modGameDetailBean2 == null || (mod_game_info = modGameDetailBean2.getMod_game_info()) == null) ? null : mod_game_info.getPackageName());
                ModGameArchivePathData modGameArchivePathData3 = CloudShareViewModle$getDetialData$1.this.this$0.getModGameArchivePathData();
                ModGameDetailBean modGameDetailBean3 = (ModGameDetailBean) ((ResponseModel) this.$main.element).getData();
                if (modGameDetailBean3 != null && (main_game_info = modGameDetailBean3.getMain_game_info()) != null) {
                    str = main_game_info.getPackageName();
                }
                modGameArchivePathData3.setMainGamePackageName(str);
                CloudShareViewModle$getDetialData$1 cloudShareViewModle$getDetialData$1 = CloudShareViewModle$getDetialData$1.this;
                cloudShareViewModle$getDetialData$1.this$0.loadLocalArchiveDatas(cloudShareViewModle$getDetialData$1.$context);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudShareViewModle$getDetialData$1(CloudShareViewModle cloudShareViewModle, Context context, String str, Continuation continuation) {
        super(2, continuation);
        this.this$0 = cloudShareViewModle;
        this.$context = context;
        this.$gameId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new CloudShareViewModle$getDetialData$1(this.this$0, this.$context, this.$gameId, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((CloudShareViewModle$getDetialData$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r10v13, types: [T, com.join.mgps.dto.ResponseModel] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            if (f.j(this.$context)) {
                try {
                    AccountUtil_ instance_ = AccountUtil_.getInstance_(this.$context);
                    Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
                    AccountBean accountData = instance_.getAccountData();
                    if (accountData == null) {
                        accountData = new AccountBean();
                    }
                    Ref.ObjectRef objectRef = new Ref.ObjectRef();
                    objectRef.element = null;
                    RequestModel<RequestModGameArgs> requestModel = new RequestModel<>();
                    RequestModGameArgs requestModGameArgs = new RequestModGameArgs();
                    requestModGameArgs.setUid(accountData.getUid());
                    requestModGameArgs.setUserToken(accountData.getToken());
                    requestModGameArgs.setGameId(this.$gameId);
                    requestModel.setArgs(requestModGameArgs);
                    requestModel.setDefault(this.$context);
                    ?? p3 = h.L().p(requestModel);
                    objectRef.element = p3;
                    if (((ResponseModel) p3) != null && ((ResponseModel) p3).getCode() == 200) {
                        k.f(v1.f72528a, g1.e(), null, new AnonymousClass1(objectRef, null), 2, null);
                        return Unit.INSTANCE;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            this.this$0.getShowDialog().postValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
