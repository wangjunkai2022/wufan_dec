.class public Lcom/facebook/imagepipeline/animated/base/g;
.super Ljava/lang/Object;
.source "AnimatedImageResultBuilder.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/base/d;

.field private b:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/base/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->a:Lcom/facebook/imagepipeline/animated/base/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/animated/base/f;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/animated/base/f;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/animated/base/f;-><init>(Lcom/facebook/imagepipeline/animated/base/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    invoke-static {v2}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 3
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    invoke-static {v2}, Lcom/facebook/common/references/a;->h(Ljava/lang/Iterable;)V

    .line 5
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    invoke-static {v2}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 7
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    .line 8
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    invoke-static {v2}, Lcom/facebook/common/references/a;->h(Ljava/lang/Iterable;)V

    .line 9
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    .line 10
    throw v1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/common/references/a;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->d:I

    return v0
.end method

.method public d()Lcom/facebook/imagepipeline/animated/base/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->a:Lcom/facebook/imagepipeline/animated/base/d;

    return-object v0
.end method

.method public e()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->d(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/util/List;)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/animated/base/g;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    return-object p0
.end method

.method public g(I)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->d:I

    return-object p0
.end method

.method public h(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/facebook/imagepipeline/animated/base/g;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->d(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    return-object p0
.end method
