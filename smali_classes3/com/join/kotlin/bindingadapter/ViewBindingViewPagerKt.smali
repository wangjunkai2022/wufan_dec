.class public final Lcom/join/kotlin/bindingadapter/ViewBindingViewPagerKt;
.super Ljava/lang/Object;
.source "ViewBindingViewPager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a4\u0010\n\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/viewpager/widget/ViewPager;",
        "viewPager",
        "",
        "Landroidx/fragment/app/Fragment;",
        "fragments",
        "",
        "titles",
        "Landroidx/fragment/app/FragmentManager;",
        "fragmentManager",
        "",
        "viewpagerFragment",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final viewpagerFragment(Landroidx/viewpager/widget/ViewPager;Ljava/util/List;Ljava/util/List;Landroidx/fragment/app/FragmentManager;)V
    .locals 2
    .param p0    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        requireAll = false
        value = {
            "fragments",
            "titles",
            "fragmentManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager/widget/ViewPager;",
            "Ljava/util/List<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentManager;",
            ")V"
        }
    .end annotation

    const-string v0, "viewPager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    new-instance v1, Lcom/join/mgps/customview/d0;

    invoke-direct {v1, p3, v0, p2}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 5
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method
