.class public final Lcom/efs/sdk/base/core/e/a/e;
.super Lcom/efs/sdk/base/core/e/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/core/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/core/d/b;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/core/d/c;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/core/c/d;->a()Lcom/efs/sdk/base/core/c/d;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iget-boolean v1, v1, Lcom/efs/sdk/base/core/d/c;->b:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/efs/sdk/base/core/c/b;->a()Lcom/efs/sdk/base/core/c/b;

    move-result-object v1

    .line 6
    iget-object v2, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget-object v2, v2, Lcom/efs/sdk/base/core/d/a;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/efs/sdk/base/core/d/b;->a()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/efs/sdk/base/core/c/b;->a(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    new-instance v0, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v0}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    const-string v1, "flow_limit"

    .line 9
    iput-object v1, v0, Lcom/efs/sdk/base/core/d/d;->data:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/efs/sdk/base/core/f/f$a;->a()Lcom/efs/sdk/base/core/f/f;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/efs/sdk/base/core/f/f;->c:Lcom/efs/sdk/base/core/f/d;

    invoke-virtual {v1}, Lcom/efs/sdk/base/core/f/d;->b()V

    .line 12
    invoke-static {}, Lcom/efs/sdk/base/core/f/f$a;->a()Lcom/efs/sdk/base/core/f/f;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/efs/sdk/base/core/f/f;->c:Lcom/efs/sdk/base/core/f/d;

    invoke-virtual {v1}, Lcom/efs/sdk/base/core/f/d;->c()V

    .line 14
    iget-object v0, v0, Lcom/efs/sdk/base/core/c/d;->b:Lcom/efs/sdk/base/core/c/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/efs/sdk/base/core/c/c;->a(Lcom/efs/sdk/base/core/d/b;Z)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    .line 15
    :goto_0
    iget-object v1, p1, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iput-object v0, v1, Lcom/efs/sdk/base/core/d/c;->c:Lcom/efs/sdk/base/http/HttpResponse;

    .line 16
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void
.end method
