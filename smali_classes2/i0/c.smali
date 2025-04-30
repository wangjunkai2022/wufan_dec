.class public Li0/c;
.super Lr0/a;
.source "ImagePerfRequestListener.java"


# instance fields
.field private final a:Lcom/facebook/common/time/c;

.field private final b:Lcom/facebook/drawee/backends/pipeline/info/d;


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/c;Lcom/facebook/drawee/backends/pipeline/info/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr0/a;-><init>()V

    .line 2
    iput-object p1, p0, Li0/c;->a:Lcom/facebook/common/time/c;

    .line 3
    iput-object p2, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    iget-object v1, p0, Li0/c;->a:Lcom/facebook/common/time/c;

    invoke-interface {v1}, Lcom/facebook/common/time/c;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/d;->p(J)V

    .line 2
    iget-object v0, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/d;->n(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 3
    iget-object p1, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/d;->c(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p3}, Lcom/facebook/drawee/backends/pipeline/info/d;->u(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p4}, Lcom/facebook/drawee/backends/pipeline/info/d;->t(Z)V

    return-void
.end method

.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    iget-object v1, p0, Li0/c;->a:Lcom/facebook/common/time/c;

    invoke-interface {v1}, Lcom/facebook/common/time/c;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/d;->o(J)V

    .line 2
    iget-object v0, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/d;->n(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 3
    iget-object p1, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/d;->u(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p3}, Lcom/facebook/drawee/backends/pipeline/info/d;->t(Z)V

    return-void
.end method

.method public i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 2

    .line 1
    iget-object p3, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    iget-object v0, p0, Li0/c;->a:Lcom/facebook/common/time/c;

    invoke-interface {v0}, Lcom/facebook/common/time/c;->now()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/d;->o(J)V

    .line 2
    iget-object p3, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p3, p1}, Lcom/facebook/drawee/backends/pipeline/info/d;->n(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 3
    iget-object p1, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/d;->u(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p4}, Lcom/facebook/drawee/backends/pipeline/info/d;->t(Z)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    iget-object v1, p0, Li0/c;->a:Lcom/facebook/common/time/c;

    invoke-interface {v1}, Lcom/facebook/common/time/c;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/d;->o(J)V

    .line 2
    iget-object v0, p0, Li0/c;->b:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/d;->u(Ljava/lang/String;)V

    return-void
.end method
