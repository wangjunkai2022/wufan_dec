.class public final Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;
.super Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.source "MustpalyAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
        "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;",
        "Lcom/join/android/app/mgsim/wufun/databinding/g40;",
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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\"\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014R\u0019\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;",
        "Lcom/join/android/app/mgsim/wufun/databinding/g40;",
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
        "Lcom/join/android/app/component/video/c;",
        "videoHelper",
        "Lcom/join/android/app/component/video/c;",
        "getVideoHelper",
        "()Lcom/join/android/app/component/video/c;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V",
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
.field private final videoHelper:Lcom/join/android/app/component/video/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/component/video/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    return-void
.end method


# virtual methods
.method protected getLayoutResId(I)I
    .locals 0

    const p1, 0x7f0c04bb

    return p1
.end method

.method public final getVideoHelper()Lcom/join/android/app/component/video/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    return-object v0
.end method

.method public bridge synthetic onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/g40;

    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->onBindItem(Lcom/join/android/app/mgsim/wufun/databinding/g40;Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItem(Lcom/join/android/app/mgsim/wufun/databinding/g40;Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/g40;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;
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
    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/g40;->i1(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V

    .line 3
    new-instance p3, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getPosition()I

    move-result v0

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getVideoCover()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, v1, v2, p2}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;-><init>(ILjava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/g40;->j1(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    .line 4
    iget-object p2, p0, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/g40;->k1(Lcom/join/android/app/component/video/c;)V

    return-void
.end method

.method public bridge synthetic onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/g40;

    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->onBindItemPayloads(Lcom/join/android/app/mgsim/wufun/databinding/g40;Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItemPayloads(Lcom/join/android/app/mgsim/wufun/databinding/g40;Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/g40;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;
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
    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/g40;->i1(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V

    .line 3
    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/g40;->k1(Lcom/join/android/app/component/video/c;)V

    .line 4
    new-instance p3, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getPosition()I

    move-result v0

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getVideoCover()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, v1, v2, p2}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;-><init>(ILjava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/g40;->j1(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    return-void
.end method
