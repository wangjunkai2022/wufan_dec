.class public final Lcom/join/kotlin/domain/request/CouponRequest$requestCouponGet$1;
.super Ljava/lang/Object;
.source "CouponRequest.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/domain/request/CouponRequest;->requestCouponGet(Lcom/join/mgps/dto/RequestModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J0\u0010\t\u001a\u00020\u00082\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0006H\u0016J$\u0010\u000c\u001a\u00020\u00082\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/join/kotlin/domain/request/CouponRequest$requestCouponGet$1",
        "Lretrofit2/Callback;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "",
        "Lretrofit2/Call;",
        "call",
        "Lretrofit2/Response;",
        "response",
        "",
        "onResponse",
        "",
        "t",
        "onFailure",
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
.field final synthetic $request:Lcom/join/mgps/dto/RequestModel;

.field final synthetic this$0:Lcom/join/kotlin/domain/request/CouponRequest;


# direct methods
.method constructor <init>(Lcom/join/kotlin/domain/request/CouponRequest;Lcom/join/mgps/dto/RequestModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/request/CouponRequest$requestCouponGet$1;->this$0:Lcom/join/kotlin/domain/request/CouponRequest;

    iput-object p2, p0, Lcom/join/kotlin/domain/request/CouponRequest$requestCouponGet$1;->$request:Lcom/join/mgps/dto/RequestModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-direct {p1}, Lcom/join/mgps/dto/ResponseModel;-><init>()V

    const/16 p2, 0x191

    .line 2
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ResponseModel;->setCode(I)V

    .line 3
    iget-object p2, p0, Lcom/join/kotlin/domain/request/CouponRequest$requestCouponGet$1;->this$0:Lcom/join/kotlin/domain/request/CouponRequest;

    invoke-virtual {p2}, Lcom/join/kotlin/domain/request/CouponRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/join/kotlin/domain/request/CouponRequest$requestCouponGet$1;->$request:Lcom/join/mgps/dto/RequestModel;

    invoke-virtual {p2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ResponseModel;->setData(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/join/kotlin/domain/request/CouponRequest$requestCouponGet$1;->this$0:Lcom/join/kotlin/domain/request/CouponRequest;

    invoke-virtual {p2}, Lcom/join/kotlin/domain/request/CouponRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-direct {p1}, Lcom/join/mgps/dto/ResponseModel;-><init>()V

    const/16 p2, 0x191

    .line 6
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ResponseModel;->setCode(I)V

    .line 7
    iget-object p2, p0, Lcom/join/kotlin/domain/request/CouponRequest$requestCouponGet$1;->this$0:Lcom/join/kotlin/domain/request/CouponRequest;

    invoke-virtual {p2}, Lcom/join/kotlin/domain/request/CouponRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
