.class Lcom/cmic/sso/sdk/c/a/d$1;
.super Ljava/lang/Object;
.source "WifiChangeInterceptor.java"

# interfaces
.implements Lcom/cmic/sso/sdk/e/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/c/a/d;->a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Lcom/cmic/sso/sdk/c/c/c;

.field final synthetic c:Lcom/cmic/sso/sdk/c/d/c;

.field final synthetic d:Lcom/cmic/sso/sdk/c/a/d;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/c/a/d;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/c/a/d$1;->d:Lcom/cmic/sso/sdk/c/a/d;

    iput-object p2, p0, Lcom/cmic/sso/sdk/c/a/d$1;->a:Lcom/cmic/sso/sdk/a;

    iput-object p3, p0, Lcom/cmic/sso/sdk/c/a/d$1;->b:Lcom/cmic/sso/sdk/c/c/c;

    iput-object p4, p0, Lcom/cmic/sso/sdk/c/a/d$1;->c:Lcom/cmic/sso/sdk/c/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/a/d$1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a/d$1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cmic/sso/sdk/c/a/d$1$1;

    iget-object v1, p0, Lcom/cmic/sso/sdk/c/a/d$1;->a:Lcom/cmic/sso/sdk/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/cmic/sso/sdk/c/a/d$1$1;-><init>(Lcom/cmic/sso/sdk/c/a/d$1;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Landroid/net/Network;)V

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/n;->a(Lcom/cmic/sso/sdk/e/n$a;)V

    :cond_0
    return-void
.end method
