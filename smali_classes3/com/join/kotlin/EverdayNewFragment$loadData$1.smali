.class public final Lcom/join/kotlin/EverdayNewFragment$loadData$1;
.super Ljava/lang/Object;
.source "EverdayNewFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/EverdayNewFragment;->loadData(I)V
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
        "Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;",
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
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J$\u0010\t\u001a\u00020\u00082\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J0\u0010\u000c\u001a\u00020\u00082\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\nH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/join/kotlin/EverdayNewFragment$loadData$1",
        "Lretrofit2/Callback;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;",
        "Lretrofit2/Call;",
        "call",
        "",
        "t",
        "",
        "onFailure",
        "Lretrofit2/Response;",
        "responsex",
        "onResponse",
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
.field final synthetic $page:I

.field final synthetic this$0:Lcom/join/kotlin/EverdayNewFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/EverdayNewFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    iput p2, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->$page:I

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
            "Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;",
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
            "Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "responsex"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;

    .line 4
    iget-object p2, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    invoke-virtual {p2}, Lcom/join/kotlin/EverdayNewFragment;->hidLoading()V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    iget v0, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->$page:I

    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;->getGame_list()Ljava/util/List;

    move-result-object p1

    const-string v1, "data.game_list"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lcom/join/kotlin/EverdayNewFragment;->loadFinish(ILjava/util/List;)V

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/me;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/me;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/me;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/me;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/me;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/me;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    .line 10
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment;->hidLoading()V

    return-void
.end method
