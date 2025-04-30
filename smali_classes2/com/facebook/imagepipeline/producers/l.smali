.class public Lcom/facebook/imagepipeline/producers/l;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/l$b;,
        Lcom/facebook/imagepipeline/producers/l$a;,
        Lcom/facebook/imagepipeline/producers/l$c;
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
.field public static final j:Ljava/lang/String; = "DecodeProducer"

.field public static final k:Ljava/lang/String; = "bitmapSize"

.field public static final l:Ljava/lang/String; = "hasGoodQuality"

.field public static final m:Ljava/lang/String; = "isFinal"

.field public static final n:Ljava/lang/String; = "imageFormat"

.field public static final o:Ljava/lang/String; = "encodedImageSize"

.field public static final p:Ljava/lang/String; = "requestedImageSize"

.field public static final q:Ljava/lang/String; = "sampleSize"


# instance fields
.field private final a:Lcom/facebook/common/memory/a;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/facebook/imagepipeline/decoder/b;

.field private final d:Lcom/facebook/imagepipeline/decoder/d;

.field private final e:Lcom/facebook/imagepipeline/producers/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:I


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/producers/i0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/memory/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            "Lcom/facebook/imagepipeline/decoder/d;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/a;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l;->a:Lcom/facebook/common/memory/a;

    .line 3
    invoke-static {p2}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p3}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/b;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l;->c:Lcom/facebook/imagepipeline/decoder/b;

    .line 5
    invoke-static {p4}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/d;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l;->d:Lcom/facebook/imagepipeline/decoder/d;

    .line 6
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/l;->f:Z

    .line 7
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/producers/l;->g:Z

    .line 8
    invoke-static {p8}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/i0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l;->e:Lcom/facebook/imagepipeline/producers/i0;

    .line 9
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/producers/l;->h:Z

    .line 10
    iput p9, p0, Lcom/facebook/imagepipeline/producers/l;->i:I

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/l;->f:Z

    return p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/l;->g:Z

    return p0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/producers/l;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/l;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/producers/l;)Lcom/facebook/imagepipeline/decoder/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/l;->c:Lcom/facebook/imagepipeline/decoder/b;

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
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DecodeProducer#produceResults"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->t()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/f;->m(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/producers/l$a;

    iget-boolean v5, p0, Lcom/facebook/imagepipeline/producers/l;->h:Z

    iget v6, p0, Lcom/facebook/imagepipeline/producers/l;->i:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/producers/l$a;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;ZI)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v4, Lcom/facebook/imagepipeline/decoder/e;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l;->a:Lcom/facebook/common/memory/a;

    invoke-direct {v4, v0}, Lcom/facebook/imagepipeline/decoder/e;-><init>(Lcom/facebook/common/memory/a;)V

    .line 7
    new-instance v8, Lcom/facebook/imagepipeline/producers/l$b;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/l;->d:Lcom/facebook/imagepipeline/decoder/d;

    iget-boolean v6, p0, Lcom/facebook/imagepipeline/producers/l;->h:Z

    iget v7, p0, Lcom/facebook/imagepipeline/producers/l;->i:I

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/l$b;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/decoder/e;Lcom/facebook/imagepipeline/decoder/d;ZI)V

    move-object v0, v8

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/l;->e:Lcom/facebook/imagepipeline/producers/i0;

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 13
    :cond_3
    throw p1
.end method
