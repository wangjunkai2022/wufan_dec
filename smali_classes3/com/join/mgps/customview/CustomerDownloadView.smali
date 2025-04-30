.class public Lcom/join/mgps/customview/CustomerDownloadView;
.super Landroid/widget/RelativeLayout;
.source "CustomerDownloadView.java"


# static fields
.field public static final p:Ljava/lang/String;

.field private static final q:I = 0x12

.field private static final r:I = 0x12

.field private static final s:I = 0x5

.field private static final t:I = 0x5

.field private static final u:I = 0x1c

.field private static final v:I = 0x5


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ImageView;

.field private g:F

.field h:Landroid/view/View;

.field i:Landroid/content/Context;

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/customview/CustomerDownloadView;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    const/4 p2, 0x2

    .line 3
    iput p2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->j:I

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->k:I

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->n:I

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CustomerDownloadView;->b(Landroid/content/Context;)V

    .line 7
    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->i:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c05e3

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->h:Landroid/view/View;

    const p2, 0x7f0903cf

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->h:Landroid/view/View;

    const p2, 0x7f0903d0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->e:Landroid/widget/ImageView;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->h:Landroid/view/View;

    const p2, 0x7f0903d3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->a:Landroid/widget/TextView;

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->h:Landroid/view/View;

    const p2, 0x7f0903d2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->h:Landroid/view/View;

    const p2, 0x7f0903d1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->h:Landroid/view/View;

    const p2, 0x7f0903d4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->f:Landroid/widget/ImageView;

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/j;->g()F

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    .line 3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4
    iget v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->m:I

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->l:I

    if-eqz v2, :cond_0

    .line 5
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 6
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    const/high16 v2, 0x41900000    # 18.0f

    mul-float v3, v1, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 8
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_0
    const/high16 v1, 0x40a00000    # 5.0f

    .line 9
    iget v2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 10
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    const v2, 0x7f08039f

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->f:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->f:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->o:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->k:I

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/CustomerDownloadView;->e()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/CustomerDownloadView;->f()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    iget v5, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    const/high16 v6, 0x41e00000    # 28.0f

    mul-float v5, v5, v6

    const/4 v7, 0x1

    aput v5, v2, v7

    const-string v5, "translationY"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 3
    new-instance v2, Lcom/join/mgps/customview/CustomerDownloadView$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/CustomerDownloadView$a;-><init>(Lcom/join/mgps/customview/CustomerDownloadView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    new-array v1, v1, [F

    aput v4, v1, v3

    iget v3, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    mul-float v3, v3, v6

    aput v3, v1, v7

    invoke-static {v2, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 6
    new-instance v2, Lcom/join/mgps/customview/CustomerDownloadView$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/CustomerDownloadView$b;-><init>(Lcom/join/mgps/customview/CustomerDownloadView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 9
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x3e8

    .line 10
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 11
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    const v2, 0x7f080763

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLinePointAnimator: \u79fb\u52a8\u8ddd\u79bb\uff1a\uff1a\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "::::\u7ebf\u957f\u5ea6::::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":::\u79fb\u52a8\u8ddd\u79bb::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->l:I

    if-eqz v0, :cond_0

    int-to-float v0, v0

    .line 7
    iget v2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    mul-float v2, v2, v4

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41500000    # 13.0f

    .line 8
    iget v2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    mul-float v0, v0, v2

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->e:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    const-string v0, "translationX"

    invoke-static {v2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v1, -0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 12
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->o:Landroid/animation/AnimatorSet;

    .line 13
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->o:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->o:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->o:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->e:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    const v1, 0x7f080765

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDownloadGameNum(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadNumAnimMarginLeft()V

    :cond_1
    return-void
.end method

.method public setDownloadIconRepeatCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->j:I

    return-void
.end method

.method public setDownloadIconRes(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->n:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setDownloadIconSize(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float p1, p1

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->l:I

    int-to-float p2, p2

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 3
    iput p2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->m:I

    .line 4
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 5
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDownloadLineRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setDownloadLineSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float p1, p1

    .line 5
    iget v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDownloadNumAnimMarginLeft()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDownloadNumAnimMarginLeft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-nez v1, :cond_0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 4
    iget v2, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setDownloadNumFontColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setDownloadNumFontSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setDownloadNumTextViewSize(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomerDownloadView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float p1, p1

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->g:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float p1, p2

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 3
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
