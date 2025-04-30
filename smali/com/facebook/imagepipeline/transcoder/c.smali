.class public interface abstract Lcom/facebook/imagepipeline/transcoder/c;
.super Ljava/lang/Object;
.source "ImageTranscoder.java"


# virtual methods
.method public abstract a(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/d;)Z
    .param p2    # Lcom/facebook/imagepipeline/common/RotationOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/common/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b(Lcom/facebook/imagepipeline/image/e;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/d;Lcom/facebook/imageformat/c;Ljava/lang/Integer;)Lcom/facebook/imagepipeline/transcoder/b;
    .param p3    # Lcom/facebook/imagepipeline/common/RotationOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/imagepipeline/common/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/imageformat/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(Lcom/facebook/imageformat/c;)Z
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method
