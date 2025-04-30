.class Lcom/facebook/imagepipeline/cache/e$f;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Lcom/facebook/cache/common/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/e;->u(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/image/e;

.field final synthetic b:Lcom/facebook/imagepipeline/cache/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/image/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/e$f;->b:Lcom/facebook/imagepipeline/cache/e;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/e$f;->a:Lcom/facebook/imagepipeline/image/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e$f;->b:Lcom/facebook/imagepipeline/cache/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/e;->h(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/common/memory/j;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e$f;->a:Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/e;->p()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/common/memory/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method
