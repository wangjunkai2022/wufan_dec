.class public Lcom/facebook/imagepipeline/producers/h0;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/h0$c;,
        Lcom/facebook/imagepipeline/producers/h0$d;,
        Lcom/facebook/imagepipeline/producers/h0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/i0<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "PostprocessorProducer"

.field static final e:Ljava/lang/String; = "Postprocessor"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/bitmaps/f;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/i0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/h0;->a:Lcom/facebook/imagepipeline/producers/i0;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/h0;->b:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 4
    invoke-static {p3}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/h0;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/h0;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/h0;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/h0;)Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/h0;->b:Lcom/facebook/imagepipeline/bitmaps/f;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getListener()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v3

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Lcom/facebook/imagepipeline/request/d;

    move-result-object v7

    .line 3
    new-instance v8, Lcom/facebook/imagepipeline/producers/h0$b;

    .line 4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v5, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/h0$b;-><init>(Lcom/facebook/imagepipeline/producers/h0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Lcom/facebook/imagepipeline/request/d;Lcom/facebook/imagepipeline/producers/k0;)V

    .line 5
    instance-of v0, v7, Lcom/facebook/imagepipeline/request/e;

    if-eqz v0, :cond_0

    .line 6
    new-instance v6, Lcom/facebook/imagepipeline/producers/h0$c;

    move-object v3, v7

    check-cast v3, Lcom/facebook/imagepipeline/request/e;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, v8

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/h0$c;-><init>(Lcom/facebook/imagepipeline/producers/h0;Lcom/facebook/imagepipeline/producers/h0$b;Lcom/facebook/imagepipeline/request/e;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/producers/h0$a;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v6, Lcom/facebook/imagepipeline/producers/h0$d;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v8, v0}, Lcom/facebook/imagepipeline/producers/h0$d;-><init>(Lcom/facebook/imagepipeline/producers/h0;Lcom/facebook/imagepipeline/producers/h0$b;Lcom/facebook/imagepipeline/producers/h0$a;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0;->a:Lcom/facebook/imagepipeline/producers/i0;

    invoke-interface {v0, v6, p2}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    return-void
.end method
