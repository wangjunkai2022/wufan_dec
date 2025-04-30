.class public Lcom/join/mgps/Util/h0;
.super Landroid/view/animation/Animation;
.source "FlipCardAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/h0$a;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private e:Landroid/graphics/Camera;

.field private f:Z

.field private g:Lcom/join/mgps/Util/h0$a;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/Util/h0;->f:Z

    .line 3
    iput p1, p0, Lcom/join/mgps/Util/h0;->a:F

    .line 4
    iput p2, p0, Lcom/join/mgps/Util/h0;->b:F

    .line 5
    iput p3, p0, Lcom/join/mgps/Util/h0;->c:F

    .line 6
    iput p4, p0, Lcom/join/mgps/Util/h0;->d:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/Util/h0;->f:Z

    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/Util/h0;->a:F

    .line 2
    iget v1, p0, Lcom/join/mgps/Util/h0;->b:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 3
    iget p1, p0, Lcom/join/mgps/Util/h0;->c:F

    .line 4
    iget v1, p0, Lcom/join/mgps/Util/h0;->d:F

    .line 5
    iget-object v2, p0, Lcom/join/mgps/Util/h0;->e:Landroid/graphics/Camera;

    .line 6
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v4, v0, v3

    if-gtz v4, :cond_0

    const/high16 v4, -0x3d4c0000    # -90.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    .line 8
    :cond_0
    iget-boolean v4, p0, Lcom/join/mgps/Util/h0;->f:Z

    if-nez v4, :cond_2

    .line 9
    iget-object v4, p0, Lcom/join/mgps/Util/h0;->g:Lcom/join/mgps/Util/h0$a;

    if-eqz v4, :cond_1

    .line 10
    invoke-interface {v4}, Lcom/join/mgps/Util/h0$a;->a()V

    :cond_1
    const/4 v4, 0x1

    .line 11
    iput-boolean v4, p0, Lcom/join/mgps/Util/h0;->f:Z

    :cond_2
    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-lez v5, :cond_3

    const/high16 v4, 0x43870000    # 270.0f

    add-float/2addr v0, v4

    sub-float/2addr v0, v3

    goto :goto_0

    :cond_3
    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    const/high16 v4, -0x3c790000    # -270.0f

    add-float/2addr v0, v3

    add-float/2addr v0, v4

    .line 12
    :cond_4
    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 13
    invoke-virtual {v2, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    neg-float v0, p1

    neg-float v2, v1

    .line 15
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 16
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public b(Lcom/join/mgps/Util/h0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/h0;->g:Lcom/join/mgps/Util/h0$a;

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/h0;->e:Landroid/graphics/Camera;

    return-void
.end method
