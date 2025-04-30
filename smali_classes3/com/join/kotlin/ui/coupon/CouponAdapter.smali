.class public final Lcom/join/kotlin/ui/coupon/CouponAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CouponAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/kotlin/ui/coupon/CouponViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008#\u0010$J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0014\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J\u0018\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016R\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR(\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Lcom/join/kotlin/ui/coupon/CouponAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/join/kotlin/ui/coupon/CouponViewHolder;",
        "Landroid/view/ViewGroup;",
        "p0",
        "",
        "p1",
        "onCreateViewHolder",
        "",
        "Lcom/join/mgps/dto/BTGameCouponBean;",
        "list",
        "",
        "submitList",
        "onBindViewHolder",
        "getItemCount",
        "Lcom/join/kotlin/ui/coupon/ClickProxy;",
        "clickProxy",
        "Lcom/join/kotlin/ui/coupon/ClickProxy;",
        "getClickProxy",
        "()Lcom/join/kotlin/ui/coupon/ClickProxy;",
        "setClickProxy",
        "(Lcom/join/kotlin/ui/coupon/ClickProxy;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "listDatas",
        "Ljava/util/List;",
        "getListDatas",
        "()Ljava/util/List;",
        "setListDatas",
        "(Ljava/util/List;)V",
        "<init>",
        "(Landroid/content/Context;Lcom/join/kotlin/ui/coupon/ClickProxy;)V",
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
.field private clickProxy:Lcom/join/kotlin/ui/coupon/ClickProxy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public listDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/kotlin/ui/coupon/ClickProxy;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/coupon/ClickProxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickProxy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->clickProxy:Lcom/join/kotlin/ui/coupon/ClickProxy;

    return-void
.end method


# virtual methods
.method public final getClickProxy()Lcom/join/kotlin/ui/coupon/ClickProxy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->clickProxy:Lcom/join/kotlin/ui/coupon/ClickProxy;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->listDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "listDatas"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getListDatas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->listDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "listDatas"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/kotlin/ui/coupon/CouponViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/coupon/CouponAdapter;->onBindViewHolder(Lcom/join/kotlin/ui/coupon/CouponViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/join/kotlin/ui/coupon/CouponViewHolder;I)V
    .locals 2
    .param p1    # Lcom/join/kotlin/ui/coupon/CouponViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponViewHolder;->getItem()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/p8;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->listDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "listDatas"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/BTGameCouponBean;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/p8;->i1(Lcom/join/mgps/dto/BTGameCouponBean;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/coupon/CouponAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/kotlin/ui/coupon/CouponViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/kotlin/ui/coupon/CouponViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "p0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0111

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/p8;

    const-string p2, "databinfding"

    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->clickProxy:Lcom/join/kotlin/ui/coupon/ClickProxy;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/p8;->j1(Lcom/join/kotlin/ui/coupon/ClickProxy;)V

    .line 4
    new-instance p2, Lcom/join/kotlin/ui/coupon/CouponViewHolder;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "databinfding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/coupon/CouponViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setClickProxy(Lcom/join/kotlin/ui/coupon/ClickProxy;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/coupon/ClickProxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->clickProxy:Lcom/join/kotlin/ui/coupon/ClickProxy;

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final setListDatas(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->listDatas:Ljava/util/List;

    return-void
.end method

.method public final submitList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponAdapter;->listDatas:Ljava/util/List;

    return-void
.end method
