.class Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;
.super Ljava/lang/Object;
.source "SlidingTabLayoutGameDetailImage.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->a:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/l0;->b(IF)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/l0;

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
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v1, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->b(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;II)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->a:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/join/mgps/customview/l0;->b(IF)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v0, p1, v1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->b(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;II)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    const/4 v0, 0x0

    .line 8
    :goto_2
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->d(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 9
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->d(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->e(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v0, p1, :cond_4

    .line 11
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    const/4 v3, 0x4

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
