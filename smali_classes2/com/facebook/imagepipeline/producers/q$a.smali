.class Lcom/facebook/imagepipeline/producers/q$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "EncodedMemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Lcom/facebook/imagepipeline/image/e;",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lcom/facebook/imagepipeline/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/facebook/cache/common/c;

.field private final k:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/cache/common/c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/cache/common/c;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/q$a;->i:Lcom/facebook/imagepipeline/cache/p;

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/q$a;->j:Lcom/facebook/cache/common/c;

    .line 4
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/q$a;->k:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/q$a;->q(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method

.method public q(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EncodedMemoryCacheProducer#onNewResultImpl"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->e(I)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    const/16 v0, 0xa

    .line 4
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/b;->l(II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->g()Lcom/facebook/common/references/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 7
    :try_start_1
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/producers/q$a;->k:Z

    if-eqz v2, :cond_2

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/q$a;->i:Lcom/facebook/imagepipeline/cache/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/q$a;->j:Lcom/facebook/cache/common/c;

    invoke-interface {v1, v2, v0}, Lcom/facebook/imagepipeline/cache/p;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_4

    .line 10
    :try_start_3
    new-instance v0, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/a;)V

    .line 11
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/image/e;->e(Lcom/facebook/imagepipeline/image/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :try_start_4
    invoke-static {v1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 13
    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->c(F)V

    .line 14
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15
    :try_start_6
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_7
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 19
    throw p1

    :catchall_1
    move-exception p1

    .line 20
    invoke-static {v1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 21
    throw p1

    :catchall_2
    move-exception p1

    .line 22
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 23
    throw p1

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 25
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 26
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_5
    return-void

    .line 27
    :cond_6
    :goto_0
    :try_start_8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 28
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_7
    return-void

    :catchall_3
    move-exception p1

    .line 30
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 31
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 32
    :cond_8
    throw p1
.end method
