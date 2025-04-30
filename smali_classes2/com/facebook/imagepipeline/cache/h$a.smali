.class Lcom/facebook/imagepipeline/cache/h$a;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/h;->F(Lcom/facebook/imagepipeline/cache/v;)Lcom/facebook/imagepipeline/cache/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/v<",
        "Lcom/facebook/imagepipeline/cache/h$d<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/cache/v;

.field final synthetic b:Lcom/facebook/imagepipeline/cache/h;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/h$a;->b:Lcom/facebook/imagepipeline/cache/h;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/h$a;->a:Lcom/facebook/imagepipeline/cache/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/cache/h$d;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/h$a;->b(Lcom/facebook/imagepipeline/cache/h$d;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/facebook/imagepipeline/cache/h$d;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h$a;->a:Lcom/facebook/imagepipeline/cache/v;

    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/h$d;->b:Lcom/facebook/common/references/a;

    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/v;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
