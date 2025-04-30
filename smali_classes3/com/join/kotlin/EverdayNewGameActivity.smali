.class public final Lcom/join/kotlin/EverdayNewGameActivity;
.super Lcom/BaseAppCompatActivity;
.source "EverdayNewGameActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/kotlin/EverdayNewGameActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "Lcom/join/android/app/mgsim/wufun/databinding/le;",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/le;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/le;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/le;)V",
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

.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/le;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/join/mgps/customview/d0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewGameActivity;->adapter:Lcom/join/mgps/customview/d0;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/le;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewGameActivity;->binding:Lcom/join/android/app/mgsim/wufun/databinding/le;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/mgsim/wufun/databinding/le;->c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/le;

    move-result-object p1

    const-string v0, "EverdayNewActivityBindin\u2026ayoutInflater.from(this))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/le;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    const-string v0, "\u5168\u90e8"

    const-string v1, "\u7f51\u6e38"

    const-string v2, "\u5355\u673a"

    const-string v3, "\u6a21\u62df\u5668"

    .line 4
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    new-instance v4, Lcom/join/kotlin/EverdayNewFragment;

    invoke-direct {v4}, Lcom/join/kotlin/EverdayNewFragment;-><init>()V

    .line 8
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "title"

    .line 9
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Lcom/join/mgps/customview/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v2, p0, Lcom/join/kotlin/EverdayNewGameActivity;->adapter:Lcom/join/mgps/customview/d0;

    .line 13
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/le;->d:Landroidx/viewpager/widget/ViewPager;

    const-string v1, "binding.viewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/join/kotlin/EverdayNewGameActivity;->adapter:Lcom/join/mgps/customview/d0;

    const-string v3, "adapter"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewGameActivity;->adapter:Lcom/join/mgps/customview/d0;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 15
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/le;->b:Lcom/join/mgps/customview/SlidingTabLayout6;

    iget-object v2, p1, Lcom/join/android/app/mgsim/wufun/databinding/le;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 16
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/le;->c:Lcom/join/android/app/mgsim/wufun/databinding/sc0;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/sc0;->b:Landroid/widget/ImageView;

    const-string v2, "binding.titleLayout.backImage"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/join/kotlin/EverdayNewGameActivity$onCreate$1;

    invoke-direct {v2, p0}, Lcom/join/kotlin/EverdayNewGameActivity$onCreate$1;-><init>(Lcom/join/kotlin/EverdayNewGameActivity;)V

    invoke-static {v0, v2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 17
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/le;->c:Lcom/join/android/app/mgsim/wufun/databinding/sc0;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/sc0;->d:Landroid/widget/TextView;

    const-string v2, "binding.titleLayout.titleTextview"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\u6bcf\u65e5\u4e0a\u65b0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/le;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "default_position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 20
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/le;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

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
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewGameActivity;->adapter:Lcom/join/mgps/customview/d0;

    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/le;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/le;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewGameActivity;->binding:Lcom/join/android/app/mgsim/wufun/databinding/le;

    return-void
.end method
