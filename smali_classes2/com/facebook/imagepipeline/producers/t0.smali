.class public Lcom/facebook/imagepipeline/producers/t0;
.super Ljava/lang/Object;
.source "ThreadHandoffProducer.java"

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


# static fields
.field public static final c:Ljava/lang/String; = "BackgroundThreadHandoffProducer"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/producers/u0;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/u0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/u0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/i0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/t0;->a:Lcom/facebook/imagepipeline/producers/i0;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/t0;->b:Lcom/facebook/imagepipeline/producers/u0;

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/t0;)Lcom/facebook/imagepipeline/producers/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/t0;->a:Lcom/facebook/imagepipeline/producers/i0;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/t0;)Lcom/facebook/imagepipeline/producers/u0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/t0;->b:Lcom/facebook/imagepipeline/producers/u0;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getListener()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v6

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getId()Ljava/lang/String;

    move-result-object v7

    .line 3
    new-instance v10, Lcom/facebook/imagepipeline/producers/t0$a;

    const-string v4, "BackgroundThreadHandoffProducer"

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v5, v7

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/producers/t0$a;-><init>(Lcom/facebook/imagepipeline/producers/t0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    .line 4
    new-instance p1, Lcom/facebook/imagepipeline/producers/t0$b;

    invoke-direct {p1, p0, v10}, Lcom/facebook/imagepipeline/producers/t0$b;-><init>(Lcom/facebook/imagepipeline/producers/t0;Lcom/facebook/imagepipeline/producers/r0;)V

    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/k0;->d(Lcom/facebook/imagepipeline/producers/l0;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/t0;->b:Lcom/facebook/imagepipeline/producers/u0;

    invoke-virtual {p1, v10}, Lcom/facebook/imagepipeline/producers/u0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
