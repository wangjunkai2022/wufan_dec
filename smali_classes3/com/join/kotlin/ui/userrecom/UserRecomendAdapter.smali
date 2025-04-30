.class public final Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;
.super Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.source "UserRecomendAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Lcom/join/android/app/mgsim/wufun/databinding/fd0;",
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\"\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Lcom/join/android/app/mgsim/wufun/databinding/fd0;",
        "",
        "viewType",
        "getLayoutResId",
        "binding",
        "item",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "",
        "onBindItem",
        "onBindItemPayloads",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId(I)I
    .locals 0

    const p1, 0x7f0c05cf

    return p1
.end method

.method public bridge synthetic onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;->onBindItem(Lcom/join/android/app/mgsim/wufun/databinding/fd0;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItem(Lcom/join/android/app/mgsim/wufun/databinding/fd0;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/fd0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/psk/kotlin/util/CommonListMainData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "binding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->h1(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 3
    new-instance p3, Lcom/join/kotlin/domain/common/AppListItemShowBean;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Lcom/join/kotlin/domain/common/AppListItemShowBean;-><init>(Lcom/join/mgps/business/CollectionBeanSubBusiness;Z)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->i1(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

    return-void
.end method

.method public bridge synthetic onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/fd0;

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;->onBindItemPayloads(Lcom/join/android/app/mgsim/wufun/databinding/fd0;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItemPayloads(Lcom/join/android/app/mgsim/wufun/databinding/fd0;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/fd0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/psk/kotlin/util/CommonListMainData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "binding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->h1(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 3
    new-instance p3, Lcom/join/kotlin/domain/common/AppListItemShowBean;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    const/4 v0, 0x1

    invoke-direct {p3, p2, v0}, Lcom/join/kotlin/domain/common/AppListItemShowBean;-><init>(Lcom/join/mgps/business/CollectionBeanSubBusiness;Z)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/fd0;->i1(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

    return-void
.end method
