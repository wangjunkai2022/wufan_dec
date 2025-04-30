.class Lme/relex/circleindicator/BaseCircleIndicator;
.super Landroid/widget/LinearLayout;
.source "BaseCircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/circleindicator/BaseCircleIndicator$b;,
        Lme/relex/circleindicator/BaseCircleIndicator$a;
    }
.end annotation


# static fields
.field private static final l:I = 0x5


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:Landroid/animation/Animator;

.field protected g:Landroid/animation/Animator;

.field protected h:Landroid/animation/Animator;

.field protected i:Landroid/animation/Animator;

.field protected j:I

.field private k:Lme/relex/circleindicator/BaseCircleIndicator$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->a:I

    .line 3
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 4
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 5
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lme/relex/circleindicator/BaseCircleIndicator;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->a:I

    .line 9
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 10
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 11
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    .line 12
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 14
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->a:I

    .line 15
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 16
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 17
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    .line 18
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, -0x1

    .line 20
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->a:I

    .line 21
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 22
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 23
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    .line 24
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private f(Landroid/content/Context;Landroid/util/AttributeSet;)Lme/relex/circleindicator/b;
    .locals 3

    .line 1
    new-instance v0, Lme/relex/circleindicator/b;

    invoke-direct {v0}, Lme/relex/circleindicator/b;-><init>()V

    if-nez p2, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator:[I

    .line 3
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_width:I

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, v0, Lme/relex/circleindicator/b;->a:I

    .line 6
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_height:I

    .line 7
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, v0, Lme/relex/circleindicator/b;->b:I

    .line 8
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_margin:I

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, v0, Lme/relex/circleindicator/b;->c:I

    .line 10
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_animator:I

    sget v2, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, v0, Lme/relex/circleindicator/b;->d:I

    .line 11
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_animator_reverse:I

    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, v0, Lme/relex/circleindicator/b;->e:I

    .line 13
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_drawable:I

    sget v2, Lme/relex/circleindicator/R$drawable;->white_radius:I

    .line 14
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, v0, Lme/relex/circleindicator/b;->f:I

    .line 15
    sget v2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_drawable_unselected:I

    .line 16
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, v0, Lme/relex/circleindicator/b;->g:I

    .line 17
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_orientation:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Lme/relex/circleindicator/b;->h:I

    .line 18
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_gravity:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Lme/relex/circleindicator/b;->i:I

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private g(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->f(Landroid/content/Context;Landroid/util/AttributeSet;)Lme/relex/circleindicator/b;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->h(Lme/relex/circleindicator/b;)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 3
    iget v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4
    iget v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez p1, :cond_0

    .line 5
    iget p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->a:I

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 6
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->a:I

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 8
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 9
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 4
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->f:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->f:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 7
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->f:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_2
    iget v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iget v1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    iget-object v1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 12
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget v1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    iget-object v1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->f:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->f:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 16
    :cond_4
    iput p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    return-void
.end method

.method protected c(Lme/relex/circleindicator/b;)Landroid/animation/Animator;
    .locals 1

    .line 1
    iget v0, p1, Lme/relex/circleindicator/b;->e:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Lme/relex/circleindicator/b;->d:I

    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 3
    new-instance v0, Lme/relex/circleindicator/BaseCircleIndicator$b;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/BaseCircleIndicator$b;-><init>(Lme/relex/circleindicator/BaseCircleIndicator;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Lme/relex/circleindicator/b;->e:I

    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected d(Lme/relex/circleindicator/b;)Landroid/animation/Animator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Lme/relex/circleindicator/b;->d:I

    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public e(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 3
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 6
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2

    sub-int/2addr v0, p1

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    goto :goto_1

    :cond_2
    if-le p1, v0, :cond_3

    sub-int v0, p1, v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 10
    invoke-virtual {p0, v2}, Lme/relex/circleindicator/BaseCircleIndicator;->a(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v1, p1, :cond_6

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p2, v1, :cond_4

    .line 12
    iget v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 13
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 14
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 15
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_2

    .line 16
    :cond_4
    iget v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->e:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 18
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 19
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 20
    :goto_2
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:Lme/relex/circleindicator/BaseCircleIndicator$a;

    if-eqz v2, :cond_5

    .line 21
    invoke-interface {v2, v0, v1}, Lme/relex/circleindicator/BaseCircleIndicator$a;->a(Landroid/view/View;I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    :cond_6
    iput p2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    return-void
.end method

.method public h(Lme/relex/circleindicator/b;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x40a00000    # 5.0f

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 3
    iget v2, p1, Lme/relex/circleindicator/b;->a:I

    if-gez v2, :cond_0

    move v2, v0

    :cond_0
    iput v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 4
    iget v2, p1, Lme/relex/circleindicator/b;->b:I

    if-gez v2, :cond_1

    move v2, v0

    :cond_1
    iput v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 5
    iget v2, p1, Lme/relex/circleindicator/b;->c:I

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->a:I

    .line 6
    invoke-virtual {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->d(Lme/relex/circleindicator/b;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->f:Landroid/animation/Animator;

    .line 7
    invoke-virtual {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->d(Lme/relex/circleindicator/b;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    const-wide/16 v2, 0x0

    .line 8
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 9
    invoke-virtual {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->c(Lme/relex/circleindicator/b;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    .line 10
    invoke-virtual {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->c(Lme/relex/circleindicator/b;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    .line 11
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 12
    iget v0, p1, Lme/relex/circleindicator/b;->f:I

    if-nez v0, :cond_3

    sget v2, Lme/relex/circleindicator/R$drawable;->white_radius:I

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    iput v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    .line 13
    iget v2, p1, Lme/relex/circleindicator/b;->g:I

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->e:I

    .line 14
    iget v0, p1, Lme/relex/circleindicator/b;->h:I

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 15
    iget p1, p1, Lme/relex/circleindicator/b;->i:I

    if-ltz p1, :cond_6

    goto :goto_4

    :cond_6
    const/16 p1, 0x11

    :goto_4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method public setIndicatorCreatedListener(Lme/relex/circleindicator/BaseCircleIndicator$a;)V
    .locals 0
    .param p1    # Lme/relex/circleindicator/BaseCircleIndicator$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:Lme/relex/circleindicator/BaseCircleIndicator$a;

    return-void
.end method
