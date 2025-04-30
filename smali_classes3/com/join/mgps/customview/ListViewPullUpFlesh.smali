.class public Lcom/join/mgps/customview/ListViewPullUpFlesh;
.super Landroid/widget/ListView;
.source "ListViewPullUpFlesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ListViewPullUpFlesh$a;
    }
.end annotation


# static fields
.field private static final u:I = 0x0

.field private static final v:I = 0x1

.field private static final w:I = 0x2

.field private static final x:I = 0x3

.field private static final y:F = 3.0f

.field private static z:Z


# instance fields
.field a:I

.field b:I

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/view/animation/Animation;

.field private m:Landroid/view/animation/Animation;

.field private n:Z

.field private o:I

.field p:Z

.field q:F

.field r:F

.field s:F

.field t:Lcom/join/mgps/customview/ListViewPullUpFlesh$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    .line 3
    iput p2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 12

    .line 1
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v7, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->l:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x96

    .line 2
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->l:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->l:Landroid/view/animation/Animation;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v6, 0x0

    const/high16 v7, -0x3ccc0000    # -180.0f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->m:Landroid/view/animation/Animation;

    .line 6
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->m:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c03ad

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    const v0, 0x7f090110

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/widget/ImageView;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->m:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    const v0, 0x7f090c57

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->e:Landroid/widget/ProgressBar;

    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    const v0, 0x7f09100f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->f:Landroid/widget/TextView;

    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    const v0, 0x7f090b16

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->h:Landroid/widget/TextView;

    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    const v0, 0x7f091222

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->g:Landroid/widget/TextView;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->f:Landroid/widget/TextView;

    const-string v0, "\u4e0a\u62c9\u5237\u65b0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/widget/ImageView;

    const/16 v0, 0x46

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/widget/ImageView;

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->b(Landroid/view/View;)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->k:I

    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    mul-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    const/4 p1, 0x3

    .line 26
    iput p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    .line 27
    iput-boolean v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->n:Z

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    .line 5
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    iget v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->k:I

    mul-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    sget-boolean v0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->z:Z

    if-eqz v0, :cond_4

    .line 9
    sput-boolean v2, Lcom/join/mgps/customview/ListViewPullUpFlesh;->z:Z

    :cond_4
    :goto_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->t:Lcom/join/mgps/customview/ListViewPullUpFlesh$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/join/mgps/customview/ListViewPullUpFlesh$a;->a()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->t:Lcom/join/mgps/customview/ListViewPullUpFlesh$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/join/mgps/customview/ListViewPullUpFlesh$a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 4

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6700\u540e\u5237\u65b0\u65f6\u95f4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->b:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->n:Z

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v1, :cond_9

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v0, v5, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v1

    if-ne v0, v5, :cond_e

    .line 7
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    .line 9
    iget-boolean v5, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:Z

    if-nez v5, :cond_2

    .line 10
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->q:F

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:Z

    .line 12
    :cond_2
    iget v5, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    if-eq v5, v4, :cond_e

    const/4 v4, 0x0

    if-ne v5, v3, :cond_3

    .line 13
    iget v5, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->q:F

    sub-float/2addr v5, v0

    cmpl-float v0, v5, v4

    if-lez v0, :cond_3

    .line 14
    iput v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 16
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    const/high16 v5, 0x40400000    # 3.0f

    if-nez v0, :cond_5

    .line 17
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->q:F

    iget v6, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    sub-float v7, v0, v6

    div-float/2addr v7, v5

    iget v8, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->k:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    iget v7, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    sub-float/2addr v7, v6

    const/high16 v8, 0x41100000    # 9.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_4

    .line 18
    iput v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    goto :goto_0

    :cond_4
    sub-float/2addr v0, v6

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_5

    .line 20
    iput v3, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    .line 21
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 22
    :cond_5
    :goto_0
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    if-ne v0, v1, :cond_7

    .line 23
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    iget v6, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    sub-float/2addr v0, v6

    const/high16 v7, -0x3f600000    # -5.0f

    cmpg-float v0, v0, v7

    if-gez v0, :cond_6

    .line 24
    iput v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    .line 25
    sput-boolean v1, Lcom/join/mgps/customview/ListViewPullUpFlesh;->z:Z

    .line 26
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    goto :goto_1

    .line 27
    :cond_6
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->q:F

    sub-float/2addr v6, v0

    cmpl-float v0, v6, v4

    if-ltz v0, :cond_7

    .line 28
    iput v3, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    .line 29
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 30
    :cond_7
    :goto_1
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    if-eqz v0, :cond_8

    if-ne v0, v1, :cond_e

    :cond_8
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    iget v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->q:F

    cmpg-float v3, v0, v1

    if-gez v3, :cond_e

    .line 31
    iget-object v3, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:Landroid/view/View;

    sub-float/2addr v1, v0

    div-float/2addr v1, v5

    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->k:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {v3, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    .line 32
    :cond_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    if-eq v0, v4, :cond_e

    if-nez v0, :cond_b

    .line 34
    iput v3, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    .line 35
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v0, v3, :cond_a

    .line 36
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_b

    .line 37
    :cond_a
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 38
    :cond_b
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    if-ne v0, v1, :cond_e

    .line 39
    iput v4, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:I

    .line 40
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v0, v3, :cond_c

    .line 41
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_e

    .line 42
    :cond_c
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 43
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->f()V

    goto :goto_2

    .line 44
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    .line 45
    iput-boolean v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:Z

    .line 46
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_e

    .line 47
    iget-boolean v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:Z

    if-nez v0, :cond_e

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->q:F

    .line 49
    iput-boolean v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    :cond_e
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setRefreshListener(Lcom/join/mgps/customview/ListViewPullUpFlesh$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->t:Lcom/join/mgps/customview/ListViewPullUpFlesh$a;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->n:Z

    return-void
.end method
