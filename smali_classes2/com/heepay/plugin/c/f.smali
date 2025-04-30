.class public Lcom/heepay/plugin/c/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/heepay/plugin/c/f;


# instance fields
.field private b:Ljava/net/Proxy;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heepay/plugin/c/f;->b:Ljava/net/Proxy;

    invoke-direct {p0}, Lcom/heepay/plugin/c/f;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/heepay/plugin/c/f;
    .locals 2

    const-class v0, Lcom/heepay/plugin/c/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heepay/plugin/c/f;->a:Lcom/heepay/plugin/c/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/heepay/plugin/c/f;

    invoke-direct {v1}, Lcom/heepay/plugin/c/f;-><init>()V

    sput-object v1, Lcom/heepay/plugin/c/f;->a:Lcom/heepay/plugin/c/f;

    :cond_0
    sget-object v1, Lcom/heepay/plugin/c/f;->a:Lcom/heepay/plugin/c/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcom/heepay/plugin/c/f$1;

    invoke-direct {v0, p0}, Lcom/heepay/plugin/c/f$1;-><init>(Lcom/heepay/plugin/c/f;)V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
