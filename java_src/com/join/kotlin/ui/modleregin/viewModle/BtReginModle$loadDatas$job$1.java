package com.join.kotlin.ui.modleregin.viewModle;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
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
/* compiled from: BtReginModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.join.kotlin.ui.modleregin.viewModle.BtReginModle$loadDatas$job$1", f = "BtReginModle.kt", i = {}, l = {TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class BtReginModle$loadDatas$job$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ Ref.ObjectRef $requestModel;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ BtReginModle this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BtReginModle.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
    @DebugMetadata(c = "com.join.kotlin.ui.modleregin.viewModle.BtReginModle$loadDatas$job$1$1", f = "BtReginModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.join.kotlin.ui.modleregin.viewModle.BtReginModle$loadDatas$job$1$1  reason: invalid class name */
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

        /* JADX WARN: Removed duplicated region for block: B:146:0x05f7  */
        /* JADX WARN: Removed duplicated region for block: B:209:0x0742 A[Catch: Exception -> 0x0631, TryCatch #4 {Exception -> 0x0631, blocks: (B:59:0x02b3, B:60:0x02c8, B:62:0x02ce, B:65:0x02d7, B:67:0x02e6, B:74:0x02f4, B:85:0x0323, B:87:0x032b, B:88:0x0342, B:77:0x02fe, B:81:0x0312, B:84:0x031c, B:91:0x0360, B:93:0x0370, B:94:0x0383, B:96:0x03c5, B:98:0x03cb, B:99:0x03cf, B:101:0x03d5, B:103:0x0400, B:104:0x041b, B:106:0x0421, B:108:0x0430, B:110:0x043a, B:112:0x0444, B:114:0x0450, B:116:0x045c, B:118:0x0468, B:120:0x0476, B:122:0x0484, B:124:0x0492, B:138:0x052b, B:140:0x0558, B:142:0x0581, B:143:0x05e3, B:152:0x0628, B:166:0x0653, B:169:0x0666, B:170:0x066b, B:172:0x0671, B:175:0x0682, B:177:0x068d, B:179:0x0693, B:181:0x06af, B:192:0x0707, B:201:0x0730, B:203:0x0736, B:209:0x0742, B:210:0x0755, B:212:0x075b, B:213:0x07a6), top: B:355:0x02b3 }] */
        /* JADX WARN: Removed duplicated region for block: B:215:0x07d3  */
        /* JADX WARN: Removed duplicated region for block: B:341:0x0d0a  */
        /* JADX WARN: Removed duplicated region for block: B:342:0x0d1c  */
        /* JADX WARN: Removed duplicated region for block: B:358:0x02f2 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0292 A[Catch: Exception -> 0x0602, TRY_LEAVE, TryCatch #2 {Exception -> 0x0602, blocks: (B:17:0x00de, B:18:0x00fb, B:20:0x0101, B:22:0x0110, B:24:0x011c, B:26:0x0126, B:28:0x0130, B:30:0x013a, B:32:0x0144, B:34:0x014e, B:36:0x0158, B:38:0x0162, B:42:0x0183, B:44:0x01cf, B:46:0x01f7, B:48:0x0267, B:49:0x027e, B:51:0x0286, B:57:0x0292, B:266:0x09eb, B:268:0x09f2, B:270:0x09f8, B:271:0x09ff, B:273:0x0a05, B:275:0x0a0d, B:276:0x0a10, B:221:0x07fd, B:223:0x0803, B:225:0x082c, B:226:0x0847, B:228:0x084d, B:230:0x085c, B:232:0x0868, B:234:0x0872, B:236:0x087c, B:238:0x0886, B:240:0x0894, B:242:0x08a2, B:244:0x08b0, B:246:0x08be, B:257:0x0902, B:259:0x093c, B:261:0x0966), top: B:352:0x00de }] */
        /* JADX WARN: Removed duplicated region for block: B:74:0x02f4 A[Catch: Exception -> 0x0631, TryCatch #4 {Exception -> 0x0631, blocks: (B:59:0x02b3, B:60:0x02c8, B:62:0x02ce, B:65:0x02d7, B:67:0x02e6, B:74:0x02f4, B:85:0x0323, B:87:0x032b, B:88:0x0342, B:77:0x02fe, B:81:0x0312, B:84:0x031c, B:91:0x0360, B:93:0x0370, B:94:0x0383, B:96:0x03c5, B:98:0x03cb, B:99:0x03cf, B:101:0x03d5, B:103:0x0400, B:104:0x041b, B:106:0x0421, B:108:0x0430, B:110:0x043a, B:112:0x0444, B:114:0x0450, B:116:0x045c, B:118:0x0468, B:120:0x0476, B:122:0x0484, B:124:0x0492, B:138:0x052b, B:140:0x0558, B:142:0x0581, B:143:0x05e3, B:152:0x0628, B:166:0x0653, B:169:0x0666, B:170:0x066b, B:172:0x0671, B:175:0x0682, B:177:0x068d, B:179:0x0693, B:181:0x06af, B:192:0x0707, B:201:0x0730, B:203:0x0736, B:209:0x0742, B:210:0x0755, B:212:0x075b, B:213:0x07a6), top: B:355:0x02b3 }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r51) {
            /*
                Method dump skipped, instructions count: 3387
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.modleregin.viewModle.BtReginModle$loadDatas$job$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BtReginModle$loadDatas$job$1(BtReginModle btReginModle, Ref.ObjectRef objectRef, Context context, Continuation continuation) {
        super(2, continuation);
        this.this$0 = btReginModle;
        this.$requestModel = objectRef;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new BtReginModle$loadDatas$job$1(this.this$0, this.$requestModel, this.$context, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((BtReginModle$loadDatas$job$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
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
            BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1 btReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1 = new BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1(null, this);
            this.L$0 = objectRef3;
            this.L$1 = objectRef3;
            this.label = 1;
            Object h4 = i.h(c4, btReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1, this);
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
