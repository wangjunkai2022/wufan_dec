package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.mgps.Util.c0;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.h;
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
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ModUploadArchiveViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1", f = "ModUploadArchiveViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ModUploadArchiveViewModle$updateArchiveMessage$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef $accountBean;
    final /* synthetic */ Ref.ObjectRef $archiveArgs;
    final /* synthetic */ Ref.ObjectRef $archiveData;
    final /* synthetic */ Ref.ObjectRef $chnalNmber;
    final /* synthetic */ Context $context;
    final /* synthetic */ RequestModel $requestModel;
    int label;
    final /* synthetic */ ModUploadArchiveViewModle this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ModUploadArchiveViewModle.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
    @DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$1", f = "ModUploadArchiveViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            return new AnonymousClass1(completion);
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
                h L = h.L();
                Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
                L.J().q0(ModUploadArchiveViewModle$updateArchiveMessage$1.this.$requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle.updateArchiveMessage.1.1.1
                    @Override // retrofit2.Callback
                    public void onFailure(@NotNull Call<ResponseModel<?>> call, @NotNull Throwable t3) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(t3, "t");
                        ResponseModel<?> responseModel = new ResponseModel<>();
                        responseModel.setCode(500);
                        responseModel.setMessage("异常");
                        ModUploadArchiveViewModle$updateArchiveMessage$1.this.this$0.getResponseReult().postValue(responseModel);
                    }

                    @Override // retrofit2.Callback
                    public void onResponse(@NotNull Call<ResponseModel<?>> call, @NotNull Response<ResponseModel<?>> response) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(response, "response");
                        ResponseModel<?> body = response.body();
                        if (body != null) {
                            ModUploadArchiveViewModle$updateArchiveMessage$1.this.this$0.getResponseReult().postValue(body);
                            if (body.getCode() == 200) {
                                c0.a().c(new ArchiveDownEvent(10, (ArchiveData) ModUploadArchiveViewModle$updateArchiveMessage$1.this.$archiveData.element));
                                return;
                            }
                            return;
                        }
                        ResponseModel<?> responseModel = new ResponseModel<>();
                        responseModel.setCode(500);
                        responseModel.setMessage("异常");
                        ModUploadArchiveViewModle$updateArchiveMessage$1.this.this$0.getResponseReult().postValue(responseModel);
                    }
                });
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModUploadArchiveViewModle$updateArchiveMessage$1(ModUploadArchiveViewModle modUploadArchiveViewModle, Context context, Ref.ObjectRef objectRef, RequestModel requestModel, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, Ref.ObjectRef objectRef4, Continuation continuation) {
        super(2, continuation);
        this.this$0 = modUploadArchiveViewModle;
        this.$context = context;
        this.$accountBean = objectRef;
        this.$requestModel = requestModel;
        this.$chnalNmber = objectRef2;
        this.$archiveArgs = objectRef3;
        this.$archiveData = objectRef4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new ModUploadArchiveViewModle$updateArchiveMessage$1(this.this$0, this.$context, this.$accountBean, this.$requestModel, this.$chnalNmber, this.$archiveArgs, this.$archiveData, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((ModUploadArchiveViewModle$updateArchiveMessage$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0022, code lost:
        if (r12 != true) goto L10;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            r11 = this;
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r11.label
            if (r0 != 0) goto Ld5
            kotlin.ResultKt.throwOnFailure(r12)
            com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle r12 = r11.this$0
            androidx.lifecycle.MutableLiveData r12 = r12.getImagepath()
            java.lang.Object r12 = r12.getValue()
            java.lang.String r12 = (java.lang.String) r12
            r0 = 0
            r1 = 0
            if (r12 == 0) goto L24
            r2 = 2
            java.lang.String r3 = "http"
            boolean r12 = kotlin.text.StringsKt.startsWith$default(r12, r3, r1, r2, r0)
            r2 = 1
            if (r12 == r2) goto Lc1
        L24:
            com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle r12 = r11.this$0
            android.content.Context r2 = r11.$context
            java.lang.String r4 = com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle.access$compressImage(r12, r2)
            com.join.android.app.common.http.h r3 = com.join.android.app.common.http.h.b()
            kotlin.jvm.internal.Ref$ObjectRef r12 = r11.$accountBean
            T r12 = r12.element
            com.join.mgps.dto.AccountBean r12 = (com.join.mgps.dto.AccountBean) r12
            java.lang.String r2 = "accountBean"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            int r12 = r12.getUid()
            java.lang.String r5 = java.lang.String.valueOf(r12)
            kotlin.jvm.internal.Ref$ObjectRef r12 = r11.$accountBean
            T r12 = r12.element
            com.join.mgps.dto.AccountBean r12 = (com.join.mgps.dto.AccountBean) r12
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            java.lang.String r6 = r12.getToken()
            com.join.mgps.dto.RequestModel r7 = r11.$requestModel
            kotlin.jvm.internal.Ref$ObjectRef r12 = r11.$chnalNmber
            T r12 = r12.element
            r8 = r12
            java.lang.String r8 = (java.lang.String) r8
            java.io.File r12 = new java.io.File
            r12.<init>(r4)
            java.lang.String r9 = r12.getName()
            com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$json$1 r10 = new com.join.android.app.common.http.g() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$json$1
                static {
                    /*
                        com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$json$1 r0 = new com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$json$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$json$1) com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$json$1.INSTANCE com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$json$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$json$1.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$json$1.<init>():void");
                }

                @Override // com.join.android.app.common.http.g
                public final void onRequestProgress(long r1, long r3, boolean r5, java.lang.String r6) {
                    /*
                        r0 = this;
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$json$1.onRequestProgress(long, long, boolean, java.lang.String):void");
                }
            }
            java.lang.String r12 = r3.f(r4, r5, r6, r7, r8, r9, r10)
            com.google.gson.JsonElement r12 = com.google.gson.JsonParser.parseString(r12)
            java.lang.String r2 = "JsonParser.parseString(json)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            com.google.gson.JsonObject r12 = r12.getAsJsonObject()
            if (r12 == 0) goto Lc1
            java.lang.String r2 = "code"
            com.google.gson.JsonElement r2 = r12.get(r2)
            if (r2 == 0) goto Lc1
            int r2 = r2.getAsInt()
            r3 = 200(0xc8, float:2.8E-43)
            if (r2 != r3) goto Lc1
            java.lang.String r2 = "data"
            com.google.gson.JsonElement r12 = r12.get(r2)
            java.lang.String r2 = "jsonObj.get(\"data\")"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            com.google.gson.JsonArray r12 = r12.getAsJsonArray()
            int r2 = r12.size()
            if (r2 <= 0) goto Lc1
            com.google.gson.JsonElement r12 = r12.get(r1)
            java.lang.String r1 = "array[0]"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r1)
            com.google.gson.JsonObject r12 = r12.getAsJsonObject()
            java.lang.String r1 = "remoteUrl"
            com.google.gson.JsonElement r12 = r12.get(r1)
            java.lang.String r1 = "objItem.get(\"remoteUrl\")"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r1)
            java.lang.String r12 = r12.getAsString()
            kotlin.jvm.internal.Ref$ObjectRef r1 = r11.$archiveArgs
            T r1 = r1.element
            com.join.kotlin.ui.cloudarchive.data.ArchiveArgs r1 = (com.join.kotlin.ui.cloudarchive.data.ArchiveArgs) r1
            r1.setCoverLocation(r12)
        Lc1:
            kotlinx.coroutines.v1 r2 = kotlinx.coroutines.v1.f72528a
            kotlinx.coroutines.m2 r3 = kotlinx.coroutines.g1.e()
            r4 = 0
            com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$1 r5 = new com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$1
            r5.<init>(r0)
            r6 = 2
            r7 = 0
            kotlinx.coroutines.i.e(r2, r3, r4, r5, r6, r7)
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        Ld5:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
