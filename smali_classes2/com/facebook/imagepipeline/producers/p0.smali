.class public Lcom/facebook/imagepipeline/producers/p0;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/p0$a;
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
.field private static final f:Ljava/lang/String; = "ResizeAndRotateProducer"

.field private static final g:Ljava/lang/String; = "Image format"

.field private static final h:Ljava/lang/String; = "Original size"

.field private static final i:Ljava/lang/String; = "Requested size"

.field private static final j:Ljava/lang/String; = "Transcoding result"

.field private static final k:Ljava/lang/String; = "Transcoder id"

.field static final l:I = 0x64
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/facebook/common/memory/g;

.field private final c:Lcom/facebook/imagepipeline/producers/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lcom/facebook/imagepipeline/transcoder/d;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/producers/i0;ZLcom/facebook/imagepipeline/transcoder/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/common/memory/g;",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;Z",
            "Lcom/facebook/imagepipeline/transcoder/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0;->a:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {p2}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/g;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0;->b:Lcom/facebook/common/memory/g;

    .line 4
    invoke-static {p3}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/i0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0;->c:Lcom/facebook/imagepipeline/producers/i0;

    .line 5
    invoke-static {p5}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/transcoder/d;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0;->e:Lcom/facebook/imagepipeline/transcoder/d;

    .line 6
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/p0;->d:Z

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/p0;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/p0;->a:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/transcoder/c;)Lcom/facebook/common/util/TriState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/p0;->h(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/transcoder/c;)Lcom/facebook/common/util/TriState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/producers/p0;)Lcom/facebook/common/memory/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/p0;->b:Lcom/facebook/common/memory/g;

    return-object p0
.end method

.method private static f(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/e;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/transcoder/e;->e(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/e;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/p0;->g(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/e;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static g(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/e;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/facebook/imagepipeline/transcoder/e;->g:Lcom/facebook/common/internal/ImmutableList;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->k()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 3
    invoke-virtual {p1, p0}, Lcom/facebook/imagepipeline/image/e;->E(I)V

    return p0
.end method

.method private static h(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/transcoder/c;)Lcom/facebook/common/util/TriState;
    .locals 2

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/transcoder/c;->c(Lcom/facebook/imageformat/c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/producers/p0;->f(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/e;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/d;

    move-result-object p0

    .line 6
    invoke-interface {p2, p1, v0, p0}, Lcom/facebook/imagepipeline/transcoder/c;->a(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/d;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 7
    :goto_1
    invoke-static {p0}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    :goto_2
    sget-object p0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
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
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0;->c:Lcom/facebook/imagepipeline/producers/i0;

    new-instance v7, Lcom/facebook/imagepipeline/producers/p0$a;

    iget-boolean v5, p0, Lcom/facebook/imagepipeline/producers/p0;->d:Z

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/p0;->e:Lcom/facebook/imagepipeline/transcoder/d;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/producers/p0$a;-><init>(Lcom/facebook/imagepipeline/producers/p0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;ZLcom/facebook/imagepipeline/transcoder/d;)V

    invoke-interface {v0, v7, p2}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    return-void
.end method
