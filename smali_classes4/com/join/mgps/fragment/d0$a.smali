.class Lcom/join/mgps/fragment/d0$a;
.super Ljava/lang/Object;
.source "DiscoveryFragmentV2.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/d0;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/fragment/d0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/d0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/d0$a;->b:Lcom/join/mgps/fragment/d0;

    iput p2, p0, Lcom/join/mgps/fragment/d0$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/d0$a;->a:I

    neg-int v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/fragment/d0$a;->b:Lcom/join/mgps/fragment/d0;

    iget-object p2, p2, Lcom/join/mgps/fragment/d0;->f:Lcom/flyco/tablayout/SlidingTabLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/fragment/d0$a;->b:Lcom/join/mgps/fragment/d0;

    iget-object p2, p2, Lcom/join/mgps/fragment/d0;->q:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$a;->b:Lcom/join/mgps/fragment/d0;

    iget-object v0, v0, Lcom/join/mgps/fragment/d0;->f:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$a;->b:Lcom/join/mgps/fragment/d0;

    iget-object v0, v0, Lcom/join/mgps/fragment/d0;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget v0, p0, Lcom/join/mgps/fragment/d0$a;->a:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    mul-float p2, p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    iget v4, p0, Lcom/join/mgps/fragment/d0$a;->a:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$a;->b:Lcom/join/mgps/fragment/d0;

    iget-object v0, v0, Lcom/join/mgps/fragment/d0;->f:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, p2}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$a;->b:Lcom/join/mgps/fragment/d0;

    iget-object v0, v0, Lcom/join/mgps/fragment/d0;->q:Landroid/widget/TextView;

    const v4, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, v4

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    if-ne v1, p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/d0$a;->b:Lcom/join/mgps/fragment/d0;

    iget-object p1, p1, Lcom/join/mgps/fragment/d0;->f:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/d0$a;->b:Lcom/join/mgps/fragment/d0;

    iget-object p1, p1, Lcom/join/mgps/fragment/d0;->d:Lcom/join/mgps/customview/ViewPagerSlide;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/ViewPagerSlide;->setSlide(Z)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/d0$a;->b:Lcom/join/mgps/fragment/d0;

    iget-object p1, p1, Lcom/join/mgps/fragment/d0;->d:Lcom/join/mgps/customview/ViewPagerSlide;

    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ViewPagerSlide;->setSlide(Z)V

    :goto_1
    return-void
.end method
