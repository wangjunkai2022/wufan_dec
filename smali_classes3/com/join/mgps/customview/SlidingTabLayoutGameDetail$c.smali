.class Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;
.super Ljava/lang/Object;
.source "SlidingTabLayoutGameDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09069a

    const v4, 0x7f09075b

    if-ne p1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->g(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v3}, Lcom/facebook/drawee/generic/a;->o()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    const-string v4, "#FFB38534"

    .line 7
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/facebook/drawee/generic/RoundingParams;->o(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 8
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07110e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/facebook/drawee/generic/RoundingParams;->p(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 9
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->V(Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_1

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v3}, Lcom/facebook/drawee/generic/a;->o()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/generic/RoundingParams;->p(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 14
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->V(Lcom/facebook/drawee/generic/RoundingParams;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method
