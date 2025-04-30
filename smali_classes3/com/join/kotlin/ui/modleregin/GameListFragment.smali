.class public final Lcom/join/kotlin/ui/modleregin/GameListFragment;
.super Landroidx/fragment/app/Fragment;
.source "GameListFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008!\u0010\"J&\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016R\u001d\u0010\u000f\u001a\u00020\n8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u00108F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u00020\u00158F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/join/kotlin/ui/modleregin/GameListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;",
        "viewModelMain$delegate",
        "Lkotlin/Lazy;",
        "getViewModelMain",
        "()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;",
        "viewModelMain",
        "Lcom/join/kotlin/ui/modleregin/adapter/GamelistAdapter;",
        "adapter$delegate",
        "getAdapter",
        "()Lcom/join/kotlin/ui/modleregin/adapter/GamelistAdapter;",
        "adapter",
        "Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;",
        "viewModle$delegate",
        "getViewModle",
        "()Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;",
        "viewModle",
        "Lcom/join/android/app/mgsim/wufun/databinding/z8;",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/z8;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/z8;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/z8;)V",
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
.field private final adapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z8;

.field private final viewModelMain$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/modleregin/GameListFragment$viewModle$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/modleregin/GameListFragment$viewModle$2;-><init>(Lcom/join/kotlin/ui/modleregin/GameListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->viewModle$delegate:Lkotlin/Lazy;

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/modleregin/GameListFragment$viewModelMain$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/modleregin/GameListFragment$viewModelMain$2;-><init>(Lcom/join/kotlin/ui/modleregin/GameListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->viewModelMain$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Lcom/join/kotlin/ui/modleregin/GameListFragment$adapter$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/modleregin/GameListFragment$adapter$2;-><init>(Lcom/join/kotlin/ui/modleregin/GameListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/join/kotlin/ui/modleregin/adapter/GamelistAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/modleregin/adapter/GamelistAdapter;

    return-object v0
.end method

.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/z8;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z8;

    if-nez v0, :cond_0

    const-string v1, "dataBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModelMain()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->viewModelMain$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    return-object v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->viewModle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c011a

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026          false\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/z8;

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z8;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "time"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/GameListFragment;->getViewModelMain()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getListBtOnlineGame()Ljava/util/List;

    move-result-object p3

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-nez p3, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/GameListFragment;->getViewModle()Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;

    move-result-object p3

    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/GameListFragment;->getViewModelMain()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getListBtOnlineGame()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2, p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;->showGameList(Ljava/util/List;J)V

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/GameListFragment;->getAdapter()Lcom/join/kotlin/ui/modleregin/adapter/GamelistAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z8;

    const-string p2, "dataBinding"

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/z8;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z8;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const/16 p3, 0x1b

    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/GameListFragment;->getViewModle()Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z8;

    if-nez p1, :cond_5

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/GameListFragment;->getAdapter()Lcom/join/kotlin/ui/modleregin/adapter/GamelistAdapter;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z8;

    if-nez p1, :cond_6

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/z8;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/z8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/GameListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/z8;

    return-void
.end method
