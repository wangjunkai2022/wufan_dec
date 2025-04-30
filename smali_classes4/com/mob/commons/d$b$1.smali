.class Lcom/mob/commons/d$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/d$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/d$b;


# direct methods
.method constructor <init>(Lcom/mob/commons/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 7

    .line 1
    :try_start_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "004dFde<li"

    .line 2
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->a(Lcom/mob/commons/d$b;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "0062dfYeeCdjHiHdi"

    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "006RdfYeee%djff"

    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "006%dfUeeji>dh"

    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "010Vfg3d>dhdfWdiJffdieg=h"

    .line 8
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v1

    const-string v6, "0104fgWd3dhdfWdiYffdieg*h"

    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v1

    .line 11
    iget-object v4, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v4}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 12
    invoke-static {v1, v4}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object v1

    const-string v4, "004h*df8dYdf"

    .line 13
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/mob/commons/d;->b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mob/tools/utils/SQLiteHelper;->insert(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;)J

    const-string p1, "004hiOdc+e"

    .line 15
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 16
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "004TdkecdkJi"

    .line 17
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-wide/16 v4, 0x78

    .line 18
    :cond_2
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    invoke-static {}, Lcom/mob/commons/d$c;->a()Lcom/mob/commons/d$c;

    move-result-object p1

    if-eqz p1, :cond_4

    cmp-long v0, v4, v2

    if-gtz v0, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/mob/commons/d$c;->run()V

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v0

    invoke-virtual {v0, v4, v5, p1}, Lcom/mob/commons/a/o;->a(JLjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    invoke-static {p1}, Lcom/mob/commons/d$c;->a(Lcom/mob/commons/d$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 23
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
