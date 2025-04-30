.class public final Lcom/alipay/apmobilesecuritysdk/face/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/alipay/apmobilesecuritysdk/face/e;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/alipay/apmobilesecuritysdk/a/a;

    invoke-direct {v1, p0}, Lcom/alipay/apmobilesecuritysdk/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/alipay/apmobilesecuritysdk/a/a;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
