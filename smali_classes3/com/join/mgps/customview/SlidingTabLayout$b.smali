.class Lcom/join/mgps/customview/SlidingTabLayout$b;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout;Lcom/join/mgps/customview/SlidingTabLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->a:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->c(Lcom/join/mgps/customview/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->c(Lcom/join/mgps/customview/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->a(Lcom/join/mgps/customview/SlidingTabLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->a(Lcom/join/mgps/customview/SlidingTabLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/l0;->b(IF)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->a(Lcom/join/mgps/customview/SlidingTabLayout;)Lcom/join/mgps/customview/l0;

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
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout;->b(Lcom/join/mgps/customview/SlidingTabLayout;II)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->c(Lcom/join/mgps/customview/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->c(Lcom/join/mgps/customview/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->a:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->a(Lcom/join/mgps/customview/SlidingTabLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/join/mgps/customview/l0;->b(IF)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0, p1, v1}, Lcom/join/mgps/customview/SlidingTabLayout;->b(Lcom/join/mgps/customview/SlidingTabLayout;II)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayout;->a(Lcom/join/mgps/customview/SlidingTabLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayout;->a(Lcom/join/mgps/customview/SlidingTabLayout;)Lcom/join/mgps/customview/l0;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->c(Lcom/join/mgps/customview/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->c(Lcom/join/mgps/customview/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 8
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->d(Lcom/join/mgps/customview/SlidingTabLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout;->d(Lcom/join/mgps/customview/SlidingTabLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-ne v1, p1, :cond_4

    .line 10
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout$b;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_4
    const v2, -0x9e9e9f

    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
