.class public final Lcom/zxing/android/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final m:J = 0x1eL

.field private static final n:I = 0xff

.field private static final o:I = 0x5

.field private static final p:I = 0xa

.field private static final q:I = 0x6

.field private static final r:I = 0x5

.field private static final s:I = 0x5

.field private static t:F = 0.0f

.field private static final u:I = 0x10

.field private static final v:I = 0x1e


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

.field private k:Lcom/zxing/android/camera/c;

.field l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/zxing/android/view/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    const/high16 p2, 0x60000000

    .line 4
    iput p2, p0, Lcom/zxing/android/view/ViewfinderView;->f:I

    const/high16 p2, -0x50000000

    .line 5
    iput p2, p0, Lcom/zxing/android/view/ViewfinderView;->g:I

    const p2, -0x3f000100    # -7.999878f

    .line 6
    iput p2, p0, Lcom/zxing/android/view/ViewfinderView;->h:I

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/zxing/android/view/ViewfinderView;->i:Ljava/util/Collection;

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/zxing/android/view/ViewfinderView;->j:Ljava/util/Collection;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/zxing/android/view/ViewfinderView;->t:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 10
    iput p1, p0, Lcom/zxing/android/view/ViewfinderView;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->i:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zxing/android/view/ViewfinderView;->e:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->e:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/zxing/android/view/ViewfinderView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->k:Lcom/zxing/android/camera/c;

    invoke-virtual {v0}, Lcom/zxing/android/camera/c;->c()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/zxing/android/view/ViewfinderView;->l:Z

    const/4 v8, 0x1

    if-nez v0, :cond_1

    .line 3
    iput-boolean v8, p0, Lcom/zxing/android/view/ViewfinderView;->l:Z

    .line 4
    iget v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/zxing/android/view/ViewfinderView;->c:I

    .line 5
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/zxing/android/view/ViewfinderView;->d:I

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 8
    iget-object v1, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/zxing/android/view/ViewfinderView;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/zxing/android/view/ViewfinderView;->g:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/zxing/android/view/ViewfinderView;->f:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v10, v0

    .line 9
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

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

    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

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

    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 12
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v8

    int-to-float v2, v0

    int-to-float v4, v9

    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 15
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->e:Landroid/graphics/Bitmap;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 18
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 19
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-int/2addr v0, v8

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 20
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 21
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    const v1, -0xf13c01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget v0, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v0, -0xa

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v2, -0xa

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/zxing/android/view/ViewfinderView;->a:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 24
    iget v0, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v0, -0xa

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v2, -0xa

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v0, p0, Lcom/zxing/android/view/ViewfinderView;->a:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 25
    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/zxing/android/view/ViewfinderView;->a:I

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v2, -0xa

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x2

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 26
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v0, -0x2

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v2, -0xa

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x2

    int-to-float v4, v0

    iget v0, p0, Lcom/zxing/android/view/ViewfinderView;->a:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    iget v0, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v0, -0xa

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v2, -0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/zxing/android/view/ViewfinderView;->a:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, -0x2

    int-to-float v5, v2

    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 28
    iget v0, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v0, -0xa

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/zxing/android/view/ViewfinderView;->a:I

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, -0x2

    int-to-float v5, v2

    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 29
    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/zxing/android/view/ViewfinderView;->a:I

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v2, -0x2

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x2

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, -0x2

    int-to-float v5, v2

    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 30
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v0, -0x2

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/zxing/android/view/ViewfinderView;->a:I

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x2

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, -0x2

    int-to-float v5, v2

    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 31
    iget v0, p0, Lcom/zxing/android/view/ViewfinderView;->c:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/zxing/android/view/ViewfinderView;->c:I

    .line 32
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_4

    .line 33
    iget v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/zxing/android/view/ViewfinderView;->c:I

    .line 34
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 36
    iget v1, v7, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 37
    iget v1, p0, Lcom/zxing/android/view/ViewfinderView;->c:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x12

    .line 38
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080a4b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zxing/android/view/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const-wide/16 v1, 0x1e

    .line 40
    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    :goto_1
    return-void
.end method

.method public setCameraManager(Lcom/zxing/android/camera/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zxing/android/view/ViewfinderView;->k:Lcom/zxing/android/camera/c;

    return-void
.end method
