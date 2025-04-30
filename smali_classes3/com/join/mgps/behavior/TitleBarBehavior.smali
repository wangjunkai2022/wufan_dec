.class public Lcom/join/mgps/behavior/TitleBarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "TitleBarBehavior.java"


# instance fields
.field final a:Landroid/graphics/Rect;

.field final b:Landroid/graphics/Rect;

.field private c:I

.field d:Z

.field e:I

.field f:I

.field g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/behavior/TitleBarBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->a:Landroid/graphics/Rect;

    .line 4
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->b:Landroid/graphics/Rect;

    const/16 p2, 0x3c

    .line 5
    iput p2, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->c:I

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->d:Z

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->e:I

    .line 8
    iput p2, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->f:I

    .line 9
    iput p2, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->g:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07145a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->f:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->e:I

    return-void
.end method

.method private static resolveGravity(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method


# virtual methods
.method findFirstDependency(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/appbar/AppBarLayout;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of p1, p3, Lcom/google/android/material/appbar/AppBarLayout;

    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->f:I

    iget v0, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->e:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->g:I

    .line 2
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->g:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p1, p3

    iget p3, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->c:I

    sub-int/2addr p1, p3

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->d:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->d:Z

    :goto_0
    return v1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/behavior/TitleBarBehavior;->findFirstDependency(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 4
    iget-object v5, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->a:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v6, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v6, v0

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v6, v0

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget p1, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr p1, v2

    iput p1, v5, Landroid/graphics/Rect;->left:I

    .line 9
    iget p1, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, v5, Landroid/graphics/Rect;->right:I

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->b:Landroid/graphics/Rect;

    .line 11
    iget-boolean v0, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->d:Z

    if-eqz v0, :cond_1

    .line 12
    iget v0, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Lcom/join/mgps/behavior/TitleBarBehavior;->resolveGravity(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move-object v6, p1

    move v7, p3

    invoke-static/range {v2 .. v7}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 13
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->c:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 14
    :cond_1
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->g:I

    iget v1, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->c:I

    sub-int/2addr v0, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    invoke-virtual {p2, p3, v0, v2, p1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 12

    move-object v0, p0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v3, -0x2

    if-ne v1, v3, :cond_5

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 3
    invoke-virtual {p0, v3}, Lcom/join/mgps/behavior/TitleBarBehavior;->findFirstDependency(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 4
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, p2

    .line 5
    invoke-static {p2, v5}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 6
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return v5

    :cond_1
    move-object v4, p2

    .line 8
    :cond_2
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    if-nez v6, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    .line 10
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v3}, Lcom/join/mgps/behavior/TitleBarBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v3

    add-int/2addr v6, v3

    if-ne v1, v2, :cond_4

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_4
    const/high16 v1, -0x80000000

    .line 11
    :goto_0
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v11, p6

    .line 12
    invoke-virtual/range {v6 .. v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    return v5

    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public setOverlayTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/behavior/TitleBarBehavior;->c:I

    return-void
.end method
