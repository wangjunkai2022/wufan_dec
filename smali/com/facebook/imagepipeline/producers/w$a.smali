.class Lcom/facebook/imagepipeline/producers/w$a;
.super Lcom/facebook/imagepipeline/producers/r0;
.source "LocalExifThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/w;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/r0<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic k:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic l:Lcom/facebook/imagepipeline/producers/w;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w$a;->l:Lcom/facebook/imagepipeline/producers/w;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/w$a;->k:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/r0;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/w$a;->j(Lcom/facebook/imagepipeline/image/e;)V

    return-void
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/w$a;->l()Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic i(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/w$a;->k(Lcom/facebook/imagepipeline/image/e;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected j(Lcom/facebook/imagepipeline/image/e;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    return-void
.end method

.method protected k(Lcom/facebook/imagepipeline/image/e;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/e;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "createdThumbnail"

    invoke-static {v0, p1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected l()Lcom/facebook/imagepipeline/image/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w$a;->k:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->t()Landroid/net/Uri;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/w$a;->l:Lcom/facebook/imagepipeline/producers/w;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/producers/w;->g(Landroid/net/Uri;)Landroid/media/ExifInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/w$a;->l:Lcom/facebook/imagepipeline/producers/w;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/w;->c(Lcom/facebook/imagepipeline/producers/w;)Lcom/facebook/common/memory/g;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/facebook/common/memory/g;->d([B)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/w$a;->l:Lcom/facebook/imagepipeline/producers/w;

    invoke-static {v2, v1, v0}, Lcom/facebook/imagepipeline/producers/w;->d(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
