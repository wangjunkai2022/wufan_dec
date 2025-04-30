.class public Lcom/facebook/imagepipeline/producers/g0$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "PostprocessedBitmapMemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final i:Lcom/facebook/cache/common/c;

.field private final j:Z

.field private final k:Lcom/facebook/imagepipeline/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/c;ZLcom/facebook/imagepipeline/cache/p;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/cache/common/c;",
            "Z",
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/g0$a;->i:Lcom/facebook/cache/common/c;

    .line 3
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/producers/g0$a;->j:Z

    .line 4
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/g0$a;->k:Lcom/facebook/imagepipeline/cache/p;

    .line 5
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/g0$a;->l:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/g0$a;->q(Lcom/facebook/common/references/a;I)V

    return-void
.end method

.method protected q(Lcom/facebook/common/references/a;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/g0$a;->j:Z

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/g0$a;->l:Z

    if-eqz v1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/g0$a;->k:Lcom/facebook/imagepipeline/cache/p;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/g0$a;->i:Lcom/facebook/cache/common/c;

    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/p;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    .line 6
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(F)V

    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    if-eqz v0, :cond_4

    move-object p1, v0

    :cond_4
    invoke-interface {v1, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 9
    throw p1
.end method
