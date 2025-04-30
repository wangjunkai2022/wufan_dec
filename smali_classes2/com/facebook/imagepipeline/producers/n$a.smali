.class Lcom/facebook/imagepipeline/producers/n$a;
.super Ljava/lang/Object;
.source "DiskCacheReadProducer.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/n;->h(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)Lbolts/g;
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

.field final synthetic e:Lcom/facebook/imagepipeline/producers/n;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/n$a;->e:Lcom/facebook/imagepipeline/producers/n;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/n$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/n$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/n$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/n$a;->d:Lcom/facebook/imagepipeline/producers/k0;

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
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/n$a;->b(Lbolts/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/h;)Ljava/lang/Void;
    .locals 6
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
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/n;->c(Lbolts/h;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DiskCacheProducer"

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/n$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/imagepipeline/producers/m0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/n$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lbolts/h;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/n$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lbolts/h;->A()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v3, v2, p1, v1}, Lcom/facebook/imagepipeline/producers/m0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 6
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/n$a;->e:Lcom/facebook/imagepipeline/producers/n;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/n;->d(Lcom/facebook/imagepipeline/producers/n;)Lcom/facebook/imagepipeline/producers/i0;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/n$a;->d:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {p1, v0, v2}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lbolts/h;->B()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/n$a;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->s()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v3, v5, v4}, Lcom/facebook/imagepipeline/producers/n;->e(Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v4

    .line 10
    invoke-interface {v0, v3, v2, v4}, Lcom/facebook/imagepipeline/producers/m0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/n$a;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v5}, Lcom/facebook/imagepipeline/producers/m0;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(F)V

    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0, p1, v5}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    .line 14
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->close()V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/n$a;->a:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    .line 16
    invoke-static {p1, v0, v3, v3}, Lcom/facebook/imagepipeline/producers/n;->e(Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v3

    .line 17
    invoke-interface {p1, v0, v2, v3}, Lcom/facebook/imagepipeline/producers/m0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/n$a;->e:Lcom/facebook/imagepipeline/producers/n;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/n;->d(Lcom/facebook/imagepipeline/producers/n;)Lcom/facebook/imagepipeline/producers/i0;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$a;->c:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/n$a;->d:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {p1, v0, v2}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    :goto_0
    return-object v1
.end method
