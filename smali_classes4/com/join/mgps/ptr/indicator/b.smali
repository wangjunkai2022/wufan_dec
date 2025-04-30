.class public Lcom/join/mgps/ptr/indicator/b;
.super Lcom/join/mgps/ptr/indicator/a;
.source "PtrTensionIndicator.java"


# instance fields
.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:I

.field private u:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/indicator/a;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->o:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->u:F

    return-void
.end method

.method private O(F)F
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    div-float v0, p1, v0

    .line 2
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->s:F

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 4
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    sub-float/2addr p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    div-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 6
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    return v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ptr/indicator/a;->A()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->t:I

    .line 3
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->s:F

    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->u:F

    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->t:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/b;->N()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->u:F

    return-void
.end method

.method protected D(FFFF)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->p:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/ptr/indicator/a;->D(FFFF)V

    return-void

    :cond_0
    sub-float/2addr p2, v0

    .line 3
    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->o:F

    mul-float p2, p2, p4

    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->q:F

    add-float/2addr p2, p4

    .line 4
    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    div-float p4, p2, p4

    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    if-gez v1, :cond_1

    .line 5
    invoke-virtual {p0, p3, v0}, Lcom/join/mgps/ptr/indicator/a;->G(FF)V

    return-void

    .line 6
    :cond_1
    iput p4, p0, Lcom/join/mgps/ptr/indicator/b;->s:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 7
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 8
    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    sub-float/2addr p2, p4

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p4, p4, v1

    .line 9
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    div-float/2addr p2, p4

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 p4, 0x40800000    # 4.0f

    div-float/2addr p2, p4

    float-to-double v2, p2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 10
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    double-to-float p2, v2

    mul-float p2, p2, v1

    .line 11
    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    mul-float p2, p2, p4

    div-float/2addr p2, v1

    mul-float p4, p4, p3

    add-float/2addr p4, p2

    float-to-int p2, p4

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/ptr/indicator/a;->G(FF)V

    return-void
.end method

.method public F(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ptr/indicator/a;->F(I)V

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    .line 2
    iput p1, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    return-void
.end method

.method public N()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->s:F

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->u:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/b;->h()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p0, Lcom/join/mgps/ptr/indicator/b;->t:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/b;->i()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    float-to-int v0, v0

    return v0
.end method

.method public z(FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/ptr/indicator/a;->z(FF)V

    .line 2
    iput p2, p0, Lcom/join/mgps/ptr/indicator/b;->p:F

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/ptr/indicator/b;->q:F

    return-void
.end method
