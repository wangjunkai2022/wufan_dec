.class public Lru/noties/scrollable/n;
.super Ljava/lang/Object;
.source "ScrollableScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/noties/scrollable/n$a;
    }
.end annotation


# static fields
.field private static final A:I = 0x0

.field private static final B:I = 0x1

.field private static C:F = 0.0f

.field private static final D:F = 0.35f

.field private static final E:F = 0.5f

.field private static final F:F = 1.0f

.field private static final G:F = 0.175f

.field private static final H:F = 0.35000002f

.field private static final I:I = 0x64

.field private static final J:[F


# instance fields
.field private final a:Landroid/view/animation/Interpolator;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:Z

.field private s:Z

.field private t:F

.field private u:F

.field private v:I

.field private w:F

.field private x:F

.field private final y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lru/noties/scrollable/n;->C:F

    const/16 v0, 0x65

    new-array v0, v0, [F

    .line 2
    sput-object v0, Lru/noties/scrollable/n;->J:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float v9, v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v11, v11, v10

    const v12, 0x3eb33334    # 0.35000002f

    mul-float v12, v12, v6

    add-float/2addr v11, v12

    mul-float v11, v11, v9

    mul-float v12, v6, v6

    mul-float v12, v12, v6

    add-float/2addr v11, v12

    sub-float v13, v11, v5

    .line 3
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v17, v13, v15

    if-gez v17, :cond_2

    .line 4
    sget-object v3, Lru/noties/scrollable/n;->J:[F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v10, v10, v13

    add-float/2addr v10, v6

    mul-float v9, v9, v10

    add-float/2addr v9, v12

    aput v9, v3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    sub-float v6, v3, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float v9, v9, v10

    mul-float v10, v10, v13

    add-float/2addr v10, v6

    mul-float v9, v9, v10

    mul-float v10, v6, v6

    mul-float v10, v10, v6

    add-float/2addr v9, v10

    sub-float v10, v9, v5

    .line 5
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    cmpg-double v12, v10, v15

    if-gez v12, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v9, v9, v5

    if-lez v9, :cond_1

    move v3, v6

    goto :goto_2

    :cond_1
    move v1, v6

    goto :goto_2

    :cond_2
    cmpl-float v7, v11, v5

    if-lez v7, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1

    .line 6
    :cond_4
    sget-object v0, Lru/noties/scrollable/n;->J:[F

    aput v4, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lru/noties/scrollable/n;->w:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lru/noties/scrollable/n;->r:Z

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lru/noties/scrollable/n$a;

    invoke-direct {p2}, Lru/noties/scrollable/n$a;-><init>()V

    iput-object p2, p0, Lru/noties/scrollable/n;->a:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p2, p0, Lru/noties/scrollable/n;->a:Landroid/view/animation/Interpolator;

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float p1, p1, p2

    iput p1, p0, Lru/noties/scrollable/n;->y:F

    .line 7
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    invoke-direct {p0, p1}, Lru/noties/scrollable/n;->b(F)F

    move-result p1

    iput p1, p0, Lru/noties/scrollable/n;->x:F

    .line 8
    iput-boolean p3, p0, Lru/noties/scrollable/n;->s:Z

    const p1, 0x3f570a3d    # 0.84f

    .line 9
    invoke-direct {p0, p1}, Lru/noties/scrollable/n;->b(F)F

    move-result p1

    iput p1, p0, Lru/noties/scrollable/n;->z:F

    return-void
.end method

.method private b(F)F
    .locals 2

    .line 1
    iget v0, p0, Lru/noties/scrollable/n;->y:F

    const v1, 0x43c10b3d

    mul-float v0, v0, v1

    mul-float v0, v0, p1

    return v0
.end method

.method private i(F)D
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3eb33333    # 0.35f

    mul-float p1, p1, v0

    iget v0, p0, Lru/noties/scrollable/n;->w:F

    iget v1, p0, Lru/noties/scrollable/n;->z:F

    mul-float v0, v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private j(F)D
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lru/noties/scrollable/n;->i(F)D

    move-result-wide v0

    .line 2
    sget p1, Lru/noties/scrollable/n;->C:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    .line 3
    iget v4, p0, Lru/noties/scrollable/n;->w:F

    iget v5, p0, Lru/noties/scrollable/n;->z:F

    mul-float v4, v4, v5

    float-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v2

    mul-double v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    return-wide v4
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/n;->e:I

    iput v0, p0, Lru/noties/scrollable/n;->k:I

    .line 2
    iget v0, p0, Lru/noties/scrollable/n;->f:I

    iput v0, p0, Lru/noties/scrollable/n;->l:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lru/noties/scrollable/n;->r:Z

    return-void
.end method

.method public c()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lru/noties/scrollable/n;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lru/noties/scrollable/n;->m:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 3
    iget v0, p0, Lru/noties/scrollable/n;->n:I

    const/4 v2, 0x1

    if-ge v1, v0, :cond_4

    .line 4
    iget v3, p0, Lru/noties/scrollable/n;->b:I

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    int-to-float v1, v1

    int-to-float v3, v0

    div-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v1, v3

    float-to-int v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/16 v7, 0x64

    if-ge v4, v7, :cond_2

    int-to-float v5, v4

    div-float/2addr v5, v3

    add-int/lit8 v6, v4, 0x1

    int-to-float v7, v6

    div-float/2addr v7, v3

    .line 5
    sget-object v3, Lru/noties/scrollable/n;->J:[F

    aget v4, v3, v4

    .line 6
    aget v3, v3, v6

    sub-float/2addr v3, v4

    sub-float/2addr v7, v5

    div-float v6, v3, v7

    sub-float/2addr v1, v5

    mul-float v1, v1, v6

    add-float v5, v4, v1

    .line 7
    :cond_2
    iget v1, p0, Lru/noties/scrollable/n;->v:I

    int-to-float v1, v1

    mul-float v6, v6, v1

    int-to-float v0, v0

    div-float/2addr v6, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v6, v6, v0

    iput v6, p0, Lru/noties/scrollable/n;->u:F

    .line 8
    iget v0, p0, Lru/noties/scrollable/n;->c:I

    iget v1, p0, Lru/noties/scrollable/n;->e:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lru/noties/scrollable/n;->k:I

    .line 9
    iget v1, p0, Lru/noties/scrollable/n;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lru/noties/scrollable/n;->k:I

    .line 10
    iget v1, p0, Lru/noties/scrollable/n;->g:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lru/noties/scrollable/n;->k:I

    .line 11
    iget v0, p0, Lru/noties/scrollable/n;->d:I

    iget v1, p0, Lru/noties/scrollable/n;->f:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v5, v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lru/noties/scrollable/n;->l:I

    .line 12
    iget v1, p0, Lru/noties/scrollable/n;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lru/noties/scrollable/n;->l:I

    .line 13
    iget v1, p0, Lru/noties/scrollable/n;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lru/noties/scrollable/n;->l:I

    .line 14
    iget v1, p0, Lru/noties/scrollable/n;->k:I

    iget v3, p0, Lru/noties/scrollable/n;->e:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lru/noties/scrollable/n;->f:I

    if-ne v0, v1, :cond_5

    .line 15
    iput-boolean v2, p0, Lru/noties/scrollable/n;->r:Z

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lru/noties/scrollable/n;->a:Landroid/view/animation/Interpolator;

    int-to-float v1, v1

    iget v3, p0, Lru/noties/scrollable/n;->o:F

    mul-float v1, v1, v3

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 17
    iget v1, p0, Lru/noties/scrollable/n;->c:I

    iget v3, p0, Lru/noties/scrollable/n;->p:F

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lru/noties/scrollable/n;->k:I

    .line 18
    iget v1, p0, Lru/noties/scrollable/n;->d:I

    iget v3, p0, Lru/noties/scrollable/n;->q:F

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lru/noties/scrollable/n;->l:I

    goto :goto_0

    .line 19
    :cond_4
    iget v0, p0, Lru/noties/scrollable/n;->e:I

    iput v0, p0, Lru/noties/scrollable/n;->k:I

    .line 20
    iget v0, p0, Lru/noties/scrollable/n;->f:I

    iput v0, p0, Lru/noties/scrollable/n;->l:I

    .line 21
    iput-boolean v2, p0, Lru/noties/scrollable/n;->r:Z

    :cond_5
    :goto_0
    return v2
.end method

.method public d(IIIIIIII)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lru/noties/scrollable/n;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lru/noties/scrollable/n;->r:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lru/noties/scrollable/n;->e()F

    move-result v0

    .line 3
    iget v1, p0, Lru/noties/scrollable/n;->e:I

    iget v2, p0, Lru/noties/scrollable/n;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 4
    iget v2, p0, Lru/noties/scrollable/n;->f:I

    iget v3, p0, Lru/noties/scrollable/n;->d:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    float-to-double v3, v1

    float-to-double v5, v2

    .line 5
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v1, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v0

    mul-float v2, v2, v0

    int-to-float v0, p3

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    int-to-float v3, p4

    .line 7
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    add-float/2addr v0, v1

    float-to-int p3, v0

    add-float/2addr v3, v2

    float-to-int p4, v3

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lru/noties/scrollable/n;->b:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lru/noties/scrollable/n;->r:Z

    int-to-double v0, p3

    int-to-double v2, p4

    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 11
    iput v0, p0, Lru/noties/scrollable/n;->t:F

    .line 12
    invoke-virtual {p0, v0}, Lru/noties/scrollable/n;->k(F)I

    move-result v1

    iput v1, p0, Lru/noties/scrollable/n;->n:I

    .line 13
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lru/noties/scrollable/n;->m:J

    .line 14
    iput p1, p0, Lru/noties/scrollable/n;->c:I

    .line 15
    iput p2, p0, Lru/noties/scrollable/n;->d:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    int-to-float p3, p3

    div-float/2addr p3, v0

    :goto_0
    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    int-to-float p4, p4

    div-float v1, p4, v0

    .line 16
    :goto_1
    invoke-direct {p0, v0}, Lru/noties/scrollable/n;->j(F)D

    move-result-wide v2

    .line 17
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p4

    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-int p4, v4

    iput p4, p0, Lru/noties/scrollable/n;->v:I

    .line 18
    iput p5, p0, Lru/noties/scrollable/n;->g:I

    .line 19
    iput p6, p0, Lru/noties/scrollable/n;->h:I

    .line 20
    iput p7, p0, Lru/noties/scrollable/n;->i:I

    .line 21
    iput p8, p0, Lru/noties/scrollable/n;->j:I

    float-to-double p3, p3

    .line 22
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p4, p3

    add-int/2addr p1, p4

    iput p1, p0, Lru/noties/scrollable/n;->e:I

    .line 23
    iget p3, p0, Lru/noties/scrollable/n;->h:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lru/noties/scrollable/n;->e:I

    .line 24
    iget p3, p0, Lru/noties/scrollable/n;->g:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lru/noties/scrollable/n;->e:I

    float-to-double p3, v1

    .line 25
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p1, p3

    add-int/2addr p2, p1

    iput p2, p0, Lru/noties/scrollable/n;->f:I

    .line 26
    iget p1, p0, Lru/noties/scrollable/n;->j:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lru/noties/scrollable/n;->f:I

    .line 27
    iget p2, p0, Lru/noties/scrollable/n;->i:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lru/noties/scrollable/n;->f:I

    return-void
.end method

.method public e()F
    .locals 3

    .line 1
    iget v0, p0, Lru/noties/scrollable/n;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lru/noties/scrollable/n;->u:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lru/noties/scrollable/n;->t:F

    iget v1, p0, Lru/noties/scrollable/n;->x:F

    .line 2
    invoke-virtual {p0}, Lru/noties/scrollable/n;->n()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/n;->l:I

    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/n;->n:I

    return v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/n;->f:I

    return v0
.end method

.method k(F)I
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lru/noties/scrollable/n;->i(F)D

    move-result-wide v0

    .line 2
    sget p1, Lru/noties/scrollable/n;->C:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public l(I)V
    .locals 1

    .line 1
    iput p1, p0, Lru/noties/scrollable/n;->f:I

    .line 2
    iget v0, p0, Lru/noties/scrollable/n;->d:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lru/noties/scrollable/n;->q:F

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lru/noties/scrollable/n;->r:Z

    return-void
.end method

.method public final m(F)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lru/noties/scrollable/n;->b(F)F

    move-result v0

    iput v0, p0, Lru/noties/scrollable/n;->x:F

    .line 2
    iput p1, p0, Lru/noties/scrollable/n;->w:F

    return-void
.end method

.method public n()I
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lru/noties/scrollable/n;->m:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
