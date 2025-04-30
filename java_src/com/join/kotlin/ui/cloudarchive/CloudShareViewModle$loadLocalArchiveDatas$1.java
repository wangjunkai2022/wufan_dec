package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
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
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CloudShareViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1", f = "CloudShareViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CloudShareViewModle$loadLocalArchiveDatas$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    int label;
    final /* synthetic */ CloudShareViewModle this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CloudShareViewModle.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
    @DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1$1", f = "CloudShareViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef $archiveList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef objectRef, Continuation continuation) {
            super(2, continuation);
            this.$archiveList = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            return new AnonymousClass1(this.$archiveList, completion);
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
                CloudShareViewModle$loadLocalArchiveDatas$1.this.this$0.setInitFinish(true);
                List<ArchiveData> value = CloudShareViewModle$loadLocalArchiveDatas$1.this.this$0.getLocalArchiveLists().getValue();
                if (value != null) {
                    value.clear();
                }
                List<ArchiveData> value2 = CloudShareViewModle$loadLocalArchiveDatas$1.this.this$0.getLocalArchiveLists().getValue();
                if (value2 != null) {
                    Boxing.boxBoolean(value2.addAll((List) this.$archiveList.element));
                }
                CloudShareViewModle$loadLocalArchiveDatas$1.this.this$0.getLocalArchiveLists().setValue(CloudShareViewModle$loadLocalArchiveDatas$1.this.this$0.getLocalArchiveLists().getValue());
                CloudShareViewModle$loadLocalArchiveDatas$1.this.this$0.getShowDialog().setValue(Boxing.boxBoolean(false));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudShareViewModle$loadLocalArchiveDatas$1(CloudShareViewModle cloudShareViewModle, Context context, Continuation continuation) {
        super(2, continuation);
        this.this$0 = cloudShareViewModle;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new CloudShareViewModle$loadLocalArchiveDatas$1(this.this$0, this.$context, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((CloudShareViewModle$loadLocalArchiveDatas$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b4  */
    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r9.label
            if (r0 != 0) goto Lea
            kotlin.ResultKt.throwOnFailure(r10)
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r10.element = r0
            com.join.mgps.va.overmind.e$a r0 = com.join.mgps.va.overmind.e.f52358n
            com.join.mgps.va.overmind.e r1 = r0.b()
            com.join.kotlin.ui.cloudarchive.CloudShareViewModle r2 = r9.this$0
            com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData r2 = r2.getModGameArchivePathData()
            java.lang.String r2 = r2.getModPackageName()
            boolean r1 = r1.M(r2)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L92
            com.join.kotlin.ui.cloudarchive.CloudShareViewModle r1 = r9.this$0
            r1.setInstallInExtPlug(r3)
            com.join.mgps.va.overmind.e r0 = r0.b()
            boolean r0 = r0.J()
            if (r0 == 0) goto L92
            com.join.kotlin.ui.cloudarchive.CloudShareViewModle r0 = r9.this$0
            com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData r1 = r0.getModGameArchivePathData()
            com.join.kotlin.ui.cloudarchive.CloudShareViewModle r4 = r9.this$0
            com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData r4 = r4.getModGameArchivePathData()
            java.lang.String r4 = r4.getMainArchiveLocalPath()
            java.lang.String r5 = "modGameArchivePathData.mainArchiveLocalPath"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            android.content.Context r5 = r9.$context
            T r6 = r10.element
            java.util.List r6 = (java.util.List) r6
            r0.loadLocalExtArchiveMain(r1, r4, r5, r6)
            com.join.kotlin.ui.cloudarchive.CloudShareViewModle r0 = r9.this$0
            com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData r0 = r0.getModGameArchivePathData()
            java.lang.String r0 = r0.getSubArchiveLocalPath()
            java.lang.String r1 = "modGameArchivePathData.subArchiveLocalPath"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            int r0 = r0.length()
            if (r0 <= 0) goto L72
            r0 = 1
            goto L73
        L72:
            r0 = 0
        L73:
            if (r0 == 0) goto L93
            com.join.kotlin.ui.cloudarchive.CloudShareViewModle r0 = r9.this$0
            com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData r4 = r0.getModGameArchivePathData()
            com.join.kotlin.ui.cloudarchive.CloudShareViewModle r5 = r9.this$0
            com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData r5 = r5.getModGameArchivePathData()
            java.lang.String r5 = r5.getSubArchiveLocalPath()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r1)
            android.content.Context r1 = r9.$context
            T r6 = r10.element
            java.util.List r6 = (java.util.List) r6
            r0.loadLocalExtArchiveMain(r4, r5, r1, r6)
            goto L93
        L92:
            r3 = 0
        L93:
            if (r3 != 0) goto La6
            T r0 = r10.element
            java.util.List r0 = (java.util.List) r0
            com.join.kotlin.ui.cloudarchive.CloudShareViewModle r1 = r9.this$0
            com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData r3 = r1.getModGameArchivePathData()
            java.util.List r1 = r1.loadLocalArchive(r3)
            r0.addAll(r1)
        La6:
            T r0 = r10.element
            java.util.List r0 = (java.util.List) r0
            java.util.Iterator r0 = r0.iterator()
        Lae:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Ld5
            java.lang.Object r1 = r0.next()
            com.join.kotlin.ui.cloudarchive.data.ArchiveData r1 = (com.join.kotlin.ui.cloudarchive.data.ArchiveData) r1
            if (r2 == 0) goto Ld2
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = r1.getArchiveDesc()
            r3.append(r4)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            r1.setArchiveDesc(r3)
        Ld2:
            int r2 = r2 + 1
            goto Lae
        Ld5:
            kotlinx.coroutines.v1 r3 = kotlinx.coroutines.v1.f72528a
            kotlinx.coroutines.m2 r4 = kotlinx.coroutines.g1.e()
            r5 = 0
            com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1$1 r6 = new com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1$1
            r0 = 0
            r6.<init>(r10, r0)
            r7 = 2
            r8 = 0
            kotlinx.coroutines.i.e(r3, r4, r5, r6, r7, r8)
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        Lea:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            goto Lf3
        Lf2:
            throw r10
        Lf3:
            goto Lf2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
