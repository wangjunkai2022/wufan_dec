.class public Lcom/mob/commons/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/d$a;,
        Lcom/mob/commons/d$c;,
        Lcom/mob/commons/d$b;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/commons/d;

.field private static volatile b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/j;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xc800000

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "008?fidfWdUdfhd3i_df]e"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/SQLiteHelper;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/d;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .line 7
    sget-object v0, Lcom/mob/commons/d;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "004d*de.li"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "004diDdlMd"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    sget-object v0, Lcom/mob/commons/d;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "004hGdfNdUdf"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "004di!dl\'d"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    invoke-static {}, Lcom/mob/commons/d$c;->a()Lcom/mob/commons/d$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    sget-object v1, Lcom/mob/commons/u;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/mob/commons/d;
    .locals 2

    const-class v0, Lcom/mob/commons/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/commons/d;->a:Lcom/mob/commons/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mob/commons/d;

    invoke-direct {v1}, Lcom/mob/commons/d;-><init>()V

    sput-object v1, Lcom/mob/commons/d;->a:Lcom/mob/commons/d;

    .line 3
    :cond_0
    sget-object v1, Lcom/mob/commons/d;->a:Lcom/mob/commons/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a([I)Ljava/lang/String;
    .locals 5

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 87
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 88
    invoke-static {}, Lcom/mob/commons/s;->e()Ljava/lang/String;

    move-result-object v2

    .line 89
    aget v3, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 90
    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 13
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "003;fgfced"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "002Adffg"

    .line 19
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v4, "002Ofhed"

    .line 21
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "m"

    .line 22
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "args"

    .line 23
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "002!de>h"

    .line 24
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v8, 0x0

    .line 26
    invoke-static {v8}, Lcom/mob/commons/e;->a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v9

    .line 27
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "004h0dcdeLh"

    .line 28
    invoke-static {v11}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "005d<ecdj,iHdk"

    .line 29
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/mob/commons/x;->a()Lcom/mob/commons/x;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mob/commons/x;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "004l2ecde$h"

    .line 30
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object v11

    invoke-interface {v11}, Lcom/mob/tools/a/a;->aX()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "010\'fg0h2djgfFiWdhfgdeecdk"

    .line 31
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v11, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "0068dfLee$dj-i8di"

    .line 32
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "009)dfMee6eh9i>dgdh;id"

    .line 33
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/mob/MobSDK;->getAppSecret()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "006h ec(lSdfdedk"

    .line 34
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/mob/MobSDK;->getDomain()Lcom/mob/commons/InternationalDomain;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mob/commons/InternationalDomain;->getDomain()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "0104fhecdhdg=iIhd?ddeXfg"

    .line 35
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/mob/MobSDK;->checkForceHttps()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "004iJdgDi5dl"

    .line 36
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v11, 0x5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-string v9, "004i[dgXiEdl"

    .line 37
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "0020dg+h"

    .line 38
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "006Ugkgkglglglgl"

    invoke-static {v11}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "0025dg9h"

    .line 39
    invoke-static {v11}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcom/mob/commons/v;->e()Ljava/lang/String;

    move-result-object v9

    const-string v11, "usridt"

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "002Ade[h"

    .line 41
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 43
    invoke-static {v7}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v10, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v6, "008hijPdedg(iNegYh"

    .line 45
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "004Zde@liUde"

    .line 46
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "004Tde0l5fgde"

    .line 47
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getIMSI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sno"

    invoke-virtual {v10, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ssno"

    invoke-virtual {v10, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getMIUIVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "miui"

    invoke-virtual {v10, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "005l)ec2hiNed"

    .line 51
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "007;fhdfdgDdMecdhdi"

    .line 52
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "0050fcdhdfdk)h"

    .line 53
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getBrand()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "005^dfDhJfgde%h"

    .line 54
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAdvertisingID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "006*dfXeeji dh"

    .line 55
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "011e9dfdgdjdfffBi]efdf,li"

    .line 56
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "005Efcfgfgde?h"

    .line 57
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "osint"

    invoke-virtual {v10, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "osname"

    invoke-virtual {v10, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-class v1, Lcom/mob/tools/MDP;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "mdpName"

    invoke-virtual {v10, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {v10}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v4}, Lcom/mob/tools/network/NetCommunicator;->checkHttpRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v2, :cond_7

    .line 63
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 65
    :cond_4
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/mob/commons/d$a;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v1}, Lcom/mob/commons/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 66
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 68
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 69
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    new-instance v9, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v9}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {v9, v4, v7, v8}, Lcom/mob/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v4, v6, [Ljava/io/Closeable;

    aput-object v7, v4, v3

    .line 71
    invoke-static {v4}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 72
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_0

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/mob/commons/d$a;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v1}, Lcom/mob/commons/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    move-object v8, v7

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_3
    new-array v0, v6, [Ljava/io/Closeable;

    aput-object v8, v0, v3

    .line 74
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 75
    throw p0

    .line 76
    :cond_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 78
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_8
    new-array v2, v6, [[B

    new-array v5, v6, [I

    .line 79
    :try_start_2
    new-instance v7, Lcom/mob/commons/d$1;

    invoke-direct {v7, v2, v5}, Lcom/mob/commons/d$1;-><init>([[B[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 80
    :try_start_3
    new-instance v2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {v2, v4, v7, v8}, Lcom/mob/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-array v2, v6, [Ljava/io/Closeable;

    aput-object v7, v2, v3

    .line 81
    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 82
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 83
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/mob/commons/d$a;

    invoke-direct {v4, v2, v1}, Lcom/mob/commons/d$a;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    move-object v8, v7

    goto :goto_4

    :catchall_3
    move-exception p0

    :goto_4
    new-array v0, v6, [Ljava/io/Closeable;

    aput-object v8, v0, v3

    .line 84
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 85
    throw p0

    :cond_9
    :goto_5
    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x4

    .line 7
    :try_start_0
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/mob/commons/f;->a(I)V

    .line 8
    invoke-static {p0}, Lcom/mob/commons/d;->b([Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v1, 0x0

    .line 10
    :try_start_2
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p0}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11
    :try_start_3
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 12
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_2
    move-exception p0

    .line 13
    :try_start_4
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    .line 14
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;)V

    .line 15
    :goto_1
    throw p0
.end method

.method static synthetic b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/d;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    return-object v0
.end method

.method private static varargs b([Ljava/lang/Object;)Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 3
    aget-object v3, p0, v2

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x4

    .line 4
    aget-object v5, p0, v4

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x5

    .line 5
    aget-object v6, p0, v6

    check-cast v6, Ljava/lang/String;

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 7
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "003:fgdgdg"

    invoke-static {v10}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v9, 0x2

    .line 8
    aget-object v10, p0, v9

    check-cast v10, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    const/4 v11, 0x3

    .line 9
    :try_start_1
    aget-object p0, p0, v11

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    if-eqz v10, :cond_0

    if-lez p0, :cond_0

    .line 10
    :try_start_2
    array-length v11, v10

    if-lt v11, p0, :cond_0

    invoke-static {v10, v0, p0}, Lcom/mob/tools/utils/Data;->MD5([BII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 11
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v10, v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_1

    .line 12
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v10, "0080dgecdkfhelfgdgdg"

    invoke-static {v10}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {p0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 14
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v10

    const/16 v11, 0x14

    invoke-virtual {v10, v11}, Lcom/mob/commons/f;->a(I)V

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object v11, v8

    :goto_1
    if-eqz v11, :cond_4

    .line 17
    :try_start_3
    new-instance p0, Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 20
    :cond_2
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "0047elgcdeWe"

    invoke-static {v12}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, p0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 21
    :try_start_4
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 22
    :try_start_5
    invoke-static {v3, v11, v10}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    new-array v3, v9, [Ljava/io/Closeable;

    aput-object v11, v3, v0

    aput-object v10, v3, v2

    .line 23
    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 24
    :try_start_7
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/commons/g;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 25
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v1

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Lcom/mob/commons/f;->a(I)V

    goto :goto_2

    .line 26
    :cond_3
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v3

    const/16 v9, 0xe

    invoke-virtual {v3, v9}, Lcom/mob/commons/f;->a(I)V

    .line 27
    invoke-static {v1, v7, v5, v6}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 28
    :goto_2
    :try_start_8
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v1

    .line 29
    :try_start_9
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v3

    :goto_3
    invoke-virtual {v3, v4, v1}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_6

    :catchall_2
    move-exception v1

    .line 30
    :try_start_a
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v1}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 31
    :try_start_b
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v1

    .line 32
    :try_start_c
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_3

    :catchall_4
    move-exception v1

    .line 33
    :try_start_d
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p0

    .line 34
    :try_start_e
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v3

    invoke-virtual {v3, v4, p0}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;)V

    .line 35
    :goto_4
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :catchall_6
    move-exception p0

    goto :goto_5

    :catchall_7
    move-exception p0

    move-object v10, v8

    :goto_5
    :try_start_f
    new-array v1, v9, [Ljava/io/Closeable;

    aput-object v11, v1, v0

    aput-object v10, v1, v2

    .line 36
    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 37
    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :catchall_8
    move-exception p0

    move-object v8, v11

    goto :goto_7

    :cond_4
    move-object p0, v8

    move-object v8, v11

    :goto_6
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v8, v1, v0

    .line 38
    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    move-object v8, p0

    goto :goto_8

    :catchall_9
    move-exception p0

    :goto_7
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v8, v1, v0

    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 39
    throw p0

    :cond_5
    :goto_8
    return-object v8
.end method


# virtual methods
.method public a(JLjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/mob/commons/b;->a()Z

    move-result v0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DH PD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "004dZdiOei"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/mob/commons/u;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1, p2, p3}, Lcom/mob/commons/d$b;->a(JLjava/util/HashMap;)Lcom/mob/commons/d$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
