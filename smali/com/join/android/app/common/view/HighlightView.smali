.class public Lcom/join/android/app/common/view/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/view/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/String; = "HighlightView"

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field public static final t:I = 0x4

.field public static final u:I = 0x8

.field public static final v:I = 0x10

.field public static final w:I = 0x20


# instance fields
.field a:Landroid/view/View;

.field public b:Z

.field c:Z

.field private d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/RectF;

.field public g:Landroid/graphics/RectF;

.field public h:Landroid/graphics/Matrix;

.field private i:Z

.field private j:F

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private final n:Landroid/graphics/Paint;

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/join/android/app/common/view/HighlightView$ModifyMode;->None:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    .line 4
    iput-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->n:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->o:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    .line 8
    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    return-void
.end method

.method private a()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 4
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080a01

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/common/view/HighlightView;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 7
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 9
    iget-boolean v2, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 11
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 12
    iget-object v4, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v5, v2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    div-float/2addr v3, v6

    add-float/2addr v4, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 13
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    const v3, -0x10fb2a

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 14
    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 15
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    :goto_0
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 17
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 18
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 19
    new-instance v1, Landroid/graphics/RegionIterator;

    invoke-direct {v1, v2}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 20
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 21
    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/join/android/app/common/view/HighlightView;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->n:Landroid/graphics/Paint;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->o:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 24
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 25
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    sget-object v1, Lcom/join/android/app/common/view/HighlightView$ModifyMode;->Grow:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    if-ne v0, v1, :cond_5

    .line 26
    iget-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    if-eqz v0, :cond_5

    .line 27
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    mul-double v2, v2, v4

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    .line 32
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    .line 33
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    .line 34
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, v4

    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 37
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 38
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    :cond_5
    iget-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    if-eqz v0, :cond_6

    goto :goto_3

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    .line 41
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    .line 42
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x4

    .line 43
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x3

    .line 44
    iget-object v4, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 45
    iget-object v5, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 46
    iget-object v6, p0, Lcom/join/android/app/common/view/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sub-int v7, v1, v4

    sub-int v8, v3, v5

    add-int/2addr v1, v4

    add-int/2addr v3, v5

    invoke-virtual {v6, v7, v8, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    iget-object v6, p0, Lcom/join/android/app/common/view/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v6, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    sub-int v9, v2, v4

    add-int/2addr v2, v4

    invoke-virtual {v6, v9, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 50
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v5

    add-int/2addr v0, v5

    invoke-virtual {v3, v7, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {v1, v9, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public d(FF)I
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 6
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v5, 0x2

    div-int/2addr v1, v5

    sub-int v6, v0, v1

    .line 7
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_3

    .line 8
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    cmpg-float p1, p2, v2

    if-gez p1, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x10

    goto/16 :goto_2

    :cond_1
    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x4

    goto/16 :goto_2

    :cond_3
    if-ge v0, v1, :cond_4

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 9
    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, v4

    const/4 v5, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_6

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    cmpg-float v1, p2, v1

    if-gez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v6

    sub-float/2addr v7, v4

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    cmpg-float v7, p1, v7

    if-gez v7, :cond_7

    const/4 v5, 0x1

    :cond_7
    int-to-float v6, v6

    sub-float/2addr v6, p1

    .line 11
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v4

    if-gez v6, :cond_8

    if-eqz v1, :cond_8

    const/4 v6, 0x3

    goto :goto_1

    :cond_8
    const/4 v6, 0x1

    .line 12
    :goto_1
    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v4

    if-gez v7, :cond_9

    if-eqz v1, :cond_9

    or-int/lit8 v6, v6, 0x4

    .line 13
    :cond_9
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_a

    if-eqz v5, :cond_a

    or-int/lit8 v6, v6, 0x8

    .line 14
    :cond_a
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_b

    if-eqz v5, :cond_b

    or-int/lit8 v6, v6, 0x10

    :cond_b
    if-ne v6, v3, :cond_c

    float-to-int p1, p1

    float-to-int p2, p2

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    move v2, v6

    :goto_2
    return v2
.end method

.method e(FF)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    .line 2
    iget p2, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    div-float p2, p1, p2

    goto :goto_0

    :cond_0
    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 3
    iget p1, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    mul-float p1, p1, p2

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v3, p1, v1

    if-lez v3, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v4, p1, v2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr p1, v3

    div-float/2addr p1, v2

    .line 7
    iget-boolean v3, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    if-eqz v3, :cond_2

    .line 8
    iget p2, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    div-float p2, p1, p2

    :cond_2
    cmpl-float v3, p2, v1

    if-lez v3, :cond_3

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v4, p2, v2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 10
    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr p2, v3

    div-float/2addr p2, v2

    .line 11
    iget-boolean v2, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    if-eqz v2, :cond_3

    .line 12
    iget p1, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    mul-float p1, p1, p2

    :cond_3
    neg-float p1, p1

    neg-float p2, p2

    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 14
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 p2, 0x41c80000    # 25.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    return-void

    .line 15
    :cond_4
    iget-boolean p1, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    div-float/2addr p2, p1

    .line 16
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    return-void

    .line 17
    :cond_6
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_7

    sub-float/2addr v2, p1

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 19
    :cond_7
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p1, p2

    if-lez v2, :cond_8

    sub-float/2addr p1, p2

    neg-float p1, p1

    .line 20
    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 21
    :cond_8
    :goto_1
    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_9

    sub-float/2addr v2, p1

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 23
    :cond_9
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, p2

    if-lez v2, :cond_a

    sub-float/2addr p1, p2

    neg-float p1, p1

    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 25
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 26
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 27
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public f(IFF)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float p2, p2, p1

    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p3, p3, p1

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/join/android/app/common/view/HighlightView;->j(FF)V

    goto :goto_1

    :cond_1
    and-int/lit8 v2, p1, 0x6

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 p2, 0x0

    :cond_2
    and-int/lit8 v2, p1, 0x18

    if-nez v2, :cond_3

    const/4 p3, 0x0

    .line 5
    :cond_3
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float p2, p2, v2

    .line 6
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    mul-float p3, p3, v2

    and-int/lit8 v0, p1, 0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    mul-float v0, v0, p2

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_5

    const/4 v1, -0x1

    :cond_5
    int-to-float p1, v1

    mul-float p1, p1, p3

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/join/android/app/common/view/HighlightView;->e(FF)V

    :goto_1
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->b:Z

    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    return-void
.end method

.method j(FF)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 5
    invoke-virtual {p1, p2, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 8
    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 9
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    const/16 p1, -0xa

    .line 11
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 12
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/view/HighlightView;->b:Z

    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/view/HighlightView;->c:Z

    return-void
.end method

.method public m(Lcom/join/android/app/common/view/HighlightView$ModifyMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    .line 3
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public n(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    const/4 p5, 0x1

    .line 1
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->h:Landroid/graphics/Matrix;

    .line 2
    iput-object p3, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 4
    iput-boolean p5, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    .line 5
    iput-boolean p4, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    .line 6
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    .line 7
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 8
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->n:Landroid/graphics/Paint;

    const/16 p2, 0x7d

    const/16 p3, 0x32

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    sget-object p1, Lcom/join/android/app/common/view/HighlightView$ModifyMode;->None:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    .line 14
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->h()V

    return-void
.end method
