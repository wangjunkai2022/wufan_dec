.class public Lcom/mob/commons/a/g;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "004=gfhhfh>g"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "l"

    const-wide/16 v3, 0x0

    const-wide/32 v6, 0x15180

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/mob/commons/a/g;->a(Ljava/util/ArrayList;I)V

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/mob/commons/a/g;->a(Ljava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .line 11
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/16 v3, 0x1e

    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v3, 0xf

    .line 13
    invoke-virtual {v0, v1, v3, v2}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/c;->a(Landroid/location/Location;Z)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "lctpmt"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "wilmt"

    .line 18
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "LCMT"

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    .line 2
    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    .line 3
    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/mob/commons/r;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 5
    :cond_0
    invoke-direct {p0, v1}, Lcom/mob/commons/a/g;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
