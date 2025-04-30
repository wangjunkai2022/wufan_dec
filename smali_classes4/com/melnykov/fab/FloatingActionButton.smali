.class public Lcom/melnykov/fab/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/melnykov/fab/FloatingActionButton$d;,
        Lcom/melnykov/fab/FloatingActionButton$c;,
        Lcom/melnykov/fab/FloatingActionButton$b;,
        Lcom/melnykov/fab/FloatingActionButton$TYPE;
    }
.end annotation


# static fields
.field private static final l:I = 0x1f4

.field public static final m:I = 0x0

.field public static final n:I = 0x1


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private final k:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/melnykov/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/melnykov/fab/FloatingActionButton;->k:Landroid/view/animation/Interpolator;

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->v(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p3, p0, Lcom/melnykov/fab/FloatingActionButton;->k:Landroid/view/animation/Interpolator;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->v(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private C(ZZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->a:Z

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_4

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/melnykov/fab/FloatingActionButton;->a:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton$a;-><init>(Lcom/melnykov/fab/FloatingActionButton;ZZ)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->getMarginRight()I

    move-result v0

    add-int/2addr p3, v0

    :goto_0
    if-eqz p2, :cond_3

    .line 8
    invoke-static {p0}, Lcom/nineoldandroids/view/b;->c(Landroid/view/View;)Lcom/nineoldandroids/view/b;

    move-result-object p2

    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/view/b;->r(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/b;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    .line 9
    invoke-virtual {p2, v0, v1}, Lcom/nineoldandroids/view/b;->q(J)Lcom/nineoldandroids/view/b;

    move-result-object p2

    int-to-float p3, p3

    .line 10
    invoke-virtual {p2, p3}, Lcom/nineoldandroids/view/b;->v(F)Lcom/nineoldandroids/view/b;

    goto :goto_1

    :cond_3
    int-to-float p2, p3

    .line 11
    invoke-static {p0, p2}, Lcom/nineoldandroids/view/a;->y(Landroid/view/View;F)V

    .line 12
    :goto_1
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->p()Z

    move-result p2

    if-nez p2, :cond_4

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_4
    return-void
.end method

.method private D()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a7

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2
    iget v3, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    invoke-direct {p0, v3}, Lcom/melnykov/fab/FloatingActionButton;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    const v2, -0x101009e

    aput v2, v1, v4

    .line 3
    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->e:I

    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    .line 4
    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->b:I

    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/melnykov/fab/FloatingActionButton;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/melnykov/fab/FloatingActionButton;->C(ZZZ)V

    return-void
.end method

.method private getMarginBottom()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getMarginRight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k(I)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 3
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-boolean p1, p0, Lcom/melnykov/fab/FloatingActionButton;->f:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->r()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->g:I

    if-nez v0, :cond_0

    sget v0, Lcom/melnykov/fab/R$drawable;->fab_shadow:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/melnykov/fab/R$drawable;->fab_shadow_mini:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    .line 7
    iget v7, p0, Lcom/melnykov/fab/FloatingActionButton;->h:I

    move-object v2, v0

    move v4, v7

    move v5, v7

    move v6, v7

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method private static l(I)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    .line 2
    aget v1, v0, p0

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    aput v1, v0, p0

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method private m(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private n(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private o(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method

.method private p()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private q()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private r()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private v(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->a:Z

    .line 2
    sget v1, Lcom/melnykov/fab/R$color;->material_blue_500:I

    invoke-direct {p0, v1}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->b:I

    .line 3
    invoke-static {v1}, Lcom/melnykov/fab/FloatingActionButton;->l(I)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    .line 4
    iget v1, p0, Lcom/melnykov/fab/FloatingActionButton;->b:I

    invoke-static {v1}, Lcom/melnykov/fab/FloatingActionButton;->y(I)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->d:I

    const/high16 v1, 0x1060000

    .line 5
    invoke-direct {p0, v1}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->e:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->g:I

    .line 7
    iput-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->f:Z

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/melnykov/fab/R$dimen;->fab_scroll_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->i:I

    .line 9
    sget v0, Lcom/melnykov/fab/R$dimen;->fab_shadow_size:I

    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->n(I)I

    move-result v0

    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->h:I

    .line 10
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sget v0, Lcom/melnykov/fab/R$anim;->fab_press_elevation:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->w(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    return-void
.end method

.method private w(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/melnykov/fab/R$styleable;->FloatingActionButton:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->o(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorNormal:I

    sget v0, Lcom/melnykov/fab/R$color;->material_blue_500:I

    .line 3
    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    move-result v0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->b:I

    .line 5
    sget v0, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorPressed:I

    .line 6
    invoke-static {p2}, Lcom/melnykov/fab/FloatingActionButton;->l(I)I

    move-result p2

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    .line 8
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorRipple:I

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->b:I

    .line 9
    invoke-static {v0}, Lcom/melnykov/fab/FloatingActionButton;->y(I)I

    move-result v0

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->d:I

    .line 11
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorDisabled:I

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->e:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->e:I

    .line 12
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_shadow:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/melnykov/fab/FloatingActionButton;->f:Z

    .line 13
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method private static y(I)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    .line 2
    aget v1, v0, p0

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v1, v1, v2

    aput v1, v0, p0

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method private z()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->j:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->h:I

    sub-int/2addr v1, v2

    .line 5
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v2

    .line 6
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v2

    .line 7
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v2

    .line 8
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->j:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->B(Z)V

    return-void
.end method

.method public B(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/melnykov/fab/FloatingActionButton;->C(ZZZ)V

    return-void
.end method

.method public b(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/melnykov/fab/FloatingActionButton;->d(Landroid/widget/AbsListView;Lcom/melnykov/fab/d;Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public c(Landroid/widget/AbsListView;Lcom/melnykov/fab/d;)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->d(Landroid/widget/AbsListView;Lcom/melnykov/fab/d;Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public d(Landroid/widget/AbsListView;Lcom/melnykov/fab/d;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$b;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$a;)V

    .line 2
    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$b;->h(Lcom/melnykov/fab/FloatingActionButton$b;Lcom/melnykov/fab/d;)V

    .line 3
    invoke-virtual {v0, p3}, Lcom/melnykov/fab/FloatingActionButton$b;->i(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/melnykov/fab/a;->f(Landroid/widget/AbsListView;)V

    .line 5
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->i:I

    invoke-virtual {v0, p2}, Lcom/melnykov/fab/a;->g(I)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/melnykov/fab/FloatingActionButton;->g(Landroidx/recyclerview/widget/RecyclerView;Lcom/melnykov/fab/d;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView;Lcom/melnykov/fab/d;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->g(Landroidx/recyclerview/widget/RecyclerView;Lcom/melnykov/fab/d;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView;Lcom/melnykov/fab/d;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$c;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$a;)V

    .line 2
    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$c;->e(Lcom/melnykov/fab/FloatingActionButton$c;Lcom/melnykov/fab/d;)V

    .line 3
    invoke-virtual {v0, p3}, Lcom/melnykov/fab/FloatingActionButton$c;->f(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 4
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->i:I

    invoke-virtual {v0, p2}, Lcom/melnykov/fab/c;->d(I)V

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public getColorNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->b:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    return v0
.end method

.method public getColorRipple()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->d:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->g:I

    return v0
.end method

.method public h(Lcom/melnykov/fab/ObservableScrollView;)V
    .locals 1
    .param p1    # Lcom/melnykov/fab/ObservableScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/melnykov/fab/FloatingActionButton;->j(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/d;Lcom/melnykov/fab/ObservableScrollView$a;)V

    return-void
.end method

.method public i(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/d;)V
    .locals 1
    .param p1    # Lcom/melnykov/fab/ObservableScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->j(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/d;Lcom/melnykov/fab/ObservableScrollView$a;)V

    return-void
.end method

.method public j(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/d;Lcom/melnykov/fab/ObservableScrollView$a;)V
    .locals 2
    .param p1    # Lcom/melnykov/fab/ObservableScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$d;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$a;)V

    .line 2
    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$d;->e(Lcom/melnykov/fab/FloatingActionButton$d;Lcom/melnykov/fab/d;)V

    .line 3
    invoke-virtual {v0, p3}, Lcom/melnykov/fab/FloatingActionButton$d;->f(Lcom/melnykov/fab/ObservableScrollView$a;)V

    .line 4
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->i:I

    invoke-virtual {v0, p2}, Lcom/melnykov/fab/e;->d(I)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/melnykov/fab/ObservableScrollView;->setOnScrollChangedListener(Lcom/melnykov/fab/ObservableScrollView$a;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->g:I

    if-nez p2, :cond_0

    sget p2, Lcom/melnykov/fab/R$dimen;->fab_size_normal:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/melnykov/fab/R$dimen;->fab_size_mini:I

    :goto_0
    invoke-direct {p0, p2}, Lcom/melnykov/fab/FloatingActionButton;->n(I)I

    .line 3
    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->f:Z

    return v0
.end method

.method public setColorNormal(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->b:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->b:I

    .line 3
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setColorPressed(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    .line 3
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setColorRipple(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->d:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->d:I

    .line 3
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    :cond_0
    return-void
.end method

.method public setColorRippleResId(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setColorRipple(I)V

    return-void
.end method

.method public setShadow(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->f:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/melnykov/fab/FloatingActionButton;->f:Z

    .line 3
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->g:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->g:I

    .line 3
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->u(Z)V

    return-void
.end method

.method public u(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v0}, Lcom/melnykov/fab/FloatingActionButton;->C(ZZZ)V

    return-void
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->a:Z

    return v0
.end method
