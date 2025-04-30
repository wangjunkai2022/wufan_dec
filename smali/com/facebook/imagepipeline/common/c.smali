.class public Lcom/facebook/imagepipeline/common/c;
.super Ljava/lang/Object;
.source "ImageDecodeOptionsBuilder.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/Bitmap$Config;

.field private h:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Ls0/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    .line 3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/common/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/common/b;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/common/b;-><init>(Lcom/facebook/imagepipeline/common/c;)V

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public c()Ls0/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/c;->i:Ls0/a;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/decoder/b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/c;->h:Lcom/facebook/imagepipeline/decoder/b;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->b:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->f:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->c:Z

    return v0
.end method

.method public k(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/common/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public l(Ls0/a;)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .param p1    # Ls0/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/c;->i:Ls0/a;

    return-object p0
.end method

.method public m(Lcom/facebook/imagepipeline/decoder/b;)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/decoder/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/c;->h:Lcom/facebook/imagepipeline/decoder/b;

    return-object p0
.end method

.method public n(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->d:Z

    return-object p0
.end method

.method public o(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->b:Z

    return-object p0
.end method

.method public p(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    return-object p0
.end method

.method public q(Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/common/c;
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/b;->b:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->b:Z

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/b;->c:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->c:Z

    .line 3
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/b;->d:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->d:Z

    .line 4
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/b;->e:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    .line 5
    iget-object v0, p1, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    .line 6
    iget-object v0, p1, Lcom/facebook/imagepipeline/common/b;->h:Lcom/facebook/imagepipeline/decoder/b;

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->h:Lcom/facebook/imagepipeline/decoder/b;

    .line 7
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/b;->f:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->f:Z

    .line 8
    iget-object p1, p1, Lcom/facebook/imagepipeline/common/b;->i:Ls0/a;

    iput-object p1, p0, Lcom/facebook/imagepipeline/common/c;->i:Ls0/a;

    return-object p0
.end method

.method public r(I)Lcom/facebook/imagepipeline/common/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    return-object p0
.end method

.method public s(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->f:Z

    return-object p0
.end method

.method public t(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->c:Z

    return-object p0
.end method
