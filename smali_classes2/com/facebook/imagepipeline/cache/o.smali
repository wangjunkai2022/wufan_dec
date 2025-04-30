.class public Lcom/facebook/imagepipeline/cache/o;
.super Ljava/lang/Object;
.source "InstrumentedMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/p<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/p<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/cache/r;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/p<",
            "TK;TV;>;",
            "Lcom/facebook/imagepipeline/cache/r;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/o;->a:Lcom/facebook/imagepipeline/cache/p;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/o;->b:Lcom/facebook/imagepipeline/cache/r;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/o;->b:Lcom/facebook/imagepipeline/cache/r;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/cache/r;->b()V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/o;->a:Lcom/facebook/imagepipeline/cache/p;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/p;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/facebook/common/internal/i;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/i<",
            "TK;>;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/o;->a:Lcom/facebook/imagepipeline/cache/p;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->b(Lcom/facebook/common/internal/i;)I

    move-result p1

    return p1
.end method

.method public c(Lcom/facebook/common/internal/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/i<",
            "TK;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/o;->a:Lcom/facebook/imagepipeline/cache/p;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->c(Lcom/facebook/common/internal/i;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/o;->a:Lcom/facebook/imagepipeline/cache/p;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/o;->b:Lcom/facebook/imagepipeline/cache/r;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/cache/r;->c()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/o;->b:Lcom/facebook/imagepipeline/cache/r;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/r;->a(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
