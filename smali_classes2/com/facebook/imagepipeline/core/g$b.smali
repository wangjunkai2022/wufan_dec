.class Lcom/facebook/imagepipeline/core/g$b;
.super Ljava/lang/Object;
.source "ImagePipeline.java"

# interfaces
.implements Lcom/facebook/common/internal/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/g;->v(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lr0/c;)Lcom/facebook/common/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/k<",
        "Lcom/facebook/datasource/c<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field final synthetic d:Lr0/c;

.field final synthetic e:Lcom/facebook/imagepipeline/core/g;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/g;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lr0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/g$b;->e:Lcom/facebook/imagepipeline/core/g;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/g$b;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p3, p0, Lcom/facebook/imagepipeline/core/g$b;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/facebook/imagepipeline/core/g$b;->c:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iput-object p5, p0, Lcom/facebook/imagepipeline/core/g$b;->d:Lr0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/datasource/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g$b;->e:Lcom/facebook/imagepipeline/core/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/g$b;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/g$b;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/g$b;->c:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/g$b;->d:Lr0/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/core/g;->k(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lr0/c;)Lcom/facebook/datasource/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/g$b;->a()Lcom/facebook/datasource/c;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/g;->f(Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/g$b;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->t()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/g$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
