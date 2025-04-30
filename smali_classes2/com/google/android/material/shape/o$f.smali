.class public Lcom/google/android/material/shape/o$f;
.super Lcom/google/android/material/shape/o$g;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private b:F

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/o$g;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/shape/o$f;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/shape/o$f;->b:F

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/shape/o$f;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$f;->b:F

    return p1
.end method

.method static synthetic d(Lcom/google/android/material/shape/o$f;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/shape/o$f;->c:F

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/shape/o$f;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$f;->c:F

    return p1
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 2
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
    iget v0, p0, Lcom/google/android/material/shape/o$f;->b:F

    iget v1, p0, Lcom/google/android/material/shape/o$f;->c:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
