.class public final Lcom/join/kotlin/ui/modleregin/adapter/HTagAdapter;
.super Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.source "HTagAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
        "Lcom/join/mgps/dto/BannerBean;",
        "Landroidx/databinding/ViewDataBinding;",
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\"\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/kotlin/ui/modleregin/adapter/HTagAdapter;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "Lcom/join/mgps/dto/BannerBean;",
        "Landroidx/databinding/ViewDataBinding;",
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
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "<init>",
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
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/adapter/HTagAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/adapter/HTagAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getLayoutResId(I)I
    .locals 0

    const p1, 0x7f0c011c

    return p1
.end method

.method protected onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/BannerBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/BannerBean;
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

    const/16 p3, 0x9

    .line 2
    invoke-virtual {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->getListDatas()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/dto/BannerBean;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/d9;

    .line 5
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/d9;->F:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/join/kotlin/ui/modleregin/adapter/HTagAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07117e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/HTagAdapter;->onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/BannerBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/BannerBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/BannerBean;
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

    const/16 p3, 0x9

    .line 2
    invoke-virtual {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/HTagAdapter;->onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/BannerBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

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
    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/adapter/HTagAdapter;->context:Landroid/content/Context;

    return-void
.end method
