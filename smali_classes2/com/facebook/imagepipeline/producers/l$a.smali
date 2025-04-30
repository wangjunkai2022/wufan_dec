.class Lcom/facebook/imagepipeline/producers/l$a;
.super Lcom/facebook/imagepipeline/producers/l$c;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic q:Lcom/facebook/imagepipeline/producers/l;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            "ZI)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l$a;->q:Lcom/facebook/imagepipeline/producers/l;

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/facebook/imagepipeline/producers/l$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;ZI)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized E(Lcom/facebook/imagepipeline/image/e;I)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->e(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return p1

    .line 3
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$c;->E(Lcom/facebook/imagepipeline/image/e;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected w(Lcom/facebook/imagepipeline/image/e;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->s()I

    move-result p1

    return p1
.end method

.method protected x()Lcom/facebook/imagepipeline/image/h;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, v0}, Lcom/facebook/imagepipeline/image/g;->d(IZZ)Lcom/facebook/imagepipeline/image/h;

    move-result-object v0

    return-object v0
.end method
