.class public Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;
.super Ljava/lang/Object;
.source "NativeJpegTranscoderFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/transcoder/d;


# annotations
.annotation build Lcom/facebook/common/internal/DoNotStrip;
.end annotation


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->b:Z

    return-void
.end method


# virtual methods
.method public createImageTranscoder(Lcom/facebook/imageformat/c;Z)Lcom/facebook/imagepipeline/transcoder/c;
    .locals 2
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;

    iget v0, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->a:I

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->b:Z

    invoke-direct {p1, p2, v0, v1}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;-><init>(ZIZ)V

    return-object p1
.end method
