.class public Lcom/join/mgps/customview/ScrollViewContainer;
.super Landroid/widget/RelativeLayout;
.source "ScrollViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ScrollViewContainer$d;
    }
.end annotation


# static fields
.field public static final r:I = 0x0

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:F = 6.5f


# instance fields
.field private a:Z

.field private b:Landroid/view/VelocityTracker;

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:F

.field private l:Lcom/join/mgps/customview/ScrollViewContainer$d;

.field private m:F

.field private n:I

.field private o:Landroid/os/Handler;

.field private p:Landroid/view/View$OnTouchListener;

.field private q:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->a:Z

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->i:I

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 5
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$a;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->o:Landroid/os/Handler;

    .line 6
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$b;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->p:Landroid/view/View$OnTouchListener;

    .line 7
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$c;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->q:Landroid/view/View$OnTouchListener;

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/ScrollViewContainer;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->a:Z

    const/4 p2, 0x2

    .line 11
    iput p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->i:I

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 13
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$a;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->o:Landroid/os/Handler;

    .line 14
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$b;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->p:Landroid/view/View$OnTouchListener;

    .line 15
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$c;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->q:Landroid/view/View$OnTouchListener;

    .line 16
    invoke-direct {p0}, Lcom/join/mgps/customview/ScrollViewContainer;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->a:Z

    const/4 p2, 0x2

    .line 19
    iput p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->i:I

    .line 20
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 21
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$a;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->o:Landroid/os/Handler;

    .line 22
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$b;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->p:Landroid/view/View$OnTouchListener;

    .line 23
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$c;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->q:Landroid/view/View$OnTouchListener;

    .line 24
    invoke-direct {p0}, Lcom/join/mgps/customview/ScrollViewContainer;->m()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ScrollViewContainer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ScrollViewContainer;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/ScrollViewContainer;F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    return v0
.end method

.method static synthetic d(Lcom/join/mgps/customview/ScrollViewContainer;F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    return v0
.end method

.method static synthetic e(Lcom/join/mgps/customview/ScrollViewContainer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->i:I

    return p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/ScrollViewContainer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->i:I

    return p1
.end method

.method static synthetic g(Lcom/join/mgps/customview/ScrollViewContainer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:I

    return p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/ScrollViewContainer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    return p0
.end method

.method static synthetic i(Lcom/join/mgps/customview/ScrollViewContainer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    return p1
.end method

.method static synthetic j(Lcom/join/mgps/customview/ScrollViewContainer;)Lcom/join/mgps/customview/ScrollViewContainer$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:Lcom/join/mgps/customview/ScrollViewContainer$d;

    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/customview/ScrollViewContainer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->h:Z

    return p1
.end method

.method static synthetic l(Lcom/join/mgps/customview/ScrollViewContainer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->g:Z

    return p1
.end method

.method private m()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/customview/ScrollViewContainer$d;

    iget-object v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->o:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/ScrollViewContainer$d;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:Lcom/join/mgps/customview/ScrollViewContainer$d;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_9

    if-eq v0, v3, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->n:I

    goto/16 :goto_5

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->h:Z

    const/4 v3, 0x3

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->n:I

    if-nez v0, :cond_4

    .line 5
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/join/mgps/customview/ScrollViewContainer;->m:F

    sub-float/2addr v5, v6

    add-float/2addr v0, v5

    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    cmpl-float v5, v0, v4

    if-lez v5, :cond_2

    .line 6
    iput v4, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    goto :goto_0

    .line 8
    :cond_2
    iget v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:I

    neg-int v4, v1

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    neg-int v0, v1

    int-to-float v0, v0

    .line 9
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    .line 10
    iput v2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 11
    :cond_3
    :goto_0
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    const/high16 v1, -0x3f000000    # -8.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 12
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_2

    .line 13
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->g:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->n:I

    if-nez v0, :cond_7

    .line 14
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/join/mgps/customview/ScrollViewContainer;->m:F

    sub-float/2addr v5, v6

    add-float/2addr v0, v5

    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    .line 15
    iget v5, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:I

    neg-int v6, v5

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_5

    neg-int v0, v5

    int-to-float v0, v0

    .line 16
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    .line 17
    iput v2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    goto :goto_1

    :cond_5
    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    .line 18
    iput v4, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    .line 19
    iput v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 20
    :cond_6
    :goto_1
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    rsub-int/lit8 v1, v5, 0x8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 21
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_2

    .line 22
    :cond_7
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->n:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->n:I

    .line 23
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->m:F

    .line 24
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto/16 :goto_5

    .line 25
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->m:F

    .line 26
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Landroid/view/VelocityTracker;

    const/16 v5, 0x2bc

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 29
    iget v5, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    cmpl-float v6, v5, v4

    if-eqz v6, :cond_11

    iget v6, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_a

    goto :goto_5

    .line 30
    :cond_a
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43fa0000    # 500.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_c

    .line 31
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    iget v4, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:I

    neg-int v5, v4

    div-int/2addr v5, v3

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_b

    .line 32
    iput v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->i:I

    goto :goto_3

    :cond_b
    neg-int v1, v4

    .line 33
    div-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 34
    iput v2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->i:I

    goto :goto_3

    :cond_c
    cmpg-float v0, v0, v4

    if-gez v0, :cond_d

    .line 35
    iput v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->i:I

    goto :goto_3

    .line 36
    :cond_d
    iput v2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->i:I

    .line 37
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:Lcom/join/mgps/customview/ScrollViewContainer$d;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/customview/ScrollViewContainer$d;->b(J)V

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 40
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Landroid/view/VelocityTracker;

    if-nez v0, :cond_10

    .line 41
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Landroid/view/VelocityTracker;

    goto :goto_4

    .line 42
    :cond_10
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 43
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->m:F

    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 45
    iput v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->n:I

    .line 46
    :cond_11
    :goto_5
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->e:Landroid/view/View;

    iget p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    float-to-int p2, p2

    iget p3, p0, Lcom/join/mgps/customview/ScrollViewContainer;->d:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget p5, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    float-to-int p5, p5

    add-int/2addr p4, p5

    const/4 p5, 0x0

    .line 3
    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->f:Landroid/view/View;

    iget-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget p3, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    float-to-int p3, p3

    add-int/2addr p2, p3

    iget p3, p0, Lcom/join/mgps/customview/ScrollViewContainer;->d:I

    iget-object p4, p0, Lcom/join/mgps/customview/ScrollViewContainer;->e:Landroid/view/View;

    .line 5
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:F

    float-to-int v0, v0

    add-int/2addr p4, v0

    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->f:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p4, v0

    add-int/lit8 p4, p4, 0x64

    .line 7
    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->a:Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->d:I

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->e:Landroid/view/View;

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->f:Landroid/view/View;

    .line 8
    iget-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->q:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->e:Landroid/view/View;

    iget-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
