.class public abstract Lcom/facebook/imagepipeline/animated/base/h;
.super Ljava/lang/Object;
.source "DelegatingAnimatedDrawableBackend.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/a;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/base/a;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->a()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->b()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->c()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->d()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->e()V

    return-void
.end method

.method public f(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->f(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object p1

    return-object p1
.end method

.method public g(ILandroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/animated/base/a;->g(ILandroid/graphics/Canvas;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->getHeight()I

    move-result v0

    return v0
.end method

.method public i(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->i(I)Z

    move-result p1

    return p1
.end method

.method public j(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->j(I)I

    move-result p1

    return p1
.end method

.method public k(I)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->k(I)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public l(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->l(I)I

    move-result p1

    return p1
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->m()I

    move-result v0

    return v0
.end method

.method public n(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->n(I)I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->o()I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->p()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->q()I

    move-result v0

    return v0
.end method

.method public r()Lcom/facebook/imagepipeline/animated/base/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->r()Lcom/facebook/imagepipeline/animated/base/f;

    move-result-object v0

    return-object v0
.end method

.method protected s()Lcom/facebook/imagepipeline/animated/base/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/h;->a:Lcom/facebook/imagepipeline/animated/base/a;

    return-object v0
.end method
