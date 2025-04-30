.class public Lcom/join/mgps/ptr/indicator/a;
.super Ljava/lang/Object;
.source "PtrIndicator.java"


# static fields
.field public static final n:I


# instance fields
.field protected a:I

.field private b:Landroid/graphics/PointF;

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->a:I

    .line 3
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/ptr/indicator/a;->b:Landroid/graphics/PointF;

    .line 4
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 5
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 6
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->h:I

    const v1, 0x3f99999a    # 1.2f

    .line 7
    iput v1, p0, Lcom/join/mgps/ptr/indicator/a;->i:F

    const v1, 0x402ccccd    # 2.7f

    .line 8
    iput v1, p0, Lcom/join/mgps/ptr/indicator/a;->j:F

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/ptr/indicator/a;->k:Z

    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/join/mgps/ptr/indicator/a;->l:I

    .line 11
    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->m:I

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/ptr/indicator/a;->k:Z

    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->m:I

    return-void
.end method

.method protected C(II)V
    .locals 0

    return-void
.end method

.method protected D(FFFF)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/join/mgps/ptr/indicator/a;->j:F

    div-float/2addr p4, p1

    invoke-virtual {p0, p3, p4}, Lcom/join/mgps/ptr/indicator/a;->G(FF)V

    return-void
.end method

.method public final E(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 2
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/ptr/indicator/a;->C(II)V

    return-void
.end method

.method public F(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->L()V

    return-void
.end method

.method protected G(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->c:F

    .line 2
    iput p2, p0, Lcom/join/mgps/ptr/indicator/a;->d:F

    return-void
.end method

.method public H(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->l:I

    return-void
.end method

.method public I(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->i:F

    .line 2
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->a:I

    return-void
.end method

.method public J(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->i:F

    .line 2
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->a:I

    return-void
.end method

.method public K(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->j:F

    return-void
.end method

.method protected L()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->i:F

    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->a:I

    return-void
.end method

.method public M(I)Z
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lcom/join/mgps/ptr/indicator/a;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/join/mgps/ptr/indicator/a;->e:I

    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    .line 2
    iget v0, p1, Lcom/join/mgps/ptr/indicator/a;->f:I

    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    .line 3
    iget p1, p1, Lcom/join/mgps/ptr/indicator/a;->g:I

    iput p1, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->i()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->i()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    return v0
.end method

.method public f()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->l:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->a:I

    return v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->c:F

    return v0
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->d:F

    return v0
.end method

.method public l()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->i:F

    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->j:F

    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->m:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->f:I

    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->g:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    iget v1, p0, Lcom/join/mgps/ptr/indicator/a;->h:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public u()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->h()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->i()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/ptr/indicator/a;->k:Z

    return v0
.end method

.method public final y(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/indicator/a;->b:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v1

    .line 2
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, p2, v0

    .line 3
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/join/mgps/ptr/indicator/a;->D(FFFF)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/indicator/a;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public z(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/ptr/indicator/a;->k:Z

    .line 2
    iget v0, p0, Lcom/join/mgps/ptr/indicator/a;->e:I

    iput v0, p0, Lcom/join/mgps/ptr/indicator/a;->h:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/indicator/a;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
