.class public Lcom/facebook/imagepipeline/producers/e0;
.super Ljava/lang/Object;
.source "NullProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/i0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    return-void
.end method
