.class public Lcom/join/mgps/customview/DragImageView;
.super Landroid/widget/ImageView;
.source "DragImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/customview/DragImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/DragImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/DragImageView;->f:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 5
    invoke-static {p1, p2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/DragImageView;->f:I

    return-void
.end method

.method private a()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/DragImageView;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->f:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/join/mgps/customview/DragImageView;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    const/4 v5, 0x2

    if-eq v2, v4, :cond_8

    if-eq v2, v5, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_MOVE:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget v2, p0, Lcom/join/mgps/customview/DragImageView;->a:I

    if-lez v2, :cond_7

    iget v2, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    iput-boolean v4, p0, Lcom/join/mgps/customview/DragImageView;->e:Z

    .line 7
    iget v2, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    sub-int v2, v0, v2

    .line 8
    iget v5, p0, Lcom/join/mgps/customview/DragImageView;->d:I

    sub-int v5, v1, v5

    mul-int v6, v2, v2

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    int-to-double v6, v6

    .line 9
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/16 v7, 0xa

    if-gt v6, v7, :cond_2

    .line 10
    iput-boolean v3, p0, Lcom/join/mgps/customview/DragImageView;->e:Z

    goto/16 :goto_3

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result v6

    int-to-float v2, v2

    add-float/2addr v6, v2

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getY()F

    move-result v2

    int-to-float v5, v5

    add-float/2addr v2, v5

    const/4 v5, 0x0

    cmpg-float v7, v6, v5

    if-gez v7, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    .line 13
    :cond_3
    iget v7, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    iget v6, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 14
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getY()F

    move-result v7

    cmpg-float v7, v7, v5

    if-gez v7, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getY()F

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget v7, p0, Lcom/join/mgps/customview/DragImageView;->a:I

    int-to-float v8, v7

    cmpl-float v5, v5, v8

    if-lez v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v7, v2

    int-to-float v2, v7

    .line 15
    :cond_6
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setX(F)V

    .line 16
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 17
    iput v0, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 18
    iput v1, p0, Lcom/join/mgps/customview/DragImageView;->d:I

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDrag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/customview/DragImageView;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "getX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";getY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";parentWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 20
    :cond_7
    :goto_2
    iput-boolean v3, p0, Lcom/join/mgps/customview/DragImageView;->e:Z

    goto/16 :goto_3

    .line 21
    :cond_8
    invoke-direct {p0}, Lcom/join/mgps/customview/DragImageView;->a()Z

    move-result v1

    if-nez v1, :cond_c

    .line 22
    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    div-int/2addr v1, v5

    const-wide/16 v6, 0x1f4

    if-lt v0, v1, :cond_9

    .line 23
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    .line 25
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/join/mgps/customview/DragImageView;->f:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_9
    new-array v0, v5, [F

    .line 27
    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result v1

    aput v1, v0, v3

    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->f:I

    int-to-float v1, v1

    aput v1, v0, v4

    const-string v1, "x"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 28
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 29
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 30
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    .line 31
    :cond_a
    iput-boolean v3, p0, Lcom/join/mgps/customview/DragImageView;->e:Z

    .line 32
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 33
    iput v0, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 34
    iput v1, p0, Lcom/join/mgps/customview/DragImageView;->d:I

    .line 35
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 36
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/DragImageView;->a:I

    .line 38
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    .line 39
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_DOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/join/mgps/customview/DragImageView;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    const/4 v3, 0x1

    :cond_e
    return v3
.end method
