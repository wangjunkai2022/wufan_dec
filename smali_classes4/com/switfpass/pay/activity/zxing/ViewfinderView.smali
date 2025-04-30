.class public final Lcom/switfpass/pay/activity/zxing/ViewfinderView;
.super Landroid/view/View;


# static fields
.field private static final n:[I

.field private static o:F


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Bitmap;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:I

.field private h:I

.field private i:Ljava/util/Collection;

.field private j:Ljava/util/Collection;

.field private k:I

.field private l:Landroid/graphics/Rect;

.field private m:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x80

    aput v3, v0, v1

    const/4 v1, 0x3

    const/16 v4, 0xc0

    aput v4, v0, v1

    const/4 v1, 0x4

    const/16 v5, 0xff

    aput v5, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    sput-object v0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->n:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->k:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->c:I

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->d:I

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->e:I

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->f:I

    iput p2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->g:I

    new-instance p2, Ljava/util/HashSet;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->i:Ljava/util/Collection;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f020052

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->o:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->h:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->i:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-static {}, Lcom/switfpass/pay/activity/zxing/camera/a;->c()Lcom/switfpass/pay/activity/zxing/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/zxing/camera/a;->d()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->d:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->c:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v9, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->b:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    const/16 v9, 0xff

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    iget v4, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->h:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0xa

    int-to-float v5, v2

    iget-object v10, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->h:I

    add-int/2addr v2, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->h:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0xa

    int-to-float v5, v2

    iget-object v10, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v0, -0xa

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    int-to-float v4, v0

    iget v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->h:I

    add-int/2addr v2, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v2, -0xa

    int-to-float v3, v3

    iget v4, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->h:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->h:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->h:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v2, -0xa

    int-to-float v3, v3

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v0, -0xa

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->h:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->g:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->n:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->g:I

    iget v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->k:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->k:I

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->l:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x6

    add-int v4, v2, v0

    add-int/lit8 v4, v4, -0x6

    iget v5, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->m:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->k:I

    :goto_1
    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->i:Ljava/util/Collection;

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->j:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v8, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->j:Ljava/util/Collection;

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->i:Ljava/util/Collection;

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->j:Ljava/util/Collection;

    iget-object v2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->f:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    :goto_3
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->f:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPoint;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    add-float/2addr v3, v1

    const/high16 v1, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    :goto_5
    const-wide/16 v1, 0x64

    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    return-void

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/ResultPoint;

    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float/2addr v4, v2

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v5, p0, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method
