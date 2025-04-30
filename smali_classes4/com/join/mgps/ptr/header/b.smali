.class public Lcom/join/mgps/ptr/header/b;
.super Landroid/graphics/drawable/Drawable;
.source "RentalsSunDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final A:F = 1.05f

.field private static final B:F = 0.22f

.field private static final C:F = 1.2f

.field private static final D:F = 1.3f

.field private static final E:F = 0.75f

.field private static final F:F = 1.2f

.field private static final G:F = 1.5f

.field private static final H:Landroid/view/animation/Interpolator;

.field private static final x:F = 0.3f

.field private static final y:I = 0x3e8

.field private static final z:F = 0.65f


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/graphics/Matrix;

.field private c:Landroid/view/animation/Animation;

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:I

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Bitmap;

.field private u:Z

.field private v:Landroid/content/Context;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/join/mgps/ptr/header/b;->H:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->m:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->p:F

    .line 4
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->q:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/ptr/header/b;->u:Z

    .line 6
    iput-object p1, p0, Lcom/join/mgps/ptr/header/b;->v:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/join/mgps/ptr/header/b;->a:Landroid/view/View;

    .line 8
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/b;->b:Landroid/graphics/Matrix;

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->f()V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->a()V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->k()V

    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080a84

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->r:Landroid/graphics/Bitmap;

    .line 2
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->e:I

    iget v2, p0, Lcom/join/mgps/ptr/header/b;->f:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->r:Landroid/graphics/Bitmap;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080057

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->t:Landroid/graphics/Bitmap;

    .line 4
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->e:I

    int-to-float v2, v1

    const v4, 0x3e6147ae    # 0.22f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->t:Landroid/graphics/Bitmap;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080a85

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->s:Landroid/graphics/Bitmap;

    .line 6
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->m:I

    invoke-static {v0, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->s:Landroid/graphics/Bitmap;

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->b:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->d:I

    iget v2, p0, Lcom/join/mgps/ptr/header/b;->w:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->p:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x3e99999a    # 0.3f

    sub-float v4, v2, v4

    const v5, 0x3f866666    # 1.05f

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_0

    const v6, 0x3f333333    # 0.7f

    div-float/2addr v4, v6

    const v6, 0x3d4cccc0    # 0.049999952f

    mul-float v4, v4, v6

    sub-float/2addr v5, v4

    .line 5
    :cond_0
    iget v4, p0, Lcom/join/mgps/ptr/header/b;->e:I

    int-to-float v6, v4

    mul-float v6, v6, v5

    int-to-float v4, v4

    sub-float/2addr v6, v4

    neg-float v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    .line 6
    iget v7, p0, Lcom/join/mgps/ptr/header/b;->g:F

    add-float/2addr v1, v7

    iget v7, p0, Lcom/join/mgps/ptr/header/b;->f:I

    int-to-float v7, v7

    sub-float v3, v5, v3

    mul-float v7, v7, v3

    div-float/2addr v7, v6

    sub-float/2addr v1, v7

    iget v3, p0, Lcom/join/mgps/ptr/header/b;->h:F

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    .line 7
    invoke-virtual {v0, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 8
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9
    iget-object v1, p0, Lcom/join/mgps/ptr/header/b;->r:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->b:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->p:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    const/high16 v3, 0x41100000    # 9.0f

    add-float/2addr v1, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    .line 4
    :cond_0
    iget v3, p0, Lcom/join/mgps/ptr/header/b;->m:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const v5, 0x3f99999a    # 1.2f

    .line 5
    iget v6, p0, Lcom/join/mgps/ptr/header/b;->n:F

    .line 6
    iget v7, p0, Lcom/join/mgps/ptr/header/b;->o:F

    iget v8, p0, Lcom/join/mgps/ptr/header/b;->w:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v9, v2, v1

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    const v8, 0x3e99999a    # 0.3f

    sub-float/2addr v1, v8

    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-lez v8, :cond_1

    const v8, 0x3f333333    # 0.7f

    div-float/2addr v1, v8

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v8, v8, v1

    sub-float v8, v2, v8

    const v9, 0x3e999998    # 0.29999995f

    mul-float v1, v1, v9

    add-float/2addr v5, v1

    mul-float v1, v3, v8

    sub-float v9, v3, v1

    add-float/2addr v9, v6

    sub-float/2addr v4, v8

    mul-float v7, v7, v4

    .line 7
    invoke-virtual {v0, v9, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 8
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    add-float/2addr v6, v3

    add-float/2addr v7, v1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    add-float/2addr v6, v3

    add-float/2addr v7, v3

    .line 10
    :goto_0
    iget-boolean v1, p0, Lcom/join/mgps/ptr/header/b;->u:Z

    if-eqz v1, :cond_2

    const/16 v3, -0x168

    goto :goto_1

    :cond_2
    const/16 v3, 0x168

    :goto_1
    int-to-float v3, v3

    iget v4, p0, Lcom/join/mgps/ptr/header/b;->q:F

    mul-float v3, v3, v4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    mul-float v3, v3, v2

    .line 11
    invoke-virtual {v0, v3, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 12
    iget-object v1, p0, Lcom/join/mgps/ptr/header/b;->s:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->b:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->d:I

    iget v2, p0, Lcom/join/mgps/ptr/header/b;->w:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->p:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x3e99999a    # 0.3f

    sub-float v5, v2, v4

    const v6, 0x3f99999a    # 1.2f

    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_0

    const v2, 0x3f333333    # 0.7f

    div-float/2addr v5, v2

    const v2, 0x3dccccc0    # 0.099999905f

    mul-float v2, v2, v5

    add-float/2addr v6, v2

    .line 5
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->j:F

    iget v4, p0, Lcom/join/mgps/ptr/header/b;->k:F

    sub-float/2addr v4, v2

    mul-float v4, v4, v5

    sub-float/2addr v2, v4

    .line 6
    iget v4, p0, Lcom/join/mgps/ptr/header/b;->l:F

    sub-float v5, v3, v5

    mul-float v4, v4, v5

    goto :goto_0

    :cond_0
    div-float/2addr v2, v4

    .line 7
    iget v4, p0, Lcom/join/mgps/ptr/header/b;->j:F

    .line 8
    iget v5, p0, Lcom/join/mgps/ptr/header/b;->l:F

    mul-float v2, v2, v5

    move v8, v4

    move v4, v2

    move v2, v8

    .line 9
    :goto_0
    iget v5, p0, Lcom/join/mgps/ptr/header/b;->e:I

    int-to-float v7, v5

    mul-float v7, v7, v6

    int-to-float v5, v5

    sub-float/2addr v7, v5

    neg-float v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    int-to-float v1, v1

    add-float/2addr v1, v2

    .line 10
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->i:I

    int-to-float v2, v2

    sub-float v3, v6, v3

    mul-float v2, v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    add-float/2addr v1, v4

    .line 11
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 12
    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13
    iget-object v1, p0, Lcom/join/mgps/ptr/header/b;->t:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/ptr/util/b;->c(Landroid/content/Context;)V

    const/high16 v0, 0x42f00000    # 120.0f

    .line 2
    invoke-static {v0}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/ptr/header/b;->w:I

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/join/mgps/ptr/header/b;->e:I

    int-to-float v0, v0

    const v1, 0x3f266666    # 0.65f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 4
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->f:I

    int-to-float v0, v0

    const v1, 0x3e8f5c29    # 0.28f

    mul-float v0, v0, v1

    neg-float v0, v0

    .line 5
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->g:F

    const/high16 v0, 0x41700000    # 15.0f

    .line 6
    invoke-static {v0}, Lcom/join/mgps/ptr/util/b;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/join/mgps/ptr/header/b;->h:F

    .line 7
    iget v0, p0, Lcom/join/mgps/ptr/header/b;->e:I

    int-to-float v0, v0

    const v1, 0x3e6147ae    # 0.22f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/ptr/header/b;->i:I

    .line 8
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->w:I

    int-to-float v2, v1

    int-to-float v3, v0

    const v4, 0x3f99999a    # 1.2f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    int-to-float v3, v1

    const v4, 0x3ed70a3d    # 0.42f

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/join/mgps/ptr/header/b;->j:F

    int-to-float v2, v1

    int-to-float v0, v0

    const v3, 0x3fa66666    # 1.3f

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    int-to-float v0, v1

    mul-float v0, v0, v4

    add-float/2addr v2, v0

    .line 9
    iput v2, p0, Lcom/join/mgps/ptr/header/b;->k:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 10
    invoke-static {v0}, Lcom/join/mgps/ptr/util/b;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/join/mgps/ptr/header/b;->l:F

    .line 11
    iget v0, p0, Lcom/join/mgps/ptr/header/b;->e:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/join/mgps/ptr/header/b;->n:F

    .line 12
    iget v0, p0, Lcom/join/mgps/ptr/header/b;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/join/mgps/ptr/header/b;->o:F

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->d:I

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->v:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/b$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/ptr/header/b$a;-><init>(Lcom/join/mgps/ptr/header/b;)V

    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->c:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->c:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->c:Landroid/view/animation/Animation;

    sget-object v1, Lcom/join/mgps/ptr/header/b;->H:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->c:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->w:I

    iget v2, p0, Lcom/join/mgps/ptr/header/b;->d:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/header/b;->b(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/header/b;->c(Landroid/graphics/Canvas;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/header/b;->d(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/header/b;->w:I

    return v0
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/b;->d:I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/header/b;->i(F)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/header/b;->j(F)V

    return-void
.end method

.method public i(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/b;->p:F

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/header/b;->j(F)V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/b;->q:F

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/header/b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 1
    iget p4, p0, Lcom/join/mgps/ptr/header/b;->f:I

    add-int/2addr p4, p2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ptr/header/b;->u:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/join/mgps/ptr/header/b;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ptr/header/b;->u:Z

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/ptr/header/b;->h()V

    return-void
.end method
