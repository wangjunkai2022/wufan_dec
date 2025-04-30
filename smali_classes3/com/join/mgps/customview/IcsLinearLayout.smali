.class public Lcom/join/mgps/customview/IcsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "IcsLinearLayout.java"


# static fields
.field private static final f:[I

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/join/mgps/customview/IcsLinearLayout;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010129
        0x1010329
        0x101032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/join/mgps/customview/IcsLinearLayout;->f:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/IcsLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x2

    .line 4
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/IcsLinearLayout;->e:I

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/IcsLinearLayout;->d:I

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/IcsLinearLayout;->e(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 7
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/customview/IcsLinearLayout;->d(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/IcsLinearLayout;->e(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/join/mgps/customview/IcsLinearLayout;->b:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 12
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/IcsLinearLayout;->d(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/IcsLinearLayout;->e(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    .line 7
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/customview/IcsLinearLayout;->c(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/IcsLinearLayout;->e(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/join/mgps/customview/IcsLinearLayout;->c:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 12
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/IcsLinearLayout;->c(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method private c(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/IcsLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/join/mgps/customview/IcsLinearLayout;->e:I

    add-int/2addr v1, v2

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/join/mgps/customview/IcsLinearLayout;->e:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/join/mgps/customview/IcsLinearLayout;->c:I

    add-int/2addr v3, p2

    .line 3
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/customview/IcsLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/IcsLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/join/mgps/customview/IcsLinearLayout;->e:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/join/mgps/customview/IcsLinearLayout;->b:I

    add-int/2addr v2, p2

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/join/mgps/customview/IcsLinearLayout;->e:I

    sub-int/2addr v3, v4

    .line 3
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/customview/IcsLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private e(I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Lcom/join/mgps/customview/IcsLinearLayout;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/IcsLinearLayout;->e(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v1, v4, :cond_0

    .line 5
    iget v3, p0, Lcom/join/mgps/customview/IcsLinearLayout;->c:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 6
    :cond_0
    iget v3, p0, Lcom/join/mgps/customview/IcsLinearLayout;->b:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    if-ne v0, v5, :cond_3

    .line 8
    invoke-direct {p0, v3}, Lcom/join/mgps/customview/IcsLinearLayout;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne v1, v4, :cond_2

    .line 9
    iget v0, p0, Lcom/join/mgps/customview/IcsLinearLayout;->c:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 10
    :cond_2
    iget v0, p0, Lcom/join/mgps/customview/IcsLinearLayout;->b:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 11
    :cond_3
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/IcsLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/IcsLinearLayout;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/IcsLinearLayout;->a(Landroid/graphics/Canvas;)V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/IcsLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/IcsLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/IcsLinearLayout;->b:I

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/IcsLinearLayout;->c:I

    goto :goto_0

    .line 5
    :cond_1
    iput v0, p0, Lcom/join/mgps/customview/IcsLinearLayout;->b:I

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/IcsLinearLayout;->c:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 7
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
