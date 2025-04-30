.class Lcom/facebook/imagepipeline/decoder/a$a;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/decoder/a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/decoder/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/a$a;->a:Lcom/facebook/imagepipeline/decoder/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imagepipeline/image/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/image/c;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a$a;->a:Lcom/facebook/imagepipeline/decoder/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/a;->d(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imagepipeline/image/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/image/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v1, Lcom/facebook/imageformat/b;->c:Lcom/facebook/imageformat/c;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a$a;->a:Lcom/facebook/imagepipeline/decoder/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/a;->c(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imagepipeline/image/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/image/c;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object v1, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a$a;->a:Lcom/facebook/imagepipeline/decoder/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/a;->b(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imagepipeline/image/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/image/c;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    sget-object p2, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    if-eq v0, p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/facebook/imagepipeline/decoder/a$a;->a:Lcom/facebook/imagepipeline/decoder/a;

    invoke-virtual {p2, p1, p4}, Lcom/facebook/imagepipeline/decoder/a;->e(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/image/d;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string p3, "unknown image format"

    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/image/e;)V

    throw p2
.end method
