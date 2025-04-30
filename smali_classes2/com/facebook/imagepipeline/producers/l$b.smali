.class Lcom/facebook/imagepipeline/producers/l$b;
.super Lcom/facebook/imagepipeline/producers/l$c;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final q:Lcom/facebook/imagepipeline/decoder/e;

.field private final r:Lcom/facebook/imagepipeline/decoder/d;

.field private s:I

.field final synthetic t:Lcom/facebook/imagepipeline/producers/l;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/decoder/e;Lcom/facebook/imagepipeline/decoder/d;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            "Lcom/facebook/imagepipeline/decoder/e;",
            "Lcom/facebook/imagepipeline/decoder/d;",
            "ZI)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->t:Lcom/facebook/imagepipeline/producers/l;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/l$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;ZI)V

    .line 3
    invoke-static {p4}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/e;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    .line 4
    invoke-static {p5}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/d;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->r:Lcom/facebook/imagepipeline/decoder/d;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->s:I

    return-void
.end method


# virtual methods
.method protected declared-synchronized E(Lcom/facebook/imagepipeline/image/e;I)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$c;->E(Lcom/facebook/imagepipeline/image/e;I)Z

    move-result v0

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->e(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/b;->m(II)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x4

    .line 3
    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/b;->m(II)Z

    move-result p2

    if-nez p2, :cond_4

    .line 4
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->y(Lcom/facebook/imagepipeline/image/e;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    move-result-object p2

    sget-object v1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    if-ne p2, v1, :cond_4

    .line 6
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/l$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/decoder/e;->h(Lcom/facebook/imagepipeline/image/e;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 7
    monitor-exit p0

    return p2

    .line 8
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/decoder/e;->d()I

    move-result p1

    .line 9
    iget v1, p0, Lcom/facebook/imagepipeline/producers/l$b;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v1, :cond_2

    .line 10
    monitor-exit p0

    return p2

    .line 11
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/l$b;->r:Lcom/facebook/imagepipeline/decoder/d;

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/decoder/d;->a(I)I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/l$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    .line 12
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/e;->e()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 13
    monitor-exit p0

    return p2

    .line 14
    :cond_3
    :try_start_3
    iput p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->s:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected w(Lcom/facebook/imagepipeline/image/e;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/decoder/e;->c()I

    move-result p1

    return p1
.end method

.method protected x()Lcom/facebook/imagepipeline/image/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$b;->r:Lcom/facebook/imagepipeline/decoder/d;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/l$b;->q:Lcom/facebook/imagepipeline/decoder/e;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/e;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/decoder/d;->b(I)Lcom/facebook/imagepipeline/image/h;

    move-result-object v0

    return-object v0
.end method
