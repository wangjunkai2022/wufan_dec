.class public abstract Lcom/mob/commons/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/a/c$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:J

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/a/c;->g:Ljava/util/WeakHashMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/mob/commons/a/c;->b:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lcom/mob/commons/a/c;->h:I

    .line 5
    iput-boolean v0, p0, Lcom/mob/commons/a/c;->i:Z

    .line 6
    iput-object p1, p0, Lcom/mob/commons/a/c;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/mob/commons/a/c;->d:Ljava/lang/String;

    .line 8
    iput-wide p2, p0, Lcom/mob/commons/a/c;->e:J

    .line 9
    iput-wide p5, p0, Lcom/mob/commons/a/c;->f:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/mob/commons/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mob/commons/a/c;",
            ">;)",
            "Lcom/mob/commons/a/c;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/mob/commons/a/c$a;->a(Ljava/lang/Class;)Lcom/mob/commons/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mob/commons/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "014Gff[id,ggeddffgfgekecdfUhiNdh"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "028h%dfedWjOdedjelfgdifgMdilYelfi_i dlggeddffgfgekecdf6hiSdh"

    .line 46
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "028h%dfedWjOdedjelfgdifgMdilYelfi_i dlggeddffgfgekecdf6hiSdh"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 48
    sget-object v3, Lcom/mob/commons/a/c;->g:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 49
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_0

    const-string v4, "028h,dfed+jGdedjelfgdifgOdil-elfi+i8dlggeddffgfgekecdfGhi3dh"

    .line 50
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v2

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    const/4 p1, 0x3

    aput-object v0, v7, p1

    .line 52
    invoke-static {v4, v7}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 53
    invoke-virtual {v3, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    const/4 p0, 0x0

    .line 56
    invoke-static {p0}, Lcom/mob/commons/e;->a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0097edecdf%hJggeddffgfg"

    .line 57
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-static {v4, p1, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "009GffWidFgi3idcZecAh"

    .line 58
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p3, v0, v2

    const-class p3, Ljava/lang/String;

    aput-object p3, v0, v6

    invoke-static {p1, p2, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 59
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "004hYdcde@h"

    .line 60
    invoke-static {p3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "004lAecde(h"

    .line 61
    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mob/tools/a/c;->b()Lcom/mob/tools/a/a;

    move-result-object p3

    invoke-interface {p3}, Lcom/mob/tools/a/a;->aX()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "010<fgFhVdjgf8iYdhfgdeecdk"

    .line 62
    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p3, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "006DdfSeeQhjIi!di"

    .line 63
    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "009(df4eeMehSi[dgdh$id"

    .line 64
    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/mob/MobSDK;->getAppSecret()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "006hTec$lYdfdedk"

    .line 65
    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/mob/MobSDK;->getDomain()Lcom/mob/commons/InternationalDomain;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mob/commons/InternationalDomain;->getDomain()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "010Zfhecdhdg*i.hdEdde\'fg"

    .line 66
    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/mob/MobSDK;->checkForceHttps()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "004i*dgAi_dl"

    .line 67
    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p0, "004iQdg$iTdl"

    .line 68
    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "002EdgKh"

    .line 69
    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "006Qgkgkglglglgl"

    invoke-static {p3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p3, "0022dg7h"

    .line 70
    invoke-static {p3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "usridt"

    .line 71
    invoke-static {}, Lcom/mob/commons/v;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "mdp"

    .line 72
    const-class p3, Lcom/mob/tools/MDP;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "0132fgXidUejdgdg0iOfgfgdefced%i"

    .line 74
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v6, [Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, p3, v2

    invoke-static {p1, p2, p3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object p2

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Lcom/mob/commons/f;->a(I)V

    .line 76
    new-instance p2, Lcom/mob/commons/a/c$1;

    invoke-direct {p2, p1, p0}, Lcom/mob/commons/a/c$1;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 77
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 7
    invoke-static {p1, p2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/location/Location;Z)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "accmt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "vacmt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "ltdmt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "lndmt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "005AedKdWdePli"

    .line 33
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prvmt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "atdmt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "brmt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "spmt"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_2

    .line 38
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getSSID()Ljava/lang/String;

    move-result-object p2

    .line 40
    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cbsmt"

    .line 42
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "cssmt"

    .line 44
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract a()V
.end method

.method protected a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/mob/commons/a/c;->h:I

    return-void
.end method

.method protected a(J)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/commons/a/c;->a(JLjava/lang/Object;)V

    return-void
.end method

.method protected a(JLjava/lang/Object;)V
    .locals 6

    .line 6
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget v1, p0, Lcom/mob/commons/a/c;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object p3, v4, v2

    iget v5, p0, Lcom/mob/commons/a/c;->h:I

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V

    return-void
.end method

.method protected a(JLjava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/mob/commons/a/c;->a(JLjava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected a(JLjava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    add-long/2addr p1, v0

    goto :goto_0

    :cond_0
    move-wide p1, v0

    .line 11
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "004d)diDei"

    .line 12
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "004-eddefgYd"

    .line 13
    invoke-static {p3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "008h8df[didXdeEli"

    .line 14
    invoke-static {p3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_1

    .line 15
    invoke-virtual {p5}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 16
    invoke-virtual {v2, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    if-eqz p6, :cond_2

    const-string p3, "0028dged"

    .line 17
    invoke-static {p3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/mob/commons/a/c;->l()Ljava/util/HashMap;

    move-result-object p4

    invoke-virtual {v2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_2
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v2}, Lcom/mob/commons/d;->a(JLjava/util/HashMap;)V

    return-void
.end method

.method protected a(JLjava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/mob/commons/a/c;->a(JLjava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;Z)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "004dRdi_ei"

    .line 22
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "004hCdf7d$df"

    .line 23
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "008h_df(didOde)li"

    .line 24
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    const-string p1, "002=dged"

    .line 25
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mob/commons/a/c;->l()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_1
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mob/commons/d;->a(JLjava/util/HashMap;)V

    return-void
.end method

.method protected b()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0x93a80

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/c;->a(J)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mob/commons/a/c;->i:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mob/commons/a/c;->c:Ljava/lang/String;

    iget-wide v1, p0, Lcom/mob/commons/a/c;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/mob/commons/a/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected f()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/mob/commons/a/c;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->h()Z

    move-result v0

    return v0
.end method

.method protected h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/mob/commons/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected i()Z
    .locals 9

    .line 1
    invoke-static {}, Lcom/mob/commons/b;->a()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/mob/commons/b;->b()Z

    move-result v1

    const-string v2, ", conn: "

    const-string v3, ", to: "

    const-string v4, "run clt: "

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->e()Z

    move-result v6

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mob/commons/a/c;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", key: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mob/commons/a/c;->c:Ljava/lang/String;

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", gp: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/commons/a/c;->k()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v7, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v6

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/commons/a/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v5
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()J
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/a/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/mob/commons/a/c;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected l()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "002Teced"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, v2}, Lcom/mob/commons/a/c;->a(Landroid/location/Location;Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final m()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mob/commons/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bs,l,ol,wi,wl,ext,aa,"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/g;->b()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/mob/commons/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0xea60

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/c;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 6
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->a()V

    .line 7
    iget-boolean v0, p0, Lcom/mob/commons/a/c;->i:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p0}, Lcom/mob/commons/a/c$a;->a(Lcom/mob/commons/a/c;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/mob/commons/a/c$a;->b(Lcom/mob/commons/a/c;)V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 12
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 13
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 14
    :try_start_5
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->j()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    return-void

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->j()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    .line 15
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 16
    :goto_3
    throw v0
.end method
