.class public Lcom/google/android/material/shape/o$e;
.super Lcom/google/android/material/shape/o$g;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/o$g;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/o$e;->h(F)V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/o$e;->j(F)V

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/o$e;->i(F)V

    .line 5
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/o$e;->k(F)V

    .line 6
    invoke-direct {p0, p5}, Lcom/google/android/material/shape/o$e;->l(F)V

    .line 7
    invoke-direct {p0, p6}, Lcom/google/android/material/shape/o$e;->m(F)V

    return-void
.end method

.method private b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/o$e;->b:F

    return v0
.end method

.method private c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/o$e;->d:F

    return v0
.end method

.method private d()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/o$e;->c:F

    return v0
.end method

.method private e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/o$e;->c:F

    return v0
.end method

.method private f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/o$e;->f:F

    return v0
.end method

.method private g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/o$e;->g:F

    return v0
.end method

.method private h(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$e;->b:F

    return-void
.end method

.method private i(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$e;->d:F

    return-void
.end method

.method private j(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$e;->c:F

    return-void
.end method

.method private k(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$e;->e:F

    return-void
.end method

.method private l(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$e;->f:F

    return-void
.end method

.method private m(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$e;->g:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 8
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/o$g;->a:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 4
    iget v2, p0, Lcom/google/android/material/shape/o$e;->b:F

    iget v3, p0, Lcom/google/android/material/shape/o$e;->c:F

    iget v4, p0, Lcom/google/android/material/shape/o$e;->d:F

    iget v5, p0, Lcom/google/android/material/shape/o$e;->e:F

    iget v6, p0, Lcom/google/android/material/shape/o$e;->f:F

    iget v7, p0, Lcom/google/android/material/shape/o$e;->g:F

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
