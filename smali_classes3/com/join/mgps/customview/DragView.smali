.class public Lcom/join/mgps/customview/DragView;
.super Landroid/widget/ImageView;
.source "DragView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/DragView$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/view/ViewGroup$MarginLayoutParams;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Lcom/join/mgps/customview/DragView$c;

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/DragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/customview/DragView;->m:Z

    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/DragView;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f88

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/DragView;->getStatusBarHeight()I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/DragView;->p:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0710f0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/DragView;->o:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 9
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/join/mgps/customview/DragView;->a:I

    .line 10
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, p0, Lcom/join/mgps/customview/DragView;->p:I

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/join/mgps/customview/DragView;->b:I

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/customview/DragView;->e()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/DragView;->h:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/DragView;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DragView;->h:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/DragView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/DragView;->b:I

    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/DragView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/DragView;->a:I

    return p0
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/DragView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/DragView$a;-><init>(Lcom/join/mgps/customview/DragView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f(IIZ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    int-to-float p2, p2

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x190

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/join/mgps/customview/DragView$b;

    invoke-direct {v0, p0, p3, p1}, Lcom/join/mgps/customview/DragView$b;-><init>(Lcom/join/mgps/customview/DragView;ZI)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getStatusBarHeight()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/customview/DragView;->m:Z

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/join/mgps/customview/DragView;->d:I

    sub-int/2addr v0, v3

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/join/mgps/customview/DragView;->e:I

    sub-int/2addr v3, v4

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v0

    iput v4, p0, Lcom/join/mgps/customview/DragView;->f:I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, p0, Lcom/join/mgps/customview/DragView;->g:I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v3

    .line 9
    iget v3, p0, Lcom/join/mgps/customview/DragView;->f:I

    if-gez v3, :cond_1

    .line 10
    iput v2, p0, Lcom/join/mgps/customview/DragView;->f:I

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v4, v2, v3

    .line 12
    :cond_1
    iget v2, p0, Lcom/join/mgps/customview/DragView;->a:I

    if-le v4, v2, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int v3, v2, v3

    iput v3, p0, Lcom/join/mgps/customview/DragView;->f:I

    move v4, v2

    .line 14
    :cond_2
    iget v2, p0, Lcom/join/mgps/customview/DragView;->g:I

    iget v3, p0, Lcom/join/mgps/customview/DragView;->o:I

    if-ge v2, v3, :cond_3

    .line 15
    iput v3, p0, Lcom/join/mgps/customview/DragView;->g:I

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v3

    .line 17
    :cond_3
    iget v2, p0, Lcom/join/mgps/customview/DragView;->b:I

    if-le v0, v2, :cond_4

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Lcom/join/mgps/customview/DragView;->g:I

    move v0, v2

    .line 19
    :cond_4
    iget v2, p0, Lcom/join/mgps/customview/DragView;->f:I

    iget v3, p0, Lcom/join/mgps/customview/DragView;->g:I

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/DragView;->d:I

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/DragView;->e:I

    goto :goto_0

    .line 22
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/customview/DragView;->m:Z

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcom/join/mgps/customview/DragView;->h:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    iget v4, p0, Lcom/join/mgps/customview/DragView;->g:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/DragView;->k:I

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/DragView;->l:I

    .line 28
    iget p2, p0, Lcom/join/mgps/customview/DragView;->i:I

    iget v0, p0, Lcom/join/mgps/customview/DragView;->k:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v0, 0x6

    if-ge p2, v0, :cond_7

    iget p2, p0, Lcom/join/mgps/customview/DragView;->j:I

    iget v4, p0, Lcom/join/mgps/customview/DragView;->l:I

    sub-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p2, v0, :cond_7

    return v2

    .line 29
    :cond_7
    iget p2, p0, Lcom/join/mgps/customview/DragView;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p2, p1

    iget p1, p0, Lcom/join/mgps/customview/DragView;->a:I

    div-int/lit8 v0, p1, 0x2

    if-ge p2, v0, :cond_8

    .line 30
    iget p2, p0, Lcom/join/mgps/customview/DragView;->f:I

    div-int/2addr p1, v3

    invoke-virtual {p0, p2, p1, v1}, Lcom/join/mgps/customview/DragView;->f(IIZ)V

    goto :goto_0

    .line 31
    :cond_8
    iget p2, p0, Lcom/join/mgps/customview/DragView;->f:I

    div-int/2addr p1, v3

    invoke-virtual {p0, p2, p1, v2}, Lcom/join/mgps/customview/DragView;->f(IIZ)V

    goto :goto_0

    .line 32
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/DragView;->d:I

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/DragView;->e:I

    .line 34
    iget p2, p0, Lcom/join/mgps/customview/DragView;->d:I

    iput p2, p0, Lcom/join/mgps/customview/DragView;->i:I

    .line 35
    iput p1, p0, Lcom/join/mgps/customview/DragView;->j:I

    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/DragView;->n:Lcom/join/mgps/customview/DragView$c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/DragView;->n:Lcom/join/mgps/customview/DragView$c;

    invoke-interface {v0}, Lcom/join/mgps/customview/DragView$c;->a()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>onTouchEvent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return v1

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnDragViewClickListener(Lcom/join/mgps/customview/DragView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DragView;->n:Lcom/join/mgps/customview/DragView$c;

    return-void
.end method
