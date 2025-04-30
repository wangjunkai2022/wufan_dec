.class public Lcom/facebook/imagepipeline/memory/p;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/p$b;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/references/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/c<",
            "[B>;"
        }
    .end annotation
.end field

.field final b:Lcom/facebook/imagepipeline/memory/p$b;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p2, Lcom/facebook/imagepipeline/memory/e0;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->d(Z)V

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/memory/p$b;

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/memory/z;->h()Lcom/facebook/imagepipeline/memory/z;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/memory/p$b;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/e0;Lcom/facebook/imagepipeline/memory/f0;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->b:Lcom/facebook/imagepipeline/memory/p$b;

    .line 5
    new-instance p1, Lcom/facebook/imagepipeline/memory/p$a;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/memory/p$a;-><init>(Lcom/facebook/imagepipeline/memory/p;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/p;->a:Lcom/facebook/common/references/c;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->b:Lcom/facebook/imagepipeline/memory/p$b;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->a:Lcom/facebook/common/references/c;

    invoke-static {p1, v0}, Lcom/facebook/common/references/a;->q(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->b:Lcom/facebook/imagepipeline/memory/p$b;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/q;->C()I

    move-result v0

    return v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->b:Lcom/facebook/imagepipeline/memory/p$b;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/BasePool;->l()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->b:Lcom/facebook/imagepipeline/memory/p$b;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->release(Ljava/lang/Object;)V

    return-void
.end method
