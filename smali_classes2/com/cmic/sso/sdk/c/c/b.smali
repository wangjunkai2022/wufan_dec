.class public Lcom/cmic/sso/sdk/c/c/b;
.super Lcom/cmic/sso/sdk/c/c/c;
.source "HttpGetPrephoneRequest.java"


# instance fields
.field private final b:Lcom/cmic/sso/sdk/c/b/e;

.field private c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/c/c/c;-><init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/c/c/b;->c:Z

    .line 3
    iput-object p2, p0, Lcom/cmic/sso/sdk/c/c/b;->b:Lcom/cmic/sso/sdk/c/b/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/a;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/c/c/b;->c:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/b;->b:Lcom/cmic/sso/sdk/c/b/e;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/c/b/e;->c()Lcom/cmic/sso/sdk/c/b/a;

    move-result-object v0

    const-string v1, "isCloseIpv4"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v3}, Lcom/cmic/sso/sdk/e/p;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/b/a;->q(Ljava/lang/String;)V

    :cond_0
    const-string v1, "isCloseIpv6"

    .line 6
    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {v3}, Lcom/cmic/sso/sdk/e/p;->b(Z)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/b/a;->r(Ljava/lang/String;)V

    :cond_1
    const-string v1, "appkey"

    .line 9
    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/g;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/a;->n(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/cmic/sso/sdk/c/c/b;->b:Lcom/cmic/sso/sdk/c/b/e;

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/c/b/e;->a(Lcom/cmic/sso/sdk/c/b/a;)V

    .line 11
    iget-object p1, p0, Lcom/cmic/sso/sdk/c/c/b;->b:Lcom/cmic/sso/sdk/c/b/e;

    invoke-virtual {p1, v3}, Lcom/cmic/sso/sdk/c/b/e;->a(Z)V

    .line 12
    iget-object p1, p0, Lcom/cmic/sso/sdk/c/c/b;->b:Lcom/cmic/sso/sdk/c/b/e;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/c/b/e;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/c/c;->a:Ljava/lang/String;

    .line 13
    iput-boolean v3, p0, Lcom/cmic/sso/sdk/c/c/b;->c:Z

    :cond_2
    return-void
.end method
