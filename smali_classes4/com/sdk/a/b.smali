.class public Lcom/sdk/a/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.sdk.a.b"

.field public static b:Ljava/lang/Boolean;

.field public static c:Landroid/net/Network;

.field public static d:Z

.field public static e:Landroid/net/ConnectivityManager$NetworkCallback;


# instance fields
.field public f:Ljava/net/HttpURLConnection;

.field public g:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/a/b;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sdk/a/b;->g:Landroid/net/ConnectivityManager;

    :try_start_0
    sget-object p1, Lcom/sdk/a/b;->c:Landroid/net/Network;

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/sdk/a/b;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p1, p2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/sdk/a/b;->f:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    return-void

    :cond_0
    const/4 p1, 0x0

    :try_start_2
    sput-boolean p1, Lcom/sdk/a/b;->d:Z

    new-instance v0, Lcom/sdk/a/a;

    invoke-direct {v0, p0, p2}, Lcom/sdk/a/a;-><init>(Lcom/sdk/a/b;Ljava/net/URL;)V

    sput-object v0, Lcom/sdk/a/b;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1
    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {p2, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {p2, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/sdk/a/b;->g:Landroid/net/ConnectivityManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2
    sget-object p2, Lcom/sdk/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sdk/a/b;->b:Ljava/lang/Boolean;

    invoke-static {p2, p1, v0}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/sdk/a/b;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    iput-object p1, p0, Lcom/sdk/a/b;->f:Ljava/net/HttpURLConnection;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/net/HttpURLConnection;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/sdk/a/b;->f:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    return-object v2

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
