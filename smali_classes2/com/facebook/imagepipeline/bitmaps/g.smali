.class public Lcom/facebook/imagepipeline/bitmaps/g;
.super Ljava/lang/Object;
.source "PlatformBitmapFactoryProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/memory/d0;Lcom/facebook/imagepipeline/platform/f;)Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    new-instance p1, Lcom/facebook/imagepipeline/bitmaps/a;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/d0;->a()Lcom/facebook/imagepipeline/memory/d;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/bitmaps/a;-><init>(Lcom/facebook/imagepipeline/memory/d;)V

    return-object p1

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/e;

    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/b;

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/d0;->g()Lcom/facebook/common/memory/g;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/bitmaps/b;-><init>(Lcom/facebook/common/memory/g;)V

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/bitmaps/e;-><init>(Lcom/facebook/imagepipeline/bitmaps/b;Lcom/facebook/imagepipeline/platform/f;)V

    return-object v0

    .line 5
    :cond_1
    new-instance p0, Lcom/facebook/imagepipeline/bitmaps/c;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/bitmaps/c;-><init>()V

    return-object p0
.end method
