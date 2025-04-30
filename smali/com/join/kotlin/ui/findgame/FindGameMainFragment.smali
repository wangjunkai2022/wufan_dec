.class public final Lcom/join/kotlin/ui/findgame/FindGameMainFragment;
.super Landroidx/fragment/app/Fragment;
.source "FindGameMainFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J&\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u001a\u0010\r\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/FindGameMainFragment;",
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
        "",
        "hidden",
        "onHiddenChanged",
        "Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;",
        "event",
        "recivedIntentEvent",
        "Lcom/join/android/app/mgsim/wufun/databinding/hf;",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/hf;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/hf;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/hf;)V",
        "Lcom/join/mgps/customview/d0;",
        "adapter",
        "Lcom/join/mgps/customview/d0;",
        "getAdapter",
        "()Lcom/join/mgps/customview/d0;",
        "setAdapter",
        "(Lcom/join/mgps/customview/d0;)V",
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

.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;


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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->adapter:Lcom/join/mgps/customview/d0;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/hf;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/hf;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/hf;

    move-result-object p1

    const-string p2, "FindgameFragmentLayoutBi\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "binding"

    const/16 v1, 0x15

    if-lt p2, v1, :cond_1

    if-nez p1, :cond_0

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->c:Landroid/view/View;

    const-string p2, "binding.statubar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    const-string p1, "\u95ea\u73a9"

    const-string p2, "\u7cbe\u9009"

    const-string v1, "\u6392\u884c"

    const-string v2, "\u5206\u7c7b"

    const-string v3, "\u6e38\u620f\u5355"

    .line 4
    filled-new-array {p1, p2, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Lcom/join/mgps/fragment/n0;

    invoke-direct {v1}, Lcom/join/mgps/fragment/n0;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;

    invoke-direct {v1}, Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/join/mgps/fragment/d4;

    invoke-direct {v1}, Lcom/join/mgps/fragment/d4;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-direct {v1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;

    invoke-direct {v1}, Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 12
    new-instance v1, Lcom/join/mgps/customview/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->adapter:Lcom/join/mgps/customview/d0;

    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    const-string p2, "binding.viewPager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->adapter:Lcom/join/mgps/customview/d0;

    const-string v2, "adapter"

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 14
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_f

    const-string v1, "currTabNumber"

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    const/4 v3, 0x2

    if-eq p1, v1, :cond_b

    const/4 v1, 0x3

    if-eq p1, v3, :cond_9

    const/4 v3, 0x4

    if-eq p1, v1, :cond_7

    if-eq p1, v3, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 19
    :cond_9
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 20
    :cond_b
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 21
    :cond_d
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_e

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 22
    :cond_f
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->adapter:Lcom/join/mgps/customview/d0;

    if-nez p1, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 23
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_11

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->d:Lcom/join/mgps/customview/SlidingTabLayout6;

    iget-object p2, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p2, :cond_12

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 24
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_13

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->b:Landroid/widget/ImageView;

    const-string p2, "binding.search"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/join/kotlin/ui/findgame/FindGameMainFragment$onCreateView$2;

    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/findgame/FindGameMainFragment$onCreateView$2;-><init>(Lcom/join/kotlin/ui/findgame/FindGameMainFragment;)V

    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 25
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_14

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/hf;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public onHiddenChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->adapter:Lcom/join/mgps/customview/d0;

    if-nez p1, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    const-string v1, "binding"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    const-string v3, "binding.viewPager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "adapter.instantiateItem(\u2026ng.viewPager.currentItem)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/join/mgps/fragment/k0;

    if-eqz v0, :cond_4

    .line 4
    check-cast p1, Lcom/join/mgps/fragment/k0;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/k0;->i0()V

    :cond_4
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

.method public final recivedIntentEvent(Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;->getType()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "binding"

    const-string v2, "binding.viewPager"

    if-eqz p1, :cond_8

    const/4 v3, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v3, :cond_4

    const/4 v3, 0x4

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 5
    :cond_6
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 6
    :cond_8
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    if-nez p1, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hf;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->adapter:Lcom/join/mgps/customview/d0;

    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/hf;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/hf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/hf;

    return-void
.end method
