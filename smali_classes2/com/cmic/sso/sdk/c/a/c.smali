.class public Lcom/cmic/sso/sdk/c/a/c;
.super Ljava/lang/Object;
.source "RetryAndRedirectInterceptor.java"

# interfaces
.implements Lcom/cmic/sso/sdk/c/a/b;


# instance fields
.field private a:Lcom/cmic/sso/sdk/c/a/b;

.field private b:Lcom/cmic/sso/sdk/c/d/c;

.field private final c:Lcom/cmic/sso/sdk/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/cmic/sso/sdk/c/a;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/c/a;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/c/a/c;->c:Lcom/cmic/sso/sdk/c/a;

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/c/a/c;)Lcom/cmic/sso/sdk/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/c/a/c;->c:Lcom/cmic/sso/sdk/c/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/c/a/b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/cmic/sso/sdk/c/a/c;->a:Lcom/cmic/sso/sdk/c/a/b;

    return-void
.end method

.method public a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cmic/sso/sdk/c/a/c;->b(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public b(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a/c;->a:Lcom/cmic/sso/sdk/c/a/b;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/cmic/sso/sdk/c/a/c$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/cmic/sso/sdk/c/a/c$1;-><init>(Lcom/cmic/sso/sdk/c/a/c;Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/d/c;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/c/a/c;->b:Lcom/cmic/sso/sdk/c/d/c;

    .line 3
    invoke-virtual {p1}, Lcom/cmic/sso/sdk/c/c/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p2, p0, Lcom/cmic/sso/sdk/c/a/c;->a:Lcom/cmic/sso/sdk/c/a/b;

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a/c;->b:Lcom/cmic/sso/sdk/c/d/c;

    invoke-interface {p2, p1, v0, p3}, Lcom/cmic/sso/sdk/c/a/b;->a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V

    goto :goto_0

    :cond_0
    const p1, 0x30d59

    .line 5
    invoke-static {p1}, Lcom/cmic/sso/sdk/c/d/a;->a(I)Lcom/cmic/sso/sdk/c/d/a;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/cmic/sso/sdk/c/d/c;->a(Lcom/cmic/sso/sdk/c/d/a;)V

    :cond_1
    :goto_0
    return-void
.end method
