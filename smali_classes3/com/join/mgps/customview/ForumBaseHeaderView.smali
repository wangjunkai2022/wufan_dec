.class public Lcom/join/mgps/customview/ForumBaseHeaderView;
.super Landroid/widget/LinearLayout;
.source "ForumBaseHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ForumBaseHeaderView$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View$OnClickListener;

.field b:Lcom/join/mgps/customview/ForumBaseHeaderView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/ForumBaseHeaderView;->a:Landroid/view/View$OnClickListener;

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/join/mgps/customview/ForumBaseHeaderView;->a:Landroid/view/View$OnClickListener;

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/join/mgps/customview/ForumBaseHeaderView;->a:Landroid/view/View$OnClickListener;

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/ForumBaseHeaderView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 6
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getmOnMeasureHeight()Lcom/join/mgps/customview/ForumBaseHeaderView$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumBaseHeaderView;->b:Lcom/join/mgps/customview/ForumBaseHeaderView$a;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumBaseHeaderView;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    .line 7
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p0, v8, p1, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 11
    instance-of v10, v9, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v10, :cond_1

    .line 12
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    iget v10, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 14
    iget v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 15
    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 16
    :cond_1
    instance-of v10, v9, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v10, :cond_2

    .line 17
    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 19
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 20
    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 21
    :cond_2
    instance-of v10, v9, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v10, :cond_3

    .line 22
    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    iget v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 24
    iget v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 25
    iget v9, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 26
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v10

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 28
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/ForumBaseHeaderView;->b:Lcom/join/mgps/customview/ForumBaseHeaderView$a;

    if-eqz p1, :cond_6

    .line 29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_5

    .line 30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 31
    :goto_3
    iget-object p2, p0, Lcom/join/mgps/customview/ForumBaseHeaderView;->b:Lcom/join/mgps/customview/ForumBaseHeaderView$a;

    add-int/2addr p1, v7

    invoke-interface {p2, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView$a;->g(I)V

    :cond_6
    const/high16 p1, 0x40000000    # 2.0f

    if-ne v1, p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-ne v3, p1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v7

    .line 32
    :goto_5
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setHeaderClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumBaseHeaderView;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setmOnMeasureHeight(Lcom/join/mgps/customview/ForumBaseHeaderView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumBaseHeaderView;->b:Lcom/join/mgps/customview/ForumBaseHeaderView$a;

    return-void
.end method
