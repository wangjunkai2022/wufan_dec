.class public final Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onCreate$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MustPalyReginActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0004H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/join/kotlin/ui/modleregin/MustPalyReginActivity$onCreate$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "dx",
        "dy",
        "",
        "onScrolled",
        "newState",
        "onScrollStateChanged",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onCreate$1;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onCreate$1;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->j(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onCreate$1;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/i40;

    move-result-object p2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/i40;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const-string p3, "dataBinding.recycleView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onCreate$1;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    move-result-object v0

    sub-int/2addr p2, p3

    .line 6
    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onCreate$1;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 7
    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/join/android/app/component/video/c;->f(Landroidx/recyclerview/widget/RecyclerView;III)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
