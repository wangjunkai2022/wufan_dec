.class public Lcom/join/mgps/customview/EqualizerViewLoding;
.super Landroid/widget/LinearLayout;
.source "EqualizerViewLoding.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/animation/AnimatorSet;

.field f:Landroid/animation/AnimatorSet;

.field g:Ljava/lang/Boolean;

.field h:I

.field i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->g:Ljava/lang/Boolean;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/EqualizerViewLoding;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->g:Ljava/lang/Boolean;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/EqualizerViewLoding;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/EqualizerViewLoding;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->g:Ljava/lang/Boolean;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/EqualizerViewLoding;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/customview/EqualizerViewLoding;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c05e6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f090ab5

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->a:Landroid/view/View;

    const v0, 0x7f090ab6

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->b:Landroid/view/View;

    const v0, 0x7f090ab8

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->d:Landroid/view/View;

    const v0, 0x7f090ab7

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->c:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->a:Landroid/view/View;

    iget v1, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->b:Landroid/view/View;

    iget v1, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->c:Landroid/view/View;

    iget v1, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->d:Landroid/view/View;

    iget v1, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/EqualizerViewLoding;->e()V

    return-void
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->EqualizerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, -0x1000000

    .line 2
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->h:I

    const/16 p2, 0xbb8

    .line 3
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    throw p2
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/EqualizerViewLoding$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/EqualizerViewLoding$a;-><init>(Lcom/join/mgps/customview/EqualizerViewLoding;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/EqualizerViewLoding$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/EqualizerViewLoding$b;-><init>(Lcom/join/mgps/customview/EqualizerViewLoding;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/EqualizerViewLoding$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/EqualizerViewLoding$c;-><init>(Lcom/join/mgps/customview/EqualizerViewLoding;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/EqualizerViewLoding$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/EqualizerViewLoding$d;-><init>(Lcom/join/mgps/customview/EqualizerViewLoding;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->g:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->e:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->a:Landroid/view/View;

    const/16 v1, 0x1a

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, -0x1

    .line 4
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 5
    iget-object v4, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->b:Landroid/view/View;

    new-array v5, v1, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 7
    iget-object v5, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->c:Landroid/view/View;

    new-array v6, v1, [F

    fill-array-data v6, :array_2

    invoke-static {v5, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 8
    invoke-virtual {v5, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 9
    iget-object v6, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->d:Landroid/view/View;

    new-array v7, v1, [F

    fill-array-data v7, :array_3

    invoke-static {v6, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 11
    iget-object v6, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->a:Landroid/view/View;

    new-array v7, v1, [F

    fill-array-data v7, :array_4

    const-string v8, "alpha"

    invoke-static {v6, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 12
    invoke-virtual {v6, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 13
    iget-object v7, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->a:Landroid/view/View;

    new-array v9, v1, [F

    fill-array-data v9, :array_5

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 14
    invoke-virtual {v7, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 15
    iget-object v9, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->a:Landroid/view/View;

    new-array v10, v1, [F

    fill-array-data v10, :array_6

    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 16
    invoke-virtual {v9, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 17
    iget-object v10, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->a:Landroid/view/View;

    new-array v1, v1, [F

    fill-array-data v1, :array_7

    invoke-static {v10, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 19
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->e:Landroid/animation/AnimatorSet;

    const/16 v8, 0x8

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v4, v8, v10

    const/4 v4, 0x1

    aput-object v5, v8, v4

    const/4 v4, 0x2

    aput-object v0, v8, v4

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v6, v8, v0

    const/4 v0, 0x5

    aput-object v7, v8, v0

    const/4 v0, 0x6

    aput-object v9, v8, v0

    const/4 v0, 0x7

    aput-object v1, v8, v0

    .line 20
    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->e:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->i:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->e:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 24
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 25
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f666666    # 0.9f
        0x3f333333    # 0.7f
        0x3f19999a    # 0.6f
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3dcccccd    # 0.1f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
    .end array-data

    :array_3
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_4
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f666666    # 0.9f
        0x3f333333    # 0.7f
        0x3f19999a    # 0.6f
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_5
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_6
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_7
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public f()V
    .locals 8

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->g:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->e:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->f:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->a:Landroid/view/View;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    aput v4, v2, v3

    const-string v5, "scaleY"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->b:Landroid/view/View;

    new-array v6, v1, [F

    aput v4, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 9
    iget-object v6, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->c:Landroid/view/View;

    new-array v7, v1, [F

    aput v4, v7, v3

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 10
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->f:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v4, v6, v3

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v0, v6, v1

    .line 11
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->f:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_1
    return-void
.end method
