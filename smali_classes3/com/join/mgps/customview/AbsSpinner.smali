.class public abstract Lcom/join/mgps/customview/AbsSpinner;
.super Lcom/join/mgps/customview/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/AbsSpinner$b;,
        Lcom/join/mgps/customview/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/customview/AdapterView<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field H:Landroid/widget/SpinnerAdapter;

.field I:I

.field J:I

.field K:Z

.field n0:I

.field o0:I

.field p0:I

.field q0:I

.field r0:Landroid/graphics/Rect;

.field s0:Landroid/view/View;

.field t0:Landroid/view/animation/Interpolator;

.field u0:Lcom/join/mgps/customview/AbsSpinner$b;

.field private v0:Landroid/database/DataSetObserver;

.field private w0:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->n0:I

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->o0:I

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->p0:I

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->q0:I

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->s0:Landroid/view/View;

    .line 8
    new-instance p1, Lcom/join/mgps/customview/AbsSpinner$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/AbsSpinner$b;-><init>(Lcom/join/mgps/customview/AbsSpinner;)V

    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->u0:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/AbsSpinner;->u()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->n0:I

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->o0:I

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->p0:I

    .line 15
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->q0:I

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->s0:Landroid/view/View;

    .line 18
    new-instance p1, Lcom/join/mgps/customview/AbsSpinner$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/AbsSpinner$b;-><init>(Lcom/join/mgps/customview/AbsSpinner;)V

    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->u0:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/customview/AbsSpinner;->u()V

    return-void
.end method

.method static synthetic r(Lcom/join/mgps/customview/AbsSpinner;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private u()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setFocusable(Z)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->H:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    return v0
.end method

.method public final getSelectedView()Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    if-ltz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final k()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/AdapterView;->k()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/join/mgps/customview/AbsSpinner;->n0:I

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 3
    :cond_0
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/join/mgps/customview/AbsSpinner;->o0:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    .line 5
    :cond_1
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/join/mgps/customview/AbsSpinner;->p0:I

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    .line 7
    :cond_2
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 8
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    iget v3, p0, Lcom/join/mgps/customview/AbsSpinner;->q0:I

    if-le v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 9
    :cond_3
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 10
    iget-boolean v1, p0, Lcom/join/mgps/customview/AdapterView;->m:Z

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->k()V

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_8

    .line 13
    iget-object v4, p0, Lcom/join/mgps/customview/AbsSpinner;->H:Landroid/widget/SpinnerAdapter;

    if-eqz v4, :cond_8

    .line 14
    iget-object v4, p0, Lcom/join/mgps/customview/AbsSpinner;->u0:Lcom/join/mgps/customview/AbsSpinner$b;

    invoke-virtual {v4, v1}, Lcom/join/mgps/customview/AbsSpinner$b;->b(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    .line 15
    iget-object v4, p0, Lcom/join/mgps/customview/AbsSpinner;->H:Landroid/widget/SpinnerAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_5
    if-eqz v4, :cond_6

    .line 16
    iget-object v5, p0, Lcom/join/mgps/customview/AbsSpinner;->u0:Lcom/join/mgps/customview/AbsSpinner$b;

    invoke-virtual {v5, v1, v4}, Lcom/join/mgps/customview/AbsSpinner$b;->d(ILandroid/view/View;)V

    :cond_6
    if-eqz v4, :cond_8

    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_7

    .line 18
    iput-boolean v2, p0, Lcom/join/mgps/customview/AbsSpinner;->K:Z

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iput-boolean v3, p0, Lcom/join/mgps/customview/AbsSpinner;->K:Z

    .line 21
    :cond_7
    invoke-virtual {p0, v4, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 22
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/AbsSpinner;->s(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 23
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/AbsSpinner;->t(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    move v3, v1

    move v1, v2

    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_9

    .line 24
    iget-object v2, p0, Lcom/join/mgps/customview/AbsSpinner;->r0:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    if-nez v0, :cond_9

    .line 25
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    .line 26
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 28
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v0

    .line 29
    invoke-static {v1, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v1

    .line 30
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 31
    iput p2, p0, Lcom/join/mgps/customview/AbsSpinner;->I:I

    .line 32
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->J:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/join/mgps/customview/AbsSpinner$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget-wide v0, p1, Lcom/join/mgps/customview/AbsSpinner$SavedState;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/join/mgps/customview/AdapterView;->m:Z

    .line 5
    iput-boolean v2, p0, Lcom/join/mgps/customview/AdapterView;->f:Z

    .line 6
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->d:J

    .line 7
    iget p1, p1, Lcom/join/mgps/customview/AbsSpinner$SavedState;->b:I

    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->c:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->g:I

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/customview/AbsSpinner$SavedState;

    invoke-direct {v1, v0}, Lcom/join/mgps/customview/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/join/mgps/customview/AbsSpinner$SavedState;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcom/join/mgps/customview/AbsSpinner$SavedState;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 5
    iput v0, v1, Lcom/join/mgps/customview/AbsSpinner$SavedState;->b:I

    :goto_0
    return-object v1
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/AbsSpinner;->K:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method final s(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->H:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->v0:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->y()V

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->H:Landroid/widget/SpinnerAdapter;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->u:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 7
    iput-wide v1, p0, Lcom/join/mgps/customview/AdapterView;->v:J

    if-eqz p1, :cond_2

    .line 8
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    iput v1, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 9
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->d()V

    .line 11
    new-instance p1, Lcom/join/mgps/customview/AdapterView$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/AdapterView$c;-><init>(Lcom/join/mgps/customview/AdapterView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->v0:Landroid/database/DataSetObserver;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->H:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 13
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    if-lez p1, :cond_1

    const/4 v0, 0x0

    .line 14
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setSelectedPositionInt(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 16
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->s:I

    if-nez p1, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->e()V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->d()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->y()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->e()V

    .line 21
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->requestLayout()V

    return-void
.end method

.method public final setSelection(I)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final setSelection(IZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    if-gt p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/2addr p2, v1

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/AbsSpinner;->z(IZ)V

    return-void
.end method

.method final t(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method abstract v(IZ)V
.end method

.method public final w(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->w0:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->w0:Landroid/graphics/Rect;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    add-int/2addr p1, v1

    return p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method final x()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->u0:Lcom/join/mgps/customview/AbsSpinner$b;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    iget v4, p0, Lcom/join/mgps/customview/AdapterView;->a:I

    add-int/2addr v4, v2

    .line 5
    invoke-virtual {v1, v4, v3}, Lcom/join/mgps/customview/AbsSpinner$b;->d(ILandroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final y()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/AdapterView;->m:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/AdapterView;->f:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->u:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 5
    iput-wide v1, p0, Lcom/join/mgps/customview/AdapterView;->v:J

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setSelectedPositionInt(I)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method final z(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->u:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/AbsSpinner;->K:Z

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->p:I

    sub-int v0, p1, v0

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/join/mgps/customview/AbsSpinner;->v(IZ)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/AbsSpinner;->K:Z

    :cond_0
    return-void
.end method
