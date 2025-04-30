.class Lcom/facebook/imagepipeline/producers/f0$a;
.super Ljava/lang/Object;
.source "PartialDiskCacheProducer.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/f0;->h(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/cache/common/c;)Lbolts/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g<",
        "Lcom/facebook/imagepipeline/image/e;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/m0;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/Consumer;

.field final synthetic d:Lcom/facebook/imagepipeline/producers/k0;

.field final synthetic e:Lcom/facebook/cache/common/c;

.field final synthetic f:Lcom/facebook/imagepipeline/producers/f0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/f0;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/cache/common/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/f0$a;->f:Lcom/facebook/imagepipeline/producers/f0;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/f0$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/f0$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/f0$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/f0$a;->d:Lcom/facebook/imagepipeline/producers/k0;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/f0$a;->e:Lcom/facebook/cache/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lbolts/h;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/f0$a;->b(Lbolts/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/h;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/h<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/f0;->c(Lbolts/h;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PartialDiskCacheProducer"

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/f0$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/imagepipeline/producers/m0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/f0$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lbolts/h;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/f0$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lbolts/h;->A()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v3, v2, p1, v1}, Lcom/facebook/imagepipeline/producers/m0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 6
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/f0$a;->f:Lcom/facebook/imagepipeline/producers/f0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/f0$a;->d:Lcom/facebook/imagepipeline/producers/k0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/f0$a;->e:Lcom/facebook/cache/common/c;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/facebook/imagepipeline/producers/f0;->d(Lcom/facebook/imagepipeline/producers/f0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lbolts/h;->B()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/f0$a;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->s()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v3, v5, v4}, Lcom/facebook/imagepipeline/producers/f0;->f(Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v4

    .line 10
    invoke-interface {v0, v3, v2, v4}, Lcom/facebook/imagepipeline/producers/m0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->s()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v0}, Lcom/facebook/imagepipeline/common/a;->e(I)Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/image/e;->D(Lcom/facebook/imagepipeline/common/a;)V

    .line 13
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->s()I

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/f0$a;->d:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()Lcom/facebook/imagepipeline/common/a;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/facebook/imagepipeline/common/a;->a(Lcom/facebook/imagepipeline/common/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/f0$a;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v5}, Lcom/facebook/imagepipeline/producers/m0;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    const/16 v2, 0x9

    invoke-interface {v0, p1, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    const/16 v2, 0x8

    invoke-interface {v0, p1, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    .line 19
    invoke-static {v4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    sub-int/2addr v3, v5

    .line 20
    invoke-static {v3}, Lcom/facebook/imagepipeline/common/a;->b(I)Lcom/facebook/imagepipeline/common/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->w(Lcom/facebook/imagepipeline/common/a;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 22
    new-instance v2, Lcom/facebook/imagepipeline/producers/q0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/f0$a;->d:Lcom/facebook/imagepipeline/producers/k0;

    invoke-direct {v2, v0, v3}, Lcom/facebook/imagepipeline/producers/q0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/k0;)V

    .line 23
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$a;->f:Lcom/facebook/imagepipeline/producers/f0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/f0$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/f0$a;->e:Lcom/facebook/cache/common/c;

    invoke-static {v0, v3, v2, v4, p1}, Lcom/facebook/imagepipeline/producers/f0;->d(Lcom/facebook/imagepipeline/producers/f0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    goto :goto_0

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/f0$a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    .line 25
    invoke-static {v0, v3, v4, v4}, Lcom/facebook/imagepipeline/producers/f0;->f(Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v4

    .line 26
    invoke-interface {v0, v3, v2, v4}, Lcom/facebook/imagepipeline/producers/m0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0$a;->f:Lcom/facebook/imagepipeline/producers/f0;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/f0$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/f0$a;->d:Lcom/facebook/imagepipeline/producers/k0;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/f0$a;->e:Lcom/facebook/cache/common/c;

    invoke-static {v0, v2, v3, v4, p1}, Lcom/facebook/imagepipeline/producers/f0;->d(Lcom/facebook/imagepipeline/producers/f0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    :goto_0
    return-object v1
.end method
