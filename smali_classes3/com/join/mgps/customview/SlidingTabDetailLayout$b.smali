.class Lcom/join/mgps/customview/SlidingTabDetailLayout$b;
.super Ljava/lang/Object;
.source "SlidingTabDetailLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabDetailLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/join/mgps/customview/SlidingTabDetailLayout;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabDetailLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabDetailLayout;Lcom/join/mgps/customview/SlidingTabDetailLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;-><init>(Lcom/join/mgps/customview/SlidingTabDetailLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->a:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/l0;->b(IF)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/l0;

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
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v1, p1, v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->b(Lcom/join/mgps/customview/SlidingTabDetailLayout;II)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    const/4 p3, 0x1

    if-ne p1, p3, :cond_4

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->d(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    const v0, 0x7f090f49

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09069f

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    float-to-double v1, p2

    const-wide v3, 0x3fd3333333333333L    # 0.3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_3

    const-string p2, "\u91ca\n\u653e\n\u8fdb\n\u5165\n\u4e13\n\u533a\n\u8ba8\n\u8bba"

    .line 11
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x43340000    # 180.0f

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    const-wide p1, 0x3fdccccccccccccdL    # 0.45

    cmpl-double v0, v1, p1

    if-nez v0, :cond_4

    .line 13
    new-instance p1, Lcom/join/mgps/dto/ForumBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    const/4 p2, 0x2

    .line 14
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 15
    iget-object p2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {p2}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->d(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 16
    iget-object p2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/j0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/j0;

    iget-object p2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/join/mgps/Util/i0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    goto :goto_1

    :cond_3
    const/high16 p3, 0x42700000    # 60.0f

    mul-float p2, p2, p3

    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    const-string p1, "\u6ed1\n\u52a8\n\u8fdb\n\u5165\n\u4e13\n\u533a\n\u8ba8\n\u8bba"

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance v2, Lcom/join/mgps/dto/ForumBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 2
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 3
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v3}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->d(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 4
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/j0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/j0;

    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/join/mgps/Util/i0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    .line 5
    :cond_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->a:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/join/mgps/customview/l0;->b(IF)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v2, p1, v3}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->b(Lcom/join/mgps/customview/SlidingTabDetailLayout;II)V

    :cond_1
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v4}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 9
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v4}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne p1, v2, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_4
    const/4 v1, 0x0

    .line 12
    :goto_2
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->e(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 13
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->f(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 14
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-static {v4}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->e(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eq p1, v0, :cond_6

    if-ne v1, p1, :cond_5

    .line 15
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 16
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06009b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 19
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060398

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
