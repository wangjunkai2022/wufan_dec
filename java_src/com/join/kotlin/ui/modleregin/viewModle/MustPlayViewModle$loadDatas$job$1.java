package com.join.kotlin.ui.modleregin.viewModle;

import android.content.Context;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.MustplayItemNetBean;
import com.join.mgps.Util.i2;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.ResponseModel;
import java.util.List;
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
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.i;
import kotlinx.coroutines.k;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MustPlayViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.join.kotlin.ui.modleregin.viewModle.MustPlayViewModle$loadDatas$job$1", f = "MustPlayViewModle.kt", i = {}, l = {138}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class MustPlayViewModle$loadDatas$job$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ Ref.ObjectRef $requestModel;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ MustPlayViewModle this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MustPlayViewModle.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
    @DebugMetadata(c = "com.join.kotlin.ui.modleregin.viewModle.MustPlayViewModle$loadDatas$job$1$1", f = "MustPlayViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.join.kotlin.ui.modleregin.viewModle.MustPlayViewModle$loadDatas$job$1$1  reason: invalid class name */
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
            List split$default;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                int i2 = 1;
                if (((ResponseModel) this.$result.element).getCode() == 200) {
                    if (MustPlayViewModle$loadDatas$job$1.this.this$0.getPage() == 1) {
                        List<MustplayItemBean> value = MustPlayViewModle$loadDatas$job$1.this.this$0.getShowDatas().getValue();
                        Intrinsics.checkNotNull(value);
                        value.clear();
                    }
                    List<MustplayItemBean> value2 = MustPlayViewModle$loadDatas$job$1.this.this$0.getShowDatas().getValue();
                    Intrinsics.checkNotNull(value2);
                    int size = value2.size();
                    if (((ResponseModel) this.$result.element).getData() != null && !((List) ((ResponseModel) this.$result.element).getData()).isEmpty()) {
                        int i4 = 0;
                        Object data = ((ResponseModel) this.$result.element).getData();
                        Intrinsics.checkNotNullExpressionValue(data, "result.data");
                        for (MustplayItemNetBean mustplayItemNetBean : (Iterable) data) {
                            CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(mustplayItemNetBean.getGameInfo());
                            collectionBeanSubBusiness.set_from(145);
                            collectionBeanSubBusiness.set_from_type(145);
                            collectionBeanSubBusiness.setRecPosition(String.valueOf(collectionBeanSubBusiness.getIndex()));
                            MustPlayViewModle$loadDatas$job$1.this.this$0.updateDowState(collectionBeanSubBusiness);
                            String gameVideo = mustplayItemNetBean.getGameVideo();
                            String gameImg = mustplayItemNetBean.getGameImg();
                            String game_info_top_video_url = collectionBeanSubBusiness.getGame_info_top_video_url();
                            split$default = StringsKt__StringsKt.split$default((CharSequence) mustplayItemNetBean.getGameTags(), new String[]{"|"}, false, 0, 6, (Object) null);
                            MustplayItemBean mustplayItemBean = new MustplayItemBean(i4 + size, gameVideo, gameImg, game_info_top_video_url, split$default, mustplayItemNetBean.getGameName(), mustplayItemNetBean.getGameTitle(), collectionBeanSubBusiness, null, null, 768, null);
                            List<MustplayItemBean> value3 = MustPlayViewModle$loadDatas$job$1.this.this$0.getShowDatas().getValue();
                            Intrinsics.checkNotNull(value3);
                            value3.add(mustplayItemBean);
                            i2 = 1;
                            i4++;
                        }
                        MustPlayViewModle mustPlayViewModle = MustPlayViewModle$loadDatas$job$1.this.this$0;
                        mustPlayViewModle.setPage(mustPlayViewModle.getPage() + i2);
                        MustPlayViewModle$loadDatas$job$1.this.this$0.getRecycleViewStatus().setValue(Boxing.boxInt(2));
                        MustPlayViewModle$loadDatas$job$1.this.this$0.getShowDatas().setValue(MustPlayViewModle$loadDatas$job$1.this.this$0.getShowDatas().getValue());
                    } else {
                        MustPlayViewModle$loadDatas$job$1.this.this$0.getRecycleViewStatus().setValue(Boxing.boxInt(4));
                    }
                } else {
                    i2.a(MustPlayViewModle$loadDatas$job$1.this.$context).b(((ResponseModel) this.$result.element).getMessage());
                }
                List<MustplayItemBean> value4 = MustPlayViewModle$loadDatas$job$1.this.this$0.getShowDatas().getValue();
                Intrinsics.checkNotNull(value4);
                if (value4.size() > 0) {
                    MustPlayViewModle$loadDatas$job$1.this.this$0.getLoadBindData().setValue(new LoadBindindData(1));
                } else {
                    MustPlayViewModle$loadDatas$job$1.this.this$0.getLoadBindData().setValue(new LoadBindindData(3));
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MustPlayViewModle$loadDatas$job$1(MustPlayViewModle mustPlayViewModle, Ref.ObjectRef objectRef, Context context, Continuation continuation) {
        super(2, continuation);
        this.this$0 = mustPlayViewModle;
        this.$requestModel = objectRef;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new MustPlayViewModle$loadDatas$job$1(this.this$0, this.$requestModel, this.$context, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((MustPlayViewModle$loadDatas$job$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
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
            MustPlayViewModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1 mustPlayViewModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1 = new MustPlayViewModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1(null, this);
            this.L$0 = objectRef3;
            this.L$1 = objectRef3;
            this.label = 1;
            Object h4 = i.h(c4, mustPlayViewModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1, this);
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
