.class public Lcom/facebook/imagepipeline/producers/o;
.super Ljava/lang/Object;
.source "DiskCacheWriteProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/i0<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# static fields
.field static final e:Ljava/lang/String; = "DiskCacheProducer"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/e;

.field private final b:Lcom/facebook/imagepipeline/cache/e;

.field private final c:Lcom/facebook/imagepipeline/cache/f;

.field private final d:Lcom/facebook/imagepipeline/producers/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o;->a:Lcom/facebook/imagepipeline/cache/e;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/o;->b:Lcom/facebook/imagepipeline/cache/e;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/o;->c:Lcom/facebook/imagepipeline/cache/f;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/o;->d:Lcom/facebook/imagepipeline/producers/i0;

    return-void
.end method

.method private c(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->g()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/producers/o$b;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/o;->a:Lcom/facebook/imagepipeline/cache/e;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/o;->b:Lcom/facebook/imagepipeline/cache/e;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/o;->c:Lcom/facebook/imagepipeline/cache/f;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/producers/o$b;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/o$a;)V

    move-object p1, v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o;->d:Lcom/facebook/imagepipeline/producers/i0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/o;->c(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    return-void
.end method
