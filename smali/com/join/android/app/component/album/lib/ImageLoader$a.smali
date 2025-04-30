.class Lcom/join/android/app/component/album/lib/ImageLoader$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/facebook/common/internal/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/ImageLoader;->n(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/k<",
        "Lcom/facebook/imagepipeline/cache/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/cache/q;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$a;->a:Lcom/facebook/imagepipeline/cache/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/cache/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$a;->a:Lcom/facebook/imagepipeline/cache/q;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/album/lib/ImageLoader$a;->a()Lcom/facebook/imagepipeline/cache/q;

    move-result-object v0

    return-object v0
.end method
