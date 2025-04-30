.class public final Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$showTabUi$1;
.super Ljava/lang/Object;
.source "ModGameCloudArchiveFragment.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->showTabUi()V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$showTabUi$1",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "",
        "p0",
        "",
        "p1",
        "p2",
        "",
        "onPageScrolled",
        "onPageSelected",
        "onPageScrollStateChanged",
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
.field final synthetic $fragments:Ljava/util/List;

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$showTabUi$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$showTabUi$1;->$fragments:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$showTabUi$1;->$fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 2
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$showTabUi$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/z30;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lcom/join/android/app/mgsim/wufun/databinding/z30;->E:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v4, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->j(I)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "title"

    if-ne v2, p1, :cond_0

    .line 3
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$showTabUi$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getShowPosition()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-ne p1, v3, :cond_3

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$showTabUi$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getShowPosition()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method
