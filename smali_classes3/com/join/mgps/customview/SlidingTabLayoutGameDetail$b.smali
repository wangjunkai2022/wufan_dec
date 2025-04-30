.class Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;
.super Ljava/lang/Object;
.source "SlidingTabLayoutGameDetail.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->a:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/l0;->b(IF)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v1, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->b(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;II)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/customview/l0;->b(IF)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v0, p1, v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->b(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;II)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    const/4 v0, 0x0

    .line 8
    :goto_2
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->d(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 9
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->d(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 10
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->e(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 11
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v4}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->f(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    if-ne v0, p1, :cond_5

    .line 12
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {v4}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v3}, Lcom/facebook/drawee/generic/a;->o()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    if-nez v3, :cond_4

    .line 14
    invoke-static {}, Lcom/facebook/drawee/generic/RoundingParams;->a()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    :cond_4
    const-string v5, "#FFB38534"

    .line 15
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/facebook/drawee/generic/RoundingParams;->o(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 16
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07110e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lcom/facebook/drawee/generic/RoundingParams;->p(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 17
    invoke-virtual {v4}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v4, v3}, Lcom/facebook/drawee/generic/a;->V(Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_3

    :cond_5
    const/4 v5, 0x4

    .line 18
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {v4}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v3}, Lcom/facebook/drawee/generic/a;->o()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    if-nez v3, :cond_6

    .line 20
    invoke-static {}, Lcom/facebook/drawee/generic/RoundingParams;->a()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    :cond_6
    const-string v5, "#ffffff"

    .line 21
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/facebook/drawee/generic/RoundingParams;->o(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 22
    invoke-virtual {v3, v1}, Lcom/facebook/drawee/generic/RoundingParams;->p(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 23
    invoke-virtual {v4}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v4, v3}, Lcom/facebook/drawee/generic/a;->V(Lcom/facebook/drawee/generic/RoundingParams;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_7
    return-void
.end method
