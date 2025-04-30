.class public final Lcom/join/kotlin/ui/coupon/CouponListActivity;
.super Lcom/BaseAppCompatActivity;
.source "CouponListActivity.kt"

# interfaces
.implements Lcom/join/kotlin/ui/coupon/ClickProxy;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008/\u00100J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\u0010\u001a\u00020\u0006H\u0016J\u0008\u0010\u0011\u001a\u00020\u0006H\u0016R\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR2\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u000b0 j\u0008\u0012\u0004\u0012\u00020\u000b`!8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u00061"
    }
    d2 = {
        "Lcom/join/kotlin/ui/coupon/CouponListActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Lcom/join/kotlin/ui/coupon/ClickProxy;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "",
        "page",
        "loadData",
        "Lcom/join/mgps/dto/BTGameCouponBean;",
        "data",
        "onClickGet",
        "onClickBack",
        "onClickMore",
        "onClickReload",
        "onClickSetNetWork",
        "Lcom/join/android/app/mgsim/wufun/databinding/p;",
        "viewdataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/p;",
        "getViewdataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/p;",
        "setViewdataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/p;)V",
        "Lcom/join/kotlin/ui/coupon/CouponViewModle;",
        "couponViewModle",
        "Lcom/join/kotlin/ui/coupon/CouponViewModle;",
        "getCouponViewModle",
        "()Lcom/join/kotlin/ui/coupon/CouponViewModle;",
        "setCouponViewModle",
        "(Lcom/join/kotlin/ui/coupon/CouponViewModle;)V",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "datas",
        "Ljava/util/ArrayList;",
        "getDatas",
        "()Ljava/util/ArrayList;",
        "setDatas",
        "(Ljava/util/ArrayList;)V",
        "",
        "gameId",
        "Ljava/lang/String;",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
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
.field public couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

.field public datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;"
        }
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->gameId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    if-nez v0, :cond_0

    const-string v1, "couponViewModle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getDatas()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->datas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v1, "datas"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/p;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/p;

    if-nez v0, :cond_0

    const-string v1, "viewdataBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final loadData(I)V
    .locals 4

    const-string v0, "couponViewModle"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getLoadDataBinding()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    :cond_1
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {p1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    invoke-virtual {p1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 4
    new-instance v1, Lcom/join/kotlin/ui/coupon/CouponRequest;

    invoke-direct {v1}, Lcom/join/kotlin/ui/coupon/CouponRequest;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "gameId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/join/kotlin/ui/coupon/CouponRequest;->gameId:Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    const-string v3, "AccountUtil_.getInstance_(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/join/kotlin/ui/coupon/CouponRequest;->uid:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 8
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    if-nez v1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getRequest()Lcom/join/kotlin/domain/request/CouponRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/kotlin/domain/request/CouponRequest;->requestCouponListData(Lcom/join/mgps/dto/RequestModel;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->updateShowLoadUI(Z)V

    :goto_0
    return-void
.end method

.method public onClickBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClickGet(Lcom/join/mgps/dto/BTGameCouponBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/BTGameCouponBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/join/mgps/dialog/b;

    const v0, 0x7f120176

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->e(I)Lcom/join/mgps/dialog/b;

    move-result-object p1

    const-string v0, "\u63d0\u793a"

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    const-string v0, "\u8bf7\u6fc0\u6d3b\u6e38\u620f\uff0c\u5728\u6e38\u620f\u5185\u9886\u53d6"

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    const-string v0, "\u77e5\u9053\u4e86"

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onClickGet$1;

    invoke-direct {v0}, Lcom/join/kotlin/ui/coupon/CouponListActivity$onClickGet$1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onClickMore(Lcom/join/mgps/dto/BTGameCouponBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/BTGameCouponBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BTGameCouponBean;->isShowDetial()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/BTGameCouponBean;->setShowDetial(Z)V

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/p;

    if-nez p1, :cond_0

    const-string v0, "viewdataBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/p;->F:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "viewdataBinding.recycleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onClickReload()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->loadData(I)V

    return-void
.end method

.method public onClickSetNetWork()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002c

    .line 2
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026onlist_activity\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/p;

    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/p;

    .line 3
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 4
    new-instance v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    .line 5
    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 6
    const-class v0, Lcom/join/kotlin/ui/coupon/CouponViewModle;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    const-string v0, "ViewModelProvider(\n     \u2026ponViewModle::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/join/kotlin/ui/coupon/CouponViewModle;

    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/p;

    const-string v0, "viewdataBinding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    const-string v3, "couponViewModle"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v1, v2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/p;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x7

    invoke-virtual {p1, v1, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/p;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lcom/join/kotlin/ui/coupon/CouponAdapterv2;

    invoke-direct {v1, p0, p0}, Lcom/join/kotlin/ui/coupon/CouponAdapterv2;-><init>(Landroid/content/Context;Lcom/join/kotlin/ui/coupon/ClickProxy;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/p;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    const/16 v1, 0x13

    invoke-virtual {p1, v1, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/p;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "gameId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->gameId:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    if-nez p1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$1;-><init>(Lcom/join/kotlin/ui/coupon/CouponListActivity;)V

    .line 15
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->datas:Ljava/util/ArrayList;

    .line 17
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    if-nez p1, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->datas:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    const-string v1, "datas"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    if-nez p1, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getRequest()Lcom/join/kotlin/domain/request/CouponRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/domain/request/CouponRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$2;-><init>(Lcom/join/kotlin/ui/coupon/CouponListActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 19
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    if-nez p1, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getRequest()Lcom/join/kotlin/domain/request/CouponRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/domain/request/CouponRequest;->getResultCouponListData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$3;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$3;-><init>(Lcom/join/kotlin/ui/coupon/CouponListActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 20
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->loadData(I)V

    return-void
.end method

.method public final setCouponViewModle(Lcom/join/kotlin/ui/coupon/CouponViewModle;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/coupon/CouponViewModle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    return-void
.end method

.method public final setDatas(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->datas:Ljava/util/ArrayList;

    return-void
.end method

.method public final setGameId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->gameId:Ljava/lang/String;

    return-void
.end method

.method public final setViewdataBinding(Lcom/join/android/app/mgsim/wufun/databinding/p;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/p;

    return-void
.end method
