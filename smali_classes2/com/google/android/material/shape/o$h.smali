.class public Lcom/google/android/material/shape/o$h;
.super Lcom/google/android/material/shape/o$g;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/o$g;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/shape/o$h;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/o$h;->j(F)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/material/shape/o$h;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/o$h;->k(F)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/shape/o$h;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/o$h;->l(F)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/material/shape/o$h;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/o$h;->m(F)V

    return-void
.end method

.method private f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/o$h;->b:F

    return v0
.end method

.method private g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/o$h;->c:F

    return v0
.end method

.method private h()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/o$h;->d:F

    return v0
.end method

.method private i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/o$h;->e:F

    return v0
.end method

.method private j(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$h;->b:F

    return-void
.end method

.method private k(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$h;->c:F

    return-void
.end method

.method private l(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$h;->d:F

    return-void
.end method

.method private m(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/o$h;->e:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 4
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
    invoke-direct {p0}, Lcom/google/android/material/shape/o$h;->f()F

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/shape/o$h;->g()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/shape/o$h;->h()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/shape/o$h;->i()F

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
