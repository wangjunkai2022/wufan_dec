.class public final Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;
.super Landroidx/fragment/app/Fragment;
.source "FindGameGamelistRankMainFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ&\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u001a\u0010\r\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "",
        "onDestroyView",
        "view",
        "onViewCreated",
        "Lcom/join/mgps/customview/d0;",
        "adapter",
        "Lcom/join/mgps/customview/d0;",
        "getAdapter",
        "()Lcom/join/mgps/customview/d0;",
        "setAdapter",
        "(Lcom/join/mgps/customview/d0;)V",
        "Lcom/join/android/app/mgsim/wufun/databinding/if;",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/if;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/if;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/if;)V",
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
.field public adapter:Lcom/join/mgps/customview/d0;

.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/if;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/join/mgps/customview/d0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->adapter:Lcom/join/mgps/customview/d0;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/if;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/if;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/if;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/if;

    move-result-object p1

    const-string p2, "FindgameGamelistrankfrag\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/if;

    const-string p1, "\u70ed\u95e8"

    const-string p2, "\u6700\u65b0"

    .line 2
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x1

    .line 4
    invoke-static {p3}, Lcom/join/mgps/fragment/j2;->W(I)Lcom/join/mgps/fragment/j2;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x2

    .line 5
    invoke-static {p3}, Lcom/join/mgps/fragment/j2;->W(I)Lcom/join/mgps/fragment/j2;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p3, Lcom/join/mgps/customview/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p3, v0, p2, p1}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object p3, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->adapter:Lcom/join/mgps/customview/d0;

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/if;

    const-string p2, "binding"

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/if;->c:Landroidx/viewpager/widget/ViewPager;

    const-string p3, "binding.viewPager"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->adapter:Lcom/join/mgps/customview/d0;

    const-string v0, "adapter"

    if-nez p3, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 8
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->adapter:Lcom/join/mgps/customview/d0;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/if;

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/if;->b:Lcom/join/mgps/customview/SlidingTabLayout6;

    iget-object p3, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/if;

    if-nez p3, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p3, p3, Lcom/join/android/app/mgsim/wufun/databinding/if;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 10
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/if;

    if-nez p1, :cond_5

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/if;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setAdapter(Lcom/join/mgps/customview/d0;)V
    .locals 1
    .param p1    # Lcom/join/mgps/customview/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->adapter:Lcom/join/mgps/customview/d0;

    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/if;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/if;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/if;

    return-void
.end method
