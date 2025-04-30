.class public Lcom/facebook/imagepipeline/animated/impl/c;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/animated/impl/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/cache/common/c;

.field private final b:Lcom/facebook/imagepipeline/cache/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/imagepipeline/cache/h$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/h$e<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/cache/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->a:Lcom/facebook/cache/common/c;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 4
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->d:Ljava/util/LinkedHashSet;

    .line 5
    new-instance p1, Lcom/facebook/imagepipeline/animated/impl/c$a;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/animated/impl/c$a;-><init>(Lcom/facebook/imagepipeline/animated/impl/c;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->c:Lcom/facebook/imagepipeline/cache/h$e;

    return-void
.end method

.method private e(I)Lcom/facebook/imagepipeline/animated/impl/c$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/c$b;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->a:Lcom/facebook/cache/common/c;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/animated/impl/c$b;-><init>(Lcom/facebook/cache/common/c;I)V

    return-object v0
.end method

.method private declared-synchronized g()Lcom/facebook/cache/common/c;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cache/common/c;

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(ILcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->b:Lcom/facebook/imagepipeline/cache/h;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->e(I)Lcom/facebook/imagepipeline/animated/impl/c$b;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->c:Lcom/facebook/imagepipeline/cache/h$e;

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/cache/h;->f(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/h$e;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->b:Lcom/facebook/imagepipeline/cache/h;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->e(I)Lcom/facebook/imagepipeline/animated/impl/c$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->i(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(I)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->b:Lcom/facebook/imagepipeline/cache/h;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->e(I)Lcom/facebook/imagepipeline/animated/impl/c$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/c;->g()Lcom/facebook/cache/common/c;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->b:Lcom/facebook/imagepipeline/cache/h;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/cache/h;->D(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method public declared-synchronized f(Lcom/facebook/cache/common/c;Z)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
