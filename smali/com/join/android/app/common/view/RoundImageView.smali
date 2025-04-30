.class public Lcom/join/android/app/common/view/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private b:F

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/view/RoundImageView;->a:Landroid/graphics/RectF;

    const/high16 p1, 0x40c00000    # 6.0f

    .line 9
    iput p1, p0, Lcom/join/android/app/common/view/RoundImageView;->b:F

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    .line 12
    invoke-direct {p0}, Lcom/join/android/app/common/view/RoundImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/view/RoundImageView;->a:Landroid/graphics/RectF;

    const/high16 p1, 0x40c00000    # 6.0f

    .line 3
    iput p1, p0, Lcom/join/android/app/common/view/RoundImageView;->b:F

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    .line 6
    invoke-direct {p0}, Lcom/join/android/app/common/view/RoundImageView;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 6
    iget v1, p0, Lcom/join/android/app/common/view/RoundImageView;->b:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/join/android/app/common/view/RoundImageView;->b:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/RoundImageView;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/android/app/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/view/RoundImageView;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/join/android/app/common/view/RoundImageView;->b:F

    iget-object v3, p0, Lcom/join/android/app/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/view/RoundImageView;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/android/app/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    .line 4
    iget-object p3, p0, Lcom/join/android/app/common/view/RoundImageView;->a:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
