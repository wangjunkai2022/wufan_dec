.class public final Lcom/join/kotlin/domain/request/CouponRequest;
.super Ljava/lang/Object;
.source "CouponRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0014\u0010\u0007\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\u0008\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004R.\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\n0\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R0\u0010\u0013\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\n\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R.\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\n0\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u000c\u001a\u0004\u0008\u001a\u0010\u000e\"\u0004\u0008\u001b\u0010\u0010R0\u0010\u001c\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\n\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0014\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018\u00a8\u0006!"
    }
    d2 = {
        "Lcom/join/kotlin/domain/request/CouponRequest;",
        "",
        "",
        "cancelGetCoupon",
        "Lcom/join/mgps/dto/RequestModel;",
        "Lcom/join/kotlin/ui/coupon/CouponRequest;",
        "request",
        "requestCouponGet",
        "requestCouponListData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "resultData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getResultData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setResultData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "Lretrofit2/Call;",
        "Lcom/join/kotlin/ui/coupon/CouponListMainData;",
        "callCouponList",
        "Lretrofit2/Call;",
        "getCallCouponList",
        "()Lretrofit2/Call;",
        "setCallCouponList",
        "(Lretrofit2/Call;)V",
        "resultCouponListData",
        "getResultCouponListData",
        "setResultCouponListData",
        "callCoupon",
        "getCallCoupon",
        "setCallCoupon",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private callCoupon:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private callCouponList:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/CouponListMainData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resultCouponListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/CouponListMainData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/domain/request/CouponRequest;->resultData:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/domain/request/CouponRequest;->resultCouponListData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private final cancelGetCoupon()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/request/CouponRequest;->callCoupon:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/domain/request/CouponRequest;->callCoupon:Lretrofit2/Call;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCallCoupon()Lretrofit2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/request/CouponRequest;->callCoupon:Lretrofit2/Call;

    return-object v0
.end method

.method public final getCallCouponList()Lretrofit2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/CouponListMainData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/request/CouponRequest;->callCouponList:Lretrofit2/Call;

    return-object v0
.end method

.method public final getResultCouponListData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/CouponListMainData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/request/CouponRequest;->resultCouponListData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getResultData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/request/CouponRequest;->resultData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final requestCouponGet(Lcom/join/mgps/dto/RequestModel;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/coupon/CouponRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    const-string v1, "RpcGameClientImpl.newInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lq1/h;->E0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/domain/request/CouponRequest;->callCoupon:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/kotlin/domain/request/CouponRequest$requestCouponGet$1;

    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/domain/request/CouponRequest$requestCouponGet$1;-><init>(Lcom/join/kotlin/domain/request/CouponRequest;Lcom/join/mgps/dto/RequestModel;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public final requestCouponListData(Lcom/join/mgps/dto/RequestModel;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/coupon/CouponRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    const-string v1, "RpcGameClientImpl.newInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p1

    invoke-interface {v0, p1}, Lq1/h;->p0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/domain/request/CouponRequest;->callCouponList:Lretrofit2/Call;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/join/kotlin/domain/request/CouponRequest$requestCouponListData$1;

    invoke-direct {v0, p0}, Lcom/join/kotlin/domain/request/CouponRequest$requestCouponListData$1;-><init>(Lcom/join/kotlin/domain/request/CouponRequest;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public final setCallCoupon(Lretrofit2/Call;)V
    .locals 0
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/request/CouponRequest;->callCoupon:Lretrofit2/Call;

    return-void
.end method

.method public final setCallCouponList(Lretrofit2/Call;)V
    .locals 0
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/CouponListMainData;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/request/CouponRequest;->callCouponList:Lretrofit2/Call;

    return-void
.end method

.method public final setResultCouponListData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/CouponListMainData;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/request/CouponRequest;->resultCouponListData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setResultData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/request/CouponRequest;->resultData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
