.class public final Lcom/join/mgps/customview/Gallery;
.super Lcom/join/mgps/customview/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/Gallery$c;
    }
.end annotation


# static fields
.field private static final R0:I = 0xfa


# instance fields
.field private A0:I

.field private B0:I

.field private C0:I

.field private final D0:Landroid/view/GestureDetector;

.field private E0:I

.field private F0:Landroid/view/View;

.field private final G0:Lcom/join/mgps/customview/Gallery$c;

.field private final H0:Ljava/lang/Runnable;

.field private I0:Z

.field private J0:Landroid/view/View;

.field private K0:Z

.field private L0:Z

.field private M0:Z

.field private N0:Z

.field private O0:Lcom/join/mgps/customview/AdapterView$b;

.field private P0:Z

.field private Q0:Z

.field private x0:I

.field private y0:I

.field private z0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010070

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/Gallery;->x0:I

    const/16 p2, 0x190

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/Gallery;->y0:I

    .line 6
    new-instance p2, Lcom/join/mgps/customview/Gallery$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/Gallery$c;-><init>(Lcom/join/mgps/customview/Gallery;)V

    iput-object p2, p0, Lcom/join/mgps/customview/Gallery;->G0:Lcom/join/mgps/customview/Gallery$c;

    .line 7
    new-instance p2, Lcom/join/mgps/customview/Gallery$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/Gallery$a;-><init>(Lcom/join/mgps/customview/Gallery;)V

    iput-object p2, p0, Lcom/join/mgps/customview/Gallery;->H0:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/join/mgps/customview/Gallery;->K0:Z

    .line 9
    iput-boolean p2, p0, Lcom/join/mgps/customview/Gallery;->L0:Z

    .line 10
    iput-boolean p2, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    .line 11
    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/join/mgps/customview/Gallery;->D0:Landroid/view/GestureDetector;

    .line 12
    invoke-virtual {p3, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic A(Lcom/join/mgps/customview/Gallery;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->M0:Z

    return p1
.end method

.method static synthetic B(Lcom/join/mgps/customview/Gallery;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->M()V

    return-void
.end method

.method static synthetic C(Lcom/join/mgps/customview/Gallery;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/Gallery;->y0:I

    return p0
.end method

.method static synthetic D(Lcom/join/mgps/customview/Gallery;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->c0()V

    return-void
.end method

.method static synthetic E(Lcom/join/mgps/customview/Gallery;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/Gallery;->I0:Z

    return p0
.end method

.method static synthetic F(Lcom/join/mgps/customview/Gallery;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->I0:Z

    return p1
.end method

.method static synthetic G(Lcom/join/mgps/customview/Gallery;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->E0:I

    return p1
.end method

.method static synthetic H(Lcom/join/mgps/customview/Gallery;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    return p0
.end method

.method private I(Landroid/view/View;Z)I
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_1
    const/4 p2, 0x0

    .line 3
    iget v1, p0, Lcom/join/mgps/customview/Gallery;->C0:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    const/16 v2, 0x30

    if-eq v1, v2, :cond_3

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    sub-int p2, v0, p1

    goto :goto_2

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 6
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    .line 7
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    :goto_2
    return p2
.end method

.method private J(Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 4
    iget-boolean v7, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    if-eqz v7, :cond_0

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v4

    goto :goto_1

    :cond_0
    move v7, v4

    .line 5
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 7
    iget-object v6, p0, Lcom/join/mgps/customview/AbsSpinner;->u0:Lcom/join/mgps/customview/AbsSpinner$b;

    add-int v9, v1, v7

    invoke-virtual {v6, v9, v8}, Lcom/join/mgps/customview/AbsSpinner$b;->d(ILandroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    move v6, v7

    goto :goto_0

    .line 8
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    if-nez v0, :cond_7

    goto :goto_6

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ltz v4, :cond_6

    .line 10
    iget-boolean v7, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    if-eqz v7, :cond_4

    sub-int v7, v0, v4

    goto :goto_4

    :cond_4
    move v7, v4

    .line 11
    :goto_4
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 12
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v3, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 13
    iget-object v6, p0, Lcom/join/mgps/customview/AbsSpinner;->u0:Lcom/join/mgps/customview/AbsSpinner$b;

    add-int v9, v1, v7

    invoke-virtual {v6, v9, v8}, Lcom/join/mgps/customview/AbsSpinner$b;->d(ILandroid/view/View;)V

    add-int/lit8 v4, v4, -0x1

    move v6, v7

    goto :goto_3

    .line 14
    :cond_6
    :goto_5
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move v2, v6

    .line 15
    :goto_6
    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 16
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    if-eq p1, v0, :cond_8

    .line 17
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    :cond_8
    return-void
.end method

.method private K(Landroid/view/View;IJ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->l:Lcom/join/mgps/customview/AdapterView$e;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/customview/Gallery;->F0:Landroid/view/View;

    iget v3, p0, Lcom/join/mgps/customview/Gallery;->E0:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/join/mgps/customview/AdapterView$e;->a(Lcom/join/mgps/customview/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/join/mgps/customview/AdapterView$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/customview/AdapterView$b;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/join/mgps/customview/Gallery;->O0:Lcom/join/mgps/customview/AdapterView$b;

    .line 4
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_2
    return v0
.end method

.method private L(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPressed(Z)V

    return-void
.end method

.method private M()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    return-void
.end method

.method private N()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->P()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->O()V

    :goto_0
    return-void
.end method

.method private O()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/Gallery;->x0:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 4
    iget v5, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    sub-int/2addr v5, v4

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 7
    iput-boolean v4, p0, Lcom/join/mgps/customview/Gallery;->I0:Z

    const/4 v5, 0x0

    :goto_0
    if-le v3, v1, :cond_1

    if-ltz v5, :cond_1

    .line 8
    iget v4, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    sub-int v4, v5, v4

    invoke-direct {p0, v5, v4, v3, v2}, Lcom/join/mgps/customview/Gallery;->V(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 9
    iput v5, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private P()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/Gallery;->x0:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    iget v4, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    add-int/2addr v4, v2

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_0

    .line 7
    :cond_0
    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    const/4 v3, 0x1

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    .line 9
    iput-boolean v3, p0, Lcom/join/mgps/customview/Gallery;->I0:Z

    :goto_0
    if-le v2, v1, :cond_1

    .line 10
    iget v3, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    if-ge v4, v3, :cond_1

    .line 11
    iget v3, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    sub-int v3, v4, v3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v2, v5}, Lcom/join/mgps/customview/Gallery;->V(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->S()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->R()V

    :goto_0
    return-void
.end method

.method private R()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/Gallery;->x0:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 4
    iget v3, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    add-int/lit8 v4, v2, -0x1

    .line 5
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 6
    iget v6, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    add-int/2addr v6, v2

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0

    .line 8
    :cond_0
    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    add-int/lit8 v6, v2, -0x1

    iput v6, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 10
    iput-boolean v5, p0, Lcom/join/mgps/customview/Gallery;->I0:Z

    :goto_0
    if-ge v2, v1, :cond_1

    if-ge v6, v3, :cond_1

    .line 11
    iget v4, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    sub-int v4, v6, v4

    invoke-direct {p0, v6, v4, v2, v5}, Lcom/join/mgps/customview/Gallery;->V(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private S()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/Gallery;->x0:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 4
    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    sub-int/2addr v2, v4

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 7
    iput-boolean v4, p0, Lcom/join/mgps/customview/Gallery;->I0:Z

    :goto_0
    if-ge v3, v1, :cond_1

    if-ltz v2, :cond_1

    .line 8
    iget v5, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    sub-int v5, v2, v5

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/join/mgps/customview/Gallery;->V(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 9
    iput v2, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static T(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0
.end method

.method private V(IIIZ)Landroid/view/View;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/AdapterView;->m:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->u0:Lcom/join/mgps/customview/AbsSpinner$b;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/AbsSpinner$b;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 4
    iget v1, p0, Lcom/join/mgps/customview/Gallery;->B0:I

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/Gallery;->B0:I

    .line 7
    iget v1, p0, Lcom/join/mgps/customview/Gallery;->A0:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/Gallery;->A0:I

    .line 8
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/join/mgps/customview/Gallery;->f0(Landroid/view/View;IIZ)V

    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->H:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/customview/Gallery;->f0(Landroid/view/View;IIZ)V

    return-object p1
.end method

.method private Y(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->M0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->M0:Z

    .line 3
    invoke-super {p0}, Lcom/join/mgps/customview/AdapterView;->p()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private c0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->J0:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/customview/Gallery;->T(Landroid/view/View;)I

    move-result v0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->getGalleryLockPoint()I

    move-result v1

    sub-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->G0:Lcom/join/mgps/customview/Gallery$c;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/Gallery$c;->e(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->a0()V

    :cond_2
    :goto_0
    return-void
.end method

.method private d0(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->getGalleryLockPoint()I

    move-result v0

    invoke-static {p1}, Lcom/join/mgps/customview/Gallery;->T(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->G0:Lcom/join/mgps/customview/Gallery$c;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/Gallery$c;->e(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->J0:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->getGalleryLockPoint()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v5, v0, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    if-lt v5, v0, :cond_1

    move v2, v3

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 8
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v4, v1, :cond_2

    move v2, v3

    move v1, v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 9
    :cond_3
    :goto_1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    add-int/2addr v0, v2

    .line 10
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    if-eq v0, v1, :cond_4

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/Gallery;->setSelectedPositionInt(I)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->e()V

    :cond_4
    return-void
.end method

.method private f0(Landroid/view/View;IIZ)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    const/4 v2, 0x0

    if-eq p4, v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    const/4 v1, 0x1

    if-nez p2, :cond_2

    const/4 v2, 0x1

    .line 4
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iget p2, p0, Lcom/join/mgps/customview/AbsSpinner;->I:I

    iget-object v2, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v3, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 6
    iget v2, p0, Lcom/join/mgps/customview/AbsSpinner;->J:I

    iget-object v3, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/customview/Gallery;->I(Landroid/view/View;Z)I

    move-result p2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz p4, :cond_3

    add-int/2addr v1, p3

    goto :goto_1

    :cond_3
    sub-int p4, p3, v1

    move v1, p3

    move p3, p4

    .line 11
    :goto_1
    invoke-virtual {p1, p3, p2, v1, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private getGalleryLockPoint()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method private h0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->J0:Landroid/view/View;

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/Gallery;->J0:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method U(ZI)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return p2

    .line 3
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/customview/Gallery;->T(Landroid/view/View;)I

    move-result v0

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->getGalleryLockPoint()I

    move-result v2

    if-eqz p1, :cond_2

    if-gt v0, v2, :cond_3

    return v1

    :cond_2
    if-lt v0, v2, :cond_3

    return v1

    :cond_3
    sub-int/2addr v2, v0

    if-eqz p1, :cond_4

    .line 5
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    .line 6
    :cond_4
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    return p1
.end method

.method W()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/join/mgps/customview/Gallery;->d0(I)Z

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method X()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AbsSpinner;->setSelection(I)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method Z()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->b0()V

    return-void
.end method

.method b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->G0:Lcom/join/mgps/customview/Gallery$c;

    invoke-static {v0}, Lcom/join/mgps/customview/Gallery$c;->b(Lcom/join/mgps/customview/Gallery$c;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->c0()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->M()V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroid/view/ViewGroup$LayoutParams;

    return p1
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->J0:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    return-void
.end method

.method g0(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/customview/Gallery;->U(ZI)I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->G0:Lcom/join/mgps/customview/Gallery$c;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/Gallery$c;->a(Lcom/join/mgps/customview/Gallery$c;Z)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->a0()V

    .line 5
    :cond_2
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/Gallery;->Y(I)V

    .line 6
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/Gallery;->J(Z)V

    if-eqz v1, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->Q()V

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->N()V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->u0:Lcom/join/mgps/customview/AbsSpinner$b;

    invoke-virtual {p1}, Lcom/join/mgps/customview/AbsSpinner$b;->a()V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->e0()V

    .line 11
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->J0:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/join/mgps/customview/Gallery;->z0:F

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->O0:Lcom/join/mgps/customview/AdapterView$b;

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->G0:Lcom/join/mgps/customview/Gallery$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/Gallery$c;->g(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/customview/AbsSpinner;->w(II)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/Gallery;->E0:I

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 3
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/Gallery;->F0:Landroid/view/View;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->P0:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->K0:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->H0:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->M0:Z

    if-nez p1, :cond_0

    .line 4
    iput-boolean p2, p0, Lcom/join/mgps/customview/Gallery;->M0:Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->G0:Lcom/join/mgps/customview/Gallery$c;

    neg-float p3, p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Lcom/join/mgps/customview/Gallery$c;->f(I)V

    return p2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->J0:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->J0:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x42

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_0
    return v1

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->X()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_1
    return v1

    .line 5
    :cond_2
    :pswitch_2
    iput-boolean v1, p0, Lcom/join/mgps/customview/Gallery;->N0:Z

    .line 6
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->N0:Z

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->J0:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/Gallery;->L(Landroid/view/View;)V

    .line 5
    new-instance p1, Lcom/join/mgps/customview/Gallery$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/Gallery$b;-><init>(Lcom/join/mgps/customview/Gallery;)V

    .line 6
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p2

    int-to-long v0, p2

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    sub-int/2addr p1, p2

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->H:Landroid/widget/SpinnerAdapter;

    .line 10
    invoke-interface {v0, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 11
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/join/mgps/customview/AdapterView;->n(Landroid/view/View;IJ)Z

    :cond_1
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->N0:Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/join/mgps/customview/AdapterView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->i:Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Lcom/join/mgps/customview/Gallery;->v(IZ)V

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->i:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/join/mgps/customview/Gallery;->E0:I

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 3
    iget p1, p0, Lcom/join/mgps/customview/Gallery;->E0:I

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->i(I)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->F0:Landroid/view/View;

    iget v2, p0, Lcom/join/mgps/customview/Gallery;->E0:I

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/join/mgps/customview/Gallery;->K(Landroid/view/View;IJ)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->K0:Z

    const/4 p4, 0x0

    if-nez p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->P0:Z

    if-eqz p1, :cond_2

    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->M0:Z

    if-nez p1, :cond_0

    .line 5
    iput-boolean p2, p0, Lcom/join/mgps/customview/Gallery;->M0:Z

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->H0:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->M0:Z

    if-eqz p1, :cond_2

    .line 8
    iput-boolean p4, p0, Lcom/join/mgps/customview/Gallery;->M0:Z

    :cond_2
    :goto_0
    float-to-int p1, p3

    mul-int/lit8 p1, p1, -0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/Gallery;->g0(I)V

    .line 10
    iput-boolean p4, p0, Lcom/join/mgps/customview/Gallery;->P0:Z

    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget p1, p0, Lcom/join/mgps/customview/Gallery;->E0:I

    if-ltz p1, :cond_2

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/Gallery;->d0(I)Z

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->L0:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/join/mgps/customview/Gallery;->E0:I

    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    if-ne p1, v0, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->F0:Landroid/view/View;

    iget v0, p0, Lcom/join/mgps/customview/Gallery;->E0:I

    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->H:Landroid/widget/SpinnerAdapter;

    .line 5
    invoke-interface {v1, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/join/mgps/customview/AdapterView;->n(Landroid/view/View;IJ)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->D0:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->b0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->Z()V

    :cond_2
    :goto_0
    return v0
.end method

.method p()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->M0:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/join/mgps/customview/AdapterView;->p()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->y0:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->K0:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->L0:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/Gallery;->C0:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->C0:I

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->requestLayout()V

    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/AdapterView;->setSelectedPositionInt(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->h0()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->x0:I

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->z0:F

    return-void
.end method

.method public showContextMenu()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    if-ltz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    iget-wide v2, p0, Lcom/join/mgps/customview/AdapterView;->q:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/join/mgps/customview/Gallery;->K(Landroid/view/View;IJ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->j(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->H:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/join/mgps/customview/Gallery;->K(Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method v(IZ)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->Q0:Z

    .line 2
    iget-boolean p2, p0, Lcom/join/mgps/customview/AdapterView;->m:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->k()V

    .line 4
    :cond_0
    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->y()V

    return-void

    .line 6
    :cond_1
    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->n:I

    if-ltz p2, :cond_2

    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/Gallery;->setSelectedPositionInt(I)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->x()V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 10
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->B0:I

    .line 11
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->A0:I

    .line 12
    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    iput p2, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p2, p1, p1, v0}, Lcom/join/mgps/customview/Gallery;->V(IIIZ)Landroid/view/View;

    move-result-object p2

    .line 14
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->getGalleryLockPoint()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->Q()V

    .line 16
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->N()V

    .line 17
    iget-object p2, p0, Lcom/join/mgps/customview/AbsSpinner;->u0:Lcom/join/mgps/customview/AbsSpinner$b;

    invoke-virtual {p2}, Lcom/join/mgps/customview/AbsSpinner$b;->a()V

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->e()V

    .line 20
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->m:Z

    .line 21
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->f:Z

    .line 22
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 23
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->h0()V

    return-void
.end method
