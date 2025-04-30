.class public final Lcom/join/mgps/zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final l:Ljava/lang/String; = "log"

.field private static final m:J = 0xaL

.field private static final n:I = 0xff

.field private static final o:I = 0x3

.field private static final p:I = 0x3

.field private static final q:I = 0x5

.field private static final r:I = 0x5

.field private static s:F = 0.0f

.field private static final t:I = 0x10

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

    sput p1, Lcom/join/mgps/zxing/view/ViewfinderView;->s:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 3
    iput p1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->a:I

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0603ce

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->f:I

    const p2, 0x7f060383

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->g:I

    const p2, 0x7f060372

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->h:I

    .line 9
    new-instance p1, Ljava/util/HashSet;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->i:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->i:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->e:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->e:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/c;->d()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->k:Z

    const/4 v8, 0x1

    if-nez v0, :cond_1

    .line 3
    iput-boolean v8, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->k:Z

    .line 4
    iget v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:I

    .line 5
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->d:I

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 8
    iget-object v1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->g:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->f:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v10, v0

    .line 9
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

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

    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

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

    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 12
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v8

    int-to-float v2, v0

    int-to-float v4, v9

    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->e:Landroid/graphics/Bitmap;

    const/16 v9, 0xff

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->e:Landroid/graphics/Bitmap;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    iget v4, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->a:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0x3

    int-to-float v5, v2

    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 18
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    add-int/lit8 v0, v0, 0x3

    int-to-float v4, v0

    iget v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->a:I

    add-int/2addr v2, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 19
    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->a:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0x3

    int-to-float v5, v2

    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 20
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v0, -0x3

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    int-to-float v4, v0

    iget v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->a:I

    add-int/2addr v2, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 21
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v2, -0x3

    int-to-float v3, v3

    iget v4, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->a:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 22
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->a:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x3

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 23
    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->a:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v2, -0x3

    int-to-float v3, v3

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 24
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v0, -0x3

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->a:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    int-to-float v4, v0

    int-to-float v5, v2

    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 25
    iget v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:I

    const/4 v10, 0x5

    add-int/2addr v0, v10

    iput v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:I

    .line 26
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_4

    .line 27
    iget v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:I

    .line 28
    :cond_4
    iget v0, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v10

    int-to-float v1, v0

    iget v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:I

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v10

    int-to-float v3, v3

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    sget v2, Lcom/join/mgps/zxing/view/ViewfinderView;->s:F

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    const-string v1, "System"

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->i:Ljava/util/Collection;

    .line 33
    iget-object v1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->j:Ljava/util/Collection;

    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->j:Ljava/util/Collection;

    goto :goto_2

    .line 36
    :cond_5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v10}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->i:Ljava/util/Collection;

    .line 37
    iput-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->j:Ljava/util/Collection;

    .line 38
    iget-object v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    iget-object v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->h:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/ResultPoint;

    .line 41
    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 42
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float/2addr v4, v2

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 44
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->h:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 47
    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 48
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    add-float/2addr v3, v1

    const/high16 v1, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    const-wide/16 v1, 0xa

    .line 50
    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    :goto_4
    return-void
.end method
