.class public Lcom/facebook/imagepipeline/datasource/g;
.super Lcom/facebook/imagepipeline/datasource/a;
.source "ProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/datasource/a<",
        "TT;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/q0;",
            "Lr0/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/datasource/a;-><init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)V

    return-void
.end method

.method public static z(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/q0;",
            "Lr0/c;",
            ")",
            "Lcom/facebook/datasource/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/datasource/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/datasource/g;-><init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)V

    return-object v0
.end method
