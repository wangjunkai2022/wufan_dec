.class final Lcom/google/android/material/color/l;
.super Ljava/lang/Object;
.source "Hct.java"


# static fields
.field private static final d:F = 0.4f

.field private static final e:F = 1.0f

.field private static final f:F = 0.2f

.field private static final g:F = 1.0E-9f

.field private static final h:F = 0.01f


# instance fields
.field private a:F

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/material/color/l;->d(FFF)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/color/l;->k(I)V

    return-void
.end method

.method private static a(FFF)Lcom/google/android/material/color/b;
    .locals 12

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    move-object v4, v3

    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    :goto_0
    sub-float v6, v5, v3

    .line 1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    sub-float v6, v3, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    .line 2
    invoke-static {v6, p1, p0}, Lcom/google/android/material/color/b;->d(FFF)Lcom/google/android/material/color/b;

    move-result-object v7

    .line 3
    invoke-virtual {v7}, Lcom/google/android/material/color/b;->l()I

    move-result v7

    .line 4
    invoke-static {v7}, Lcom/google/android/material/color/f;->l(I)F

    move-result v8

    sub-float v9, p2, v8

    .line 5
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_0

    .line 6
    invoke-static {v7}, Lcom/google/android/material/color/b;->b(I)Lcom/google/android/material/color/b;

    move-result-object v7

    .line 7
    invoke-virtual {v7}, Lcom/google/android/material/color/b;->m()F

    move-result v10

    invoke-virtual {v7}, Lcom/google/android/material/color/b;->j()F

    move-result v11

    invoke-static {v10, v11, p0}, Lcom/google/android/material/color/b;->d(FFF)Lcom/google/android/material/color/b;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/material/color/b;->a(Lcom/google/android/material/color/b;)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_0

    cmpg-float v11, v10, v0

    if-gtz v11, :cond_0

    move-object v4, v7

    move v2, v9

    move v0, v10

    :cond_0
    cmpl-float v7, v2, v1

    if-nez v7, :cond_1

    const v7, 0x3089705f    # 1.0E-9f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    cmpg-float v7, v8, p2

    if-gez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_0

    :cond_3
    :goto_1
    return-object v4
.end method

.method public static b(FFF)Lcom/google/android/material/color/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/color/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/color/l;-><init>(FFF)V

    return-object v0
.end method

.method public static c(I)Lcom/google/android/material/color/l;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/b;->b(I)Lcom/google/android/material/color/b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/material/color/l;

    invoke-virtual {v0}, Lcom/google/android/material/color/b;->k()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/color/b;->j()F

    move-result v0

    invoke-static {p0}, Lcom/google/android/material/color/f;->l(I)F

    move-result p0

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/material/color/l;-><init>(FFF)V

    return-object v1
.end method

.method private static d(FFF)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/color/p;->k:Lcom/google/android/material/color/p;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/l;->e(FFFLcom/google/android/material/color/p;)I

    move-result p0

    return p0
.end method

.method static e(FFFLcom/google/android/material/color/p;)I
    .locals 6

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_6

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_6

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/color/n;->d(F)F

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v0, p1

    move-object v3, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    sub-float v4, v1, p1

    .line 3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 4
    invoke-static {p0, v0, p2}, Lcom/google/android/material/color/l;->a(FFF)Lcom/google/android/material/color/b;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v4, p3}, Lcom/google/android/material/color/b;->r(Lcom/google/android/material/color/p;)I

    move-result p0

    return p0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sub-float v0, p1, v1

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move v1, v0

    move-object v3, v4

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    .line 6
    invoke-static {p2}, Lcom/google/android/material/color/f;->f(F)I

    move-result p0

    return p0

    .line 7
    :cond_5
    invoke-virtual {v3, p3}, Lcom/google/android/material/color/b;->r(Lcom/google/android/material/color/p;)I

    move-result p0

    return p0

    .line 8
    :cond_6
    :goto_2
    invoke-static {p2}, Lcom/google/android/material/color/f;->f(F)I

    move-result p0

    return p0
.end method

.method private k(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/material/color/b;->b(I)Lcom/google/android/material/color/b;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/google/android/material/color/f;->l(I)F

    move-result p1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/color/b;->k()F

    move-result v1

    iput v1, p0, Lcom/google/android/material/color/l;->a:F

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/color/b;->j()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/l;->b:F

    .line 5
    iput p1, p0, Lcom/google/android/material/color/l;->c:F

    return-void
.end method


# virtual methods
.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/l;->b:F

    return v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/l;->a:F

    return v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/l;->c:F

    return v0
.end method

.method public i(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/color/l;->a:F

    iget v1, p0, Lcom/google/android/material/color/l;->c:F

    invoke-static {v0, p1, v1}, Lcom/google/android/material/color/l;->d(FFF)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/color/l;->k(I)V

    return-void
.end method

.method public j(F)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/material/color/n;->d(F)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/color/l;->b:F

    iget v1, p0, Lcom/google/android/material/color/l;->c:F

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/l;->d(FFF)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/color/l;->k(I)V

    return-void
.end method

.method public l(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/color/l;->a:F

    iget v1, p0, Lcom/google/android/material/color/l;->b:F

    invoke-static {v0, v1, p1}, Lcom/google/android/material/color/l;->d(FFF)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/color/l;->k(I)V

    return-void
.end method

.method public m()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/color/l;->a:F

    iget v1, p0, Lcom/google/android/material/color/l;->b:F

    iget v2, p0, Lcom/google/android/material/color/l;->c:F

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/l;->d(FFF)I

    move-result v0

    return v0
.end method
