.class public Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;
.super Landroid/view/View;
.source "FaceTransferViewfinderView.java"


# static fields
.field private static final l:Ljava/lang/String; = "log"

.field private static final m:J = 0xaL

.field private static final n:I = 0xff

.field private static final o:I = 0xa

.field private static final p:I = 0x6

.field private static final q:I = 0x5

.field private static final r:I = 0x5

.field private static s:F = 0.0f

.field private static final t:I = 0xf

.field private static final u:I = 0x1e


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Bitmap;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->s:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 3
    iput p1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->a:I

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0603ce

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->f:I

    const p2, 0x7f060383

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->g:I

    const p2, 0x7f060372

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->h:I

    .line 9
    new-instance p1, Ljava/util/HashSet;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->i:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->i:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->e:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->e:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/c;->e()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->k:Z

    const/4 v8, 0x1

    if-nez v0, :cond_1

    .line 3
    iput-boolean v8, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->k:Z

    .line 4
    iget v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:I

    .line 5
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->d:I

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 8
    iget-object v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->g:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->f:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v10, v0

    .line 9
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v8

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 12
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v8

    int-to-float v2, v0

    int-to-float v4, v9

    iget-object v5, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->e:Landroid/graphics/Bitmap;

    const/16 v9, 0xff

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->e:Landroid/graphics/Bitmap;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    const-string v1, "#03e3fe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    iget v4, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->a:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0xa

    int-to-float v5, v2

    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 18
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->a:I

    add-int/2addr v2, v0

    int-to-float v5, v2

    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 19
    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->a:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0xa

    int-to-float v5, v2

    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 20
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v0, -0xa

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    int-to-float v4, v0

    iget v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->a:I

    add-int/2addr v2, v0

    int-to-float v5, v2

    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 21
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v2, -0xa

    int-to-float v3, v3

    iget v4, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->a:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 22
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->a:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 23
    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->a:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v2, -0xa

    int-to-float v3, v3

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 24
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v0, -0xa

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->a:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 25
    iget v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:I

    const/4 v1, 0x5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:I

    .line 26
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v2, :cond_4

    .line 27
    iget v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:I

    .line 28
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 29
    iget v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 30
    iget v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 31
    iget v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x12

    .line 32
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080a4c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->s:F

    mul-float v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    const-string v2, "System"

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1102ab

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v10, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v10, v2

    .line 40
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const/high16 v3, 0x41f00000    # 30.0f

    sget v5, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->s:F

    mul-float v5, v5, v3

    add-float/2addr v2, v5

    iget-object v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->i:Ljava/util/Collection;

    .line 42
    iget-object v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->j:Ljava/util/Collection;

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 44
    iput-object v4, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->j:Ljava/util/Collection;

    goto :goto_2

    .line 45
    :cond_5
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->i:Ljava/util/Collection;

    .line 46
    iput-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->j:Ljava/util/Collection;

    .line 47
    iget-object v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    iget-object v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->h:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 50
    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 51
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    add-float/2addr v4, v1

    const/high16 v1, 0x40c00000    # 6.0f

    iget-object v5, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 53
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 54
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 56
    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 57
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    add-float/2addr v3, v1

    const/high16 v1, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    const-wide/16 v1, 0xa

    .line 59
    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    :goto_4
    return-void
.end method
