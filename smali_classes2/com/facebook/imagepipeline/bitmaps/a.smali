.class public Lcom/facebook/imagepipeline/bitmaps/a;
.super Lcom/facebook/imagepipeline/bitmaps/f;
.source "ArtBitmapFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/d;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/bitmaps/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/bitmaps/a;->a:Lcom/facebook/imagepipeline/memory/d;

    return-void
.end method


# virtual methods
.method public z(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/facebook/imageutils/a;->f(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/bitmaps/a;->a:Lcom/facebook/imagepipeline/memory/d;

    invoke-interface {v1, v0}, Lcom/facebook/common/memory/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    mul-int v2, p1, p2

    .line 4
    invoke-static {p3}, Lcom/facebook/imageutils/a;->e(Landroid/graphics/Bitmap$Config;)I

    move-result v3

    mul-int v2, v2, v3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/facebook/common/internal/h;->d(Z)V

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 7
    iget-object p1, p0, Lcom/facebook/imagepipeline/bitmaps/a;->a:Lcom/facebook/imagepipeline/memory/d;

    invoke-static {v0, p1}, Lcom/facebook/common/references/a;->q(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method
