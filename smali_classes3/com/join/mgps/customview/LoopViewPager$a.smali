.class Lcom/join/mgps/customview/LoopViewPager$a;
.super Ljava/lang/Object;
.source "LoopViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/LoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:F

.field private b:F

.field final synthetic c:Lcom/join/mgps/customview/LoopViewPager;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/LoopViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->a:F

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->b:F

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/LoopViewPager;->b(Lcom/join/mgps/customview/LoopViewPager;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    invoke-static {v1}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/m;->h(I)I

    move-result v1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    .line 5
    invoke-static {v2}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/customview/m;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(IZ)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    iget-object v0, v0, Lcom/join/mgps/customview/LoopViewPager;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/m;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/m;->h(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    if-nez v3, :cond_1

    .line 3
    iget v3, p0, Lcom/join/mgps/customview/LoopViewPager$a;->a:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    .line 4
    invoke-static {v3}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/customview/m;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(IZ)V

    .line 6
    :cond_1
    iput p2, p0, Lcom/join/mgps/customview/LoopViewPager$a;->a:F

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    iget-object v3, p1, Lcom/join/mgps/customview/LoopViewPager;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_4

    .line 8
    invoke-static {p1}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/customview/m;->c()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-eq v0, p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    iget-object p1, p1, Lcom/join/mgps/customview/LoopViewPager;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p1, v0, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    :cond_2
    float-to-double p1, p2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double p3, p1, v3

    if-lez p3, :cond_3

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    iget-object p1, p1, Lcom/join/mgps/customview/LoopViewPager;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p1, v1, v2, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    iget-object p1, p1, Lcom/join/mgps/customview/LoopViewPager;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p1, v0, v2, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/m;->h(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->b:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 3
    iput v1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->b:F

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:Lcom/join/mgps/customview/LoopViewPager;

    iget-object v0, v0, Lcom/join/mgps/customview/LoopViewPager;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method
