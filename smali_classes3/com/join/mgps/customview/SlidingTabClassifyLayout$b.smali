.class Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;
.super Ljava/lang/Object;
.source "SlidingTabClassifyLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabClassifyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabClassifyLayout;Lcom/join/mgps/customview/SlidingTabClassifyLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;-><init>(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->a:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/l0;->b(IF)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/l0;

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
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v1, p1, v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->b(Lcom/join/mgps/customview/SlidingTabClassifyLayout;II)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->a:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/join/mgps/customview/l0;->b(IF)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0, p1, v1}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->b(Lcom/join/mgps/customview/SlidingTabClassifyLayout;II)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/l0;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 8
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->d(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->e(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->d(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, -0x1

    if-ne v1, p1, :cond_4

    .line 11
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 12
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 15
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
