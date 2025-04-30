.class Lcom/cmic/sso/sdk/c/a/d$1$1;
.super Lcom/cmic/sso/sdk/e/n$a;
.source "WifiChangeInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/c/a/d$1;->a(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Network;

.field final synthetic b:Lcom/cmic/sso/sdk/c/a/d$1;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/c/a/d$1;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Landroid/net/Network;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->b:Lcom/cmic/sso/sdk/c/a/d$1;

    iput-object p4, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->a:Landroid/net/Network;

    invoke-direct {p0, p2, p3}, Lcom/cmic/sso/sdk/e/n$a;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->a:Landroid/net/Network;

    if-eqz v0, :cond_0

    const-string v0, "WifiChangeInterceptor"

    const-string v1, "onAvailable"

    .line 2
    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->b:Lcom/cmic/sso/sdk/c/a/d$1;

    iget-object v0, v0, Lcom/cmic/sso/sdk/c/a/d$1;->b:Lcom/cmic/sso/sdk/c/c/c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->a:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/c/c;->a(Landroid/net/Network;)V

    .line 4
    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->b:Lcom/cmic/sso/sdk/c/a/d$1;

    iget-object v1, v0, Lcom/cmic/sso/sdk/c/a/d$1;->d:Lcom/cmic/sso/sdk/c/a/d;

    iget-object v2, v0, Lcom/cmic/sso/sdk/c/a/d$1;->b:Lcom/cmic/sso/sdk/c/c/c;

    iget-object v3, v0, Lcom/cmic/sso/sdk/c/a/d$1;->c:Lcom/cmic/sso/sdk/c/d/c;

    iget-object v0, v0, Lcom/cmic/sso/sdk/c/a/d$1;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v1, v2, v3, v0}, Lcom/cmic/sso/sdk/c/a/d;->b(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V

    goto :goto_0

    :cond_0
    const v0, 0x1906c

    .line 5
    invoke-static {v0}, Lcom/cmic/sso/sdk/c/d/a;->a(I)Lcom/cmic/sso/sdk/c/d/a;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->b:Lcom/cmic/sso/sdk/c/a/d$1;

    iget-object v1, v1, Lcom/cmic/sso/sdk/c/a/d$1;->c:Lcom/cmic/sso/sdk/c/d/c;

    invoke-interface {v1, v0}, Lcom/cmic/sso/sdk/c/d/c;->a(Lcom/cmic/sso/sdk/c/d/a;)V

    :goto_0
    return-void
.end method
