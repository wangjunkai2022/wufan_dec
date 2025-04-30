.class public Lcom/sdk/p/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "com.sdk.p.a"

.field public static final b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/p/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sdk/p/f$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/sdk/p/f$a;"
        }
    .end annotation

    sget-object v0, Lcom/sdk/p/f$a;->c:Lcom/sdk/p/f$a;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "connectivity"

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "MOBILE"

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/sdk/p/f$a;->b:Lcom/sdk/p/f$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    const-string v1, "WIFI"

    :try_start_2
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sdk/p/f$a;->a:Lcom/sdk/p/f$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v1, Lcom/sdk/p/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/sdk/p/a;->b:Ljava/lang/Boolean;

    invoke-static {v1, p0, v2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_2
    :goto_1
    return-object v0
.end method
