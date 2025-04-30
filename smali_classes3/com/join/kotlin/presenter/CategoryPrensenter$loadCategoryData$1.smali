.class public final Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;
.super Ljava/lang/Object;
.source "CategoryPrensenter.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/presenter/CategoryPrensenter;->loadCategoryData(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V
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
        "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
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
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J0\u0010\t\u001a\u00020\u00082\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0006H\u0016J$\u0010\u000c\u001a\u00020\u00082\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1",
        "Lretrofit2/Callback;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
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
.field final synthetic $arg:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

.field final synthetic this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/presenter/CategoryPrensenter;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    iput-object p2, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->$arg:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

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
            "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
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
    iget-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/presenter/view/CategoryView;

    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    invoke-interface {p1, v0}, Lcom/psk/kotlin/base/presenter/view/BaseView;->onError(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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
            "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
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

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "response.body()!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p1

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/presenter/view/CategoryView;

    invoke-interface {p1}, Lcom/psk/kotlin/base/presenter/view/BaseView;->hidLoading()V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/presenter/view/CategoryView;

    iget-object v1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->$arg:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->getPage()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "response.body()!!.data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;

    invoke-interface {p1, v1, p2}, Lcom/join/kotlin/presenter/view/CategoryView;->onLoadDataSuccess(ILcom/join/kotlin/ui/findgame/data/CategoryListMain;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/presenter/view/CategoryView;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "response.body()!!.message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/psk/kotlin/base/presenter/view/BaseView;->onError(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/presenter/CategoryPrensenter$loadCategoryData$1;->this$0:Lcom/join/kotlin/presenter/CategoryPrensenter;

    invoke-virtual {p1}, Lcom/join/kotlin/presenter/BasePresenter;->getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/presenter/view/CategoryView;

    const-string p2, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    invoke-interface {p1, p2}, Lcom/psk/kotlin/base/presenter/view/BaseView;->onError(Ljava/lang/String;)V

    return-void
.end method
