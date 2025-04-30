.class Lcom/cmic/sso/sdk/e/r$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/e/r;->a(Lcom/cmic/sso/sdk/e/r$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/e/r$a;

.field final synthetic b:Lcom/cmic/sso/sdk/e/r;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/e/r;Lcom/cmic/sso/sdk/e/r$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/e/r$1;->b:Lcom/cmic/sso/sdk/e/r;

    iput-object p2, p0, Lcom/cmic/sso/sdk/e/r$1;->a:Lcom/cmic/sso/sdk/e/r$a;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/cmic/sso/sdk/e/r$1;->b:Lcom/cmic/sso/sdk/e/r;

    invoke-static {v1}, Lcom/cmic/sso/sdk/e/r;->a(Lcom/cmic/sso/sdk/e/r;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/cmic/sso/sdk/e/r$1;->b:Lcom/cmic/sso/sdk/e/r;

    invoke-static {v1, p1}, Lcom/cmic/sso/sdk/e/r;->a(Lcom/cmic/sso/sdk/e/r;Landroid/net/Network;)Landroid/net/Network;

    .line 3
    iget-object v1, p0, Lcom/cmic/sso/sdk/e/r$1;->a:Lcom/cmic/sso/sdk/e/r$a;

    invoke-interface {v1, p1}, Lcom/cmic/sso/sdk/e/r$a;->a(Landroid/net/Network;)V

    .line 4
    iget-object p1, p0, Lcom/cmic/sso/sdk/e/r$1;->b:Lcom/cmic/sso/sdk/e/r;

    invoke-static {p1, v2}, Lcom/cmic/sso/sdk/e/r;->a(Lcom/cmic/sso/sdk/e/r;Z)Z

    goto :goto_0

    :cond_0
    const-string p1, "WifiNetworkUtils"

    const-string/jumbo v1, "\u5207\u6362\u5931\u8d25\uff0c\u672a\u5f00\u542f\u6570\u636e\u7f51\u7edc"

    .line 5
    invoke-static {p1, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/cmic/sso/sdk/e/r$1;->b:Lcom/cmic/sso/sdk/e/r;

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/r;->a(Lcom/cmic/sso/sdk/e/r;Landroid/net/Network;)Landroid/net/Network;

    .line 7
    iget-object p1, p0, Lcom/cmic/sso/sdk/e/r$1;->a:Lcom/cmic/sso/sdk/e/r$a;

    invoke-interface {p1, v0}, Lcom/cmic/sso/sdk/e/r$a;->a(Landroid/net/Network;)V

    .line 8
    iget-object p1, p0, Lcom/cmic/sso/sdk/e/r$1;->b:Lcom/cmic/sso/sdk/e/r;

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/r;->a(Lcom/cmic/sso/sdk/e/r;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v1, p0, Lcom/cmic/sso/sdk/e/r$1;->b:Lcom/cmic/sso/sdk/e/r;

    invoke-static {v1}, Lcom/cmic/sso/sdk/e/r;->b(Lcom/cmic/sso/sdk/e/r;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    iget-object p1, p0, Lcom/cmic/sso/sdk/e/r$1;->b:Lcom/cmic/sso/sdk/e/r;

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/r;->a(Lcom/cmic/sso/sdk/e/r;Landroid/net/Network;)Landroid/net/Network;

    .line 11
    iget-object p1, p0, Lcom/cmic/sso/sdk/e/r$1;->a:Lcom/cmic/sso/sdk/e/r$a;

    invoke-interface {p1, v0}, Lcom/cmic/sso/sdk/e/r$a;->a(Landroid/net/Network;)V

    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cmic/sso/sdk/e/r$1;->b:Lcom/cmic/sso/sdk/e/r;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/r;->a(Lcom/cmic/sso/sdk/e/r;Z)Z

    return-void
.end method
