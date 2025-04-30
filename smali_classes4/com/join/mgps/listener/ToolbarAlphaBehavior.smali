.class public Lcom/join/mgps/listener/ToolbarAlphaBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "ToolbarAlphaBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroidx/appcompat/widget/Toolbar;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "ToolbarAlphaBehavior"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->a:I

    .line 3
    iput p2, p0, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->b:I

    .line 4
    iput p2, p0, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->c:I

    .line 5
    iput-object p1, p0, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/appcompat/widget/Toolbar;Landroid/view/View;IIII)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->b:I

    .line 2
    iget-object p3, p0, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->d:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070b90

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    iput p3, p0, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->c:I

    .line 3
    iget p4, p0, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->a:I

    add-int/2addr p4, p5

    iput p4, p0, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->a:I

    .line 4
    iget p5, p0, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->b:I

    if-gt p4, p5, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    if-le p4, p5, :cond_1

    if-ge p4, p3, :cond_1

    sub-int/2addr p4, p5

    int-to-float p1, p4

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float p1, p1, p3

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    if-lt p4, p3, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/appcompat/widget/Toolbar;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual/range {p0 .. p7}, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/appcompat/widget/Toolbar;Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1
    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual/range {p0 .. p5}, Lcom/join/mgps/listener/ToolbarAlphaBehavior;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/appcompat/widget/Toolbar;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method
