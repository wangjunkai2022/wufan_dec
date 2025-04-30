.class public Lcom/join/mgps/customview/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# static fields
.field private static final l:I = -0x2

.field private static final m:I = 0x0

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field public static final p:Ljava/lang/String; = "RoundedImageView"

.field public static final q:F = 6.0f

.field public static final r:F

.field public static final s:Landroid/graphics/Shader$TileMode;

.field private static final t:[Landroid/widget/ImageView$ScaleType;

.field static final synthetic u:Z


# instance fields
.field private a:F

.field private b:F

.field private c:Landroid/content/res/ColorStateList;

.field private d:Z

.field private e:Z

.field private f:Landroid/graphics/Shader$TileMode;

.field private g:Landroid/graphics/Shader$TileMode;

.field private h:I

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/join/mgps/customview/RoundedImageView;

    .line 2
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/join/mgps/customview/RoundedImageView;->s:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/join/mgps/customview/RoundedImageView;->t:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/RoundedImageView;->a:F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/RoundedImageView;->b:F

    const/high16 p1, -0x1000000

    .line 4
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->c:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/RoundedImageView;->d:Z

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/RoundedImageView;->e:Z

    .line 7
    sget-object p1, Lcom/join/mgps/customview/RoundedImageView;->s:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->f:Landroid/graphics/Shader$TileMode;

    .line 8
    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->g:Landroid/graphics/Shader$TileMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 11
    iput v0, p0, Lcom/join/mgps/customview/RoundedImageView;->a:F

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/join/mgps/customview/RoundedImageView;->b:F

    const/high16 v2, -0x1000000

    .line 13
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/customview/RoundedImageView;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    .line 14
    iput-boolean v3, p0, Lcom/join/mgps/customview/RoundedImageView;->d:Z

    .line 15
    iput-boolean v3, p0, Lcom/join/mgps/customview/RoundedImageView;->e:Z

    .line 16
    sget-object v4, Lcom/join/mgps/customview/RoundedImageView;->s:Landroid/graphics/Shader$TileMode;

    iput-object v4, p0, Lcom/join/mgps/customview/RoundedImageView;->f:Landroid/graphics/Shader$TileMode;

    .line 17
    iput-object v4, p0, Lcom/join/mgps/customview/RoundedImageView;->g:Landroid/graphics/Shader$TileMode;

    .line 18
    sget-object v4, Lcom/join/android/app/mgsim/wufun/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v4, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 19
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_0

    .line 20
    sget-object v4, Lcom/join/mgps/customview/RoundedImageView;->t:[Landroid/widget/ImageView$ScaleType;

    aget-object p3, v4, p3

    invoke-virtual {p0, p3}, Lcom/join/mgps/customview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 21
    :cond_0
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p3}, Lcom/join/mgps/customview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    const/4 p3, 0x3

    .line 22
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/join/mgps/customview/RoundedImageView;->a:F

    const/4 p3, 0x2

    .line 23
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/join/mgps/customview/RoundedImageView;->b:F

    .line 24
    iget p3, p0, Lcom/join/mgps/customview/RoundedImageView;->a:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_1

    .line 25
    iput v0, p0, Lcom/join/mgps/customview/RoundedImageView;->a:F

    :cond_1
    cmpg-float p2, p2, v1

    if-gez p2, :cond_2

    .line 26
    iput v1, p0, Lcom/join/mgps/customview/RoundedImageView;->b:F

    :cond_2
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/customview/RoundedImageView;->c:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_3

    .line 28
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/customview/RoundedImageView;->c:Landroid/content/res/ColorStateList;

    :cond_3
    const/4 p3, 0x4

    .line 29
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/join/mgps/customview/RoundedImageView;->e:Z

    const/4 p3, 0x5

    .line 30
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/join/mgps/customview/RoundedImageView;->d:Z

    const/4 p3, 0x6

    const/4 v0, -0x2

    .line 31
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-eq p3, v0, :cond_4

    .line 32
    invoke-static {p3}, Lcom/join/mgps/customview/RoundedImageView;->d(I)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 33
    invoke-static {p3}, Lcom/join/mgps/customview/RoundedImageView;->d(I)Landroid/graphics/Shader$TileMode;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/join/mgps/customview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_4
    const/4 p3, 0x7

    .line 34
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-eq p3, v0, :cond_5

    .line 35
    invoke-static {p3}, Lcom/join/mgps/customview/RoundedImageView;->d(I)Landroid/graphics/Shader$TileMode;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/join/mgps/customview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    :cond_5
    const/16 p3, 0x8

    .line 36
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-eq p3, v0, :cond_6

    .line 37
    invoke-static {p3}, Lcom/join/mgps/customview/RoundedImageView;->d(I)Landroid/graphics/Shader$TileMode;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/join/mgps/customview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 38
    :cond_6
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->h()V

    .line 39
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/RoundedImageView;->g(Z)V

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static d(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method private e()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v2, p0, Lcom/join/mgps/customview/RoundedImageView;->h:I

    if-eqz v2, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find resource: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/customview/RoundedImageView;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/RoundedImageView;->h:I

    .line 6
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/join/mgps/customview/k0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/join/mgps/customview/k0;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/join/mgps/customview/k0;

    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->k:Landroid/widget/ImageView$ScaleType;

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/k0;->q(Landroid/widget/ImageView$ScaleType;)Lcom/join/mgps/customview/k0;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/customview/RoundedImageView;->a:F

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/k0;->o(F)Lcom/join/mgps/customview/k0;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/customview/RoundedImageView;->b:F

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/k0;->n(F)Lcom/join/mgps/customview/k0;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->c:Landroid/content/res/ColorStateList;

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/k0;->m(Landroid/content/res/ColorStateList;)Lcom/join/mgps/customview/k0;

    move-result-object p1

    iget-boolean v0, p0, Lcom/join/mgps/customview/RoundedImageView;->d:Z

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/k0;->p(Z)Lcom/join/mgps/customview/k0;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->f:Landroid/graphics/Shader$TileMode;

    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/k0;->r(Landroid/graphics/Shader$TileMode;)Lcom/join/mgps/customview/k0;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->g:Landroid/graphics/Shader$TileMode;

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/k0;->s(Landroid/graphics/Shader$TileMode;)Lcom/join/mgps/customview/k0;

    goto :goto_1

    .line 10
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 11
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/join/mgps/customview/RoundedImageView;->f(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private g(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/RoundedImageView;->e:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/join/mgps/customview/k0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/RoundedImageView;->f(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/RoundedImageView;->d:Z

    return v0
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/RoundedImageView;->e:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/join/mgps/customview/RoundedImageView;->e:Z

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->g(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/RoundedImageView;->e:Z

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/RoundedImageView;->b:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/RoundedImageView;->a:F

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->k:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->f:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->g:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->g(Z)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->c:Landroid/content/res/ColorStateList;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->h()V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->g(Z)V

    .line 6
    iget p1, p0, Lcom/join/mgps/customview/RoundedImageView;->b:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/RoundedImageView;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/RoundedImageView;->b:F

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->h()V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->g(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->setBorderWidth(F)V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/RoundedImageView;->a:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/RoundedImageView;->a:F

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->h()V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->g(Z)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->setCornerRadius(F)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/join/mgps/customview/RoundedImageView;->h:I

    .line 2
    invoke-static {p1}, Lcom/join/mgps/customview/k0;->b(Landroid/graphics/Bitmap;)Lcom/join/mgps/customview/k0;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->h()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/join/mgps/customview/RoundedImageView;->h:I

    .line 2
    invoke-static {p1}, Lcom/join/mgps/customview/k0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->h()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/RoundedImageView;->h:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/RoundedImageView;->h:I

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->h()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/RoundedImageView;->d:Z

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->h()V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->g(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->k:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->k:Landroid/widget/ImageView$ScaleType;

    .line 3
    sget-object v0, Lcom/join/mgps/customview/RoundedImageView$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 5
    :pswitch_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->h()V

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->g(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->f:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->f:Landroid/graphics/Shader$TileMode;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->h()V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->g(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/RoundedImageView;->g:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/RoundedImageView;->g:Landroid/graphics/Shader$TileMode;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/RoundedImageView;->h()V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/RoundedImageView;->g(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
