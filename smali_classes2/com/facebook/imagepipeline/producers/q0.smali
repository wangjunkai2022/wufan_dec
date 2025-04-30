.class public Lcom/facebook/imagepipeline/producers/q0;
.super Lcom/facebook/imagepipeline/producers/d;
.source "SettableProducerContext.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->getListener()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v3

    .line 4
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->c()Ljava/lang/Object;

    move-result-object v4

    .line 5
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->g()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    .line 6
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->f()Z

    move-result v6

    .line 7
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->e()Z

    move-result v7

    .line 8
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->a()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v8

    move-object v0, p0

    .line 9
    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/q0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 9

    .line 10
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getId()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getListener()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v3

    .line 12
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->c()Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->g()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    .line 14
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->f()Z

    move-result v6

    .line 15
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->e()Z

    move-result v7

    .line 16
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->a()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    .line 17
    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/q0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p8}, Lcom/facebook/imagepipeline/producers/d;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    return-void
.end method


# virtual methods
.method public r(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/d;->o(Z)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/d;->i(Ljava/util/List;)V

    return-void
.end method

.method public s(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/d;->p(Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/d;->j(Ljava/util/List;)V

    return-void
.end method

.method public t(Lcom/facebook/imagepipeline/common/Priority;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/d;->q(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/d;->k(Ljava/util/List;)V

    return-void
.end method
