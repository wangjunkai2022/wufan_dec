.class public Lcom/facebook/imagepipeline/producers/q;
.super Ljava/lang/Object;
.source "EncodedMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/q$a;
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
.field public static final d:Ljava/lang/String; = "EncodedMemoryCacheProducer"

.field public static final e:Ljava/lang/String; = "cached_value_found"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/cache/f;

.field private final c:Lcom/facebook/imagepipeline/producers/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/q;->a:Lcom/facebook/imagepipeline/cache/p;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/q;->b:Lcom/facebook/imagepipeline/cache/f;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/q;->c:Lcom/facebook/imagepipeline/producers/i0;

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 11
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

    const-string v0, "EncodedMemoryCacheProducer"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EncodedMemoryCacheProducer#produceResults"

    .line 2
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getListener()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v2

    .line 5
    invoke-interface {v2, v1, v0}, Lcom/facebook/imagepipeline/producers/m0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/q;->b:Lcom/facebook/imagepipeline/cache/f;

    .line 8
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->c()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/facebook/imagepipeline/cache/f;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/q;->a:Lcom/facebook/imagepipeline/cache/p;

    invoke-interface {v4, v3}, Lcom/facebook/imagepipeline/cache/p;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x1

    const-string v6, "cached_value_found"

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 10
    :try_start_1
    new-instance p2, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {p2, v4}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/producers/m0;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "true"

    .line 12
    invoke-static {v6, v3}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 13
    :cond_1
    invoke-interface {v2, v1, v0, v7}, Lcom/facebook/imagepipeline/producers/m0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    invoke-interface {v2, v1, v0, v5}, Lcom/facebook/imagepipeline/producers/m0;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->c(F)V

    .line 16
    invoke-interface {p1, p2, v5}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    :try_start_4
    invoke-static {v4}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 19
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_5
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 22
    throw p1

    .line 23
    :cond_3
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->g()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v8

    sget-object v9, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->ENCODED_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 24
    invoke-virtual {v9}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v10, "false"

    if-lt v8, v9, :cond_6

    .line 25
    :try_start_6
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/producers/m0;->d(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 26
    invoke-static {v6, v10}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_4
    move-object p2, v7

    .line 27
    :goto_0
    invoke-interface {v2, v1, v0, p2}, Lcom/facebook/imagepipeline/producers/m0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p2, 0x0

    .line 28
    invoke-interface {v2, v1, v0, p2}, Lcom/facebook/imagepipeline/producers/m0;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    invoke-interface {p1, v7, v5}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 30
    :try_start_7
    invoke-static {v4}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 31
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 32
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_5
    return-void

    .line 33
    :cond_6
    :try_start_8
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->x()Z

    move-result v5

    .line 34
    new-instance v8, Lcom/facebook/imagepipeline/producers/q$a;

    iget-object v9, p0, Lcom/facebook/imagepipeline/producers/q;->a:Lcom/facebook/imagepipeline/cache/p;

    invoke-direct {v8, p1, v9, v3, v5}, Lcom/facebook/imagepipeline/producers/q$a;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/cache/common/c;Z)V

    .line 35
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/producers/m0;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 36
    invoke-static {v6, v10}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 37
    :cond_7
    invoke-interface {v2, v1, v0, v7}, Lcom/facebook/imagepipeline/producers/m0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/q;->c:Lcom/facebook/imagepipeline/producers/i0;

    invoke-interface {p1, v8, p2}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 39
    :try_start_9
    invoke-static {v4}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 40
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 41
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_8
    return-void

    :catchall_1
    move-exception p1

    .line 42
    :try_start_a
    invoke-static {v4}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 43
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    .line 44
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 45
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 46
    :cond_9
    throw p1
.end method
