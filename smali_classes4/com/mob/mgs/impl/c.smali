.class public Lcom/mob/mgs/impl/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/apc/b$a;
.implements Lcom/mob/apc/b$b;
.implements Lcom/mob/apc/b$c;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Lcom/mob/mgs/impl/c;

.field private static e:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.mob.intent.MOB_GUARD_SERVICE"

    const-string v1, "com.mob.intent.MOB_ID_SERVICE"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/mgs/impl/c;->a:[Ljava/lang/String;

    const-string v0, "com.mob.guard.MobGuardPullUpService"

    const-string v1, "com.mob.id.MobIDService"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/mgs/impl/c;->b:[Ljava/lang/String;

    const-string v0, "com.mob.guard.MobTranPullUpActivity"

    const-string v1, "com.mob.id.MobIDActivity"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/mgs/impl/c;->c:[Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/mob/mgs/impl/c;

    invoke-direct {v0}, Lcom/mob/mgs/impl/c;-><init>()V

    sput-object v0, Lcom/mob/mgs/impl/c;->d:Lcom/mob/mgs/impl/c;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/mgs/impl/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mgs/impl/c;->f:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/mob/mgs/impl/c;->h:Z

    .line 5
    iput v1, p0, Lcom/mob/mgs/impl/c;->i:I

    .line 6
    iput v1, p0, Lcom/mob/mgs/impl/c;->j:I

    .line 7
    iput-object v0, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    .line 8
    iput-object v0, p0, Lcom/mob/mgs/impl/c;->l:Ljava/util/HashMap;

    .line 9
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mgs/impl/c;->o:Landroid/content/Context;

    .line 10
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object v0

    new-instance v1, Lcom/mob/mgs/impl/c$1;

    invoke-direct {v1, p0}, Lcom/mob/mgs/impl/c$1;-><init>(Lcom/mob/mgs/impl/c;)V

    invoke-static {v1}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/a$a;)Lcom/mob/tools/utils/ActivityTracker$Tracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    return-void
.end method

.method public static a()Lcom/mob/mgs/impl/c;
    .locals 1

    .line 3
    sget-object v0, Lcom/mob/mgs/impl/c;->d:Lcom/mob/mgs/impl/c;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "executeResult"

    .line 87
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GD]busType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", workId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", duid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/mob/mgs/impl/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 90
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GD]target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isLv: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/mob/mgs/impl/c;->l:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/mob/mgs/impl/c;->f()Ljava/util/List;

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/mob/mgs/impl/c;->l:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 94
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    sget-object v4, Lcom/mob/mgs/impl/c;->c:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-direct {v3, p2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x18800000

    .line 96
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "workId"

    .line 98
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "duid"

    .line 99
    invoke-virtual {v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "appkey"

    .line 100
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "pkg"

    .line 101
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "guardId"

    .line 102
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "busType"

    .line 103
    invoke-virtual {v2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-string p1, "startActivityTime"

    .line 105
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "startActivityDuration"

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p3, 0x140

    .line 108
    invoke-static {p3, p4}, Ljava/lang/Thread;->sleep(J)V

    .line 109
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/mob/mgs/impl/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 110
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GD] stAct rst. pkg: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lv: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "success"

    .line 111
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "uncertain"

    .line 112
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 113
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    .line 114
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GD] stAct rst.  pkg: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", exception: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    const-string p1, "fail"

    .line 115
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object v1
.end method

.method static synthetic a(Lcom/mob/mgs/impl/c;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mob/mgs/impl/c;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 8

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/mob/mgs/impl/c;->n:Z

    .line 43
    iget-object v0, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "pkg"

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    :try_start_0
    new-instance v5, Lcom/mob/apc/a;

    invoke-direct {v5}, Lcom/mob/apc/a;-><init>()V

    const/16 v2, 0x3eb

    .line 46
    iput v2, v5, Lcom/mob/apc/a;->a:I

    .line 47
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "guardId"

    .line 48
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timestamp"

    .line 49
    invoke-virtual {v2, v3, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "workId"

    .line 50
    iget-object v4, p0, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object v2, v5, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    const/4 v2, 0x1

    const-string v4, "MOBGUARD"

    const-wide/16 v6, 0x1388

    move-object v3, v1

    .line 52
    invoke-static/range {v2 .. v7}, Lcom/mob/apc/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v2

    .line 53
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Guard] syncId updateClientIDs sendAPCMessage :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", response: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 54
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/mob/mgs/impl/c;->n:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string v2, "times"

    const-string v3, "pkg"

    const-string v4, ", upAppCount: "

    .line 5
    :try_start_0
    invoke-static {}, Lcom/mob/commons/authorize/DeviceAuthorizer;->isClear()Z

    move-result v5

    .line 6
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[EC] isClear upl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x0

    .line 7
    iput-boolean v5, v1, Lcom/mob/mgs/impl/c;->m:Z

    .line 8
    iget v6, v1, Lcom/mob/mgs/impl/c;->i:I

    if-eqz v0, :cond_1

    .line 9
    iget-object v6, v1, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 10
    :cond_1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Guard] upLiveApp upAll: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", canUpPkgList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez v6, :cond_2

    return-void

    .line 11
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v8, v1, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 13
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 14
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v10, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-virtual {v13, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "executeResult"

    if-gtz v12, :cond_4

    :try_start_1
    const-string v9, "ooo"

    .line 17
    invoke-virtual {v13, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-gtz v6, :cond_5

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v6, v6, -0x1

    .line 19
    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 20
    invoke-static {}, Lcom/mob/mgs/impl/a;->a()Lcom/mob/mgs/impl/a;

    move-result-object v5

    invoke-virtual {v5, v10, v15}, Lcom/mob/mgs/impl/a;->a(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)I

    move-result v5

    .line 21
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v11

    move-object/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    const-string v8, "sendAliveCheckMessage appStatus: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", upAll: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-nez v5, :cond_6

    if-nez v0, :cond_6

    move-object/from16 v8, p2

    .line 22
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 23
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/mob/mgs/impl/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    move v3, v5

    move-object v5, v4

    goto :goto_1

    :cond_6
    move-object/from16 v8, p2

    :cond_7
    if-ne v5, v3, :cond_8

    move-object v5, v4

    const-wide/16 v3, 0x7d0

    .line 24
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v3, v4, v11}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    .line 25
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_8
    move-object v5, v4

    :cond_9
    const/4 v3, 0x0

    .line 26
    :goto_1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Guard] upLiveApp pkgName: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", isLive: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", times: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez v3, :cond_c

    const/16 v3, 0x7d0

    .line 27
    iget-object v4, v1, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mob/mgs/impl/f;->f()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v3, v10, v4, v11}, Lcom/mob/mgs/impl/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 29
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    goto :goto_2

    :cond_a
    const/4 v11, 0x0

    :goto_2
    const-string v4, "uncertain"

    .line 30
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    .line 31
    iput-boolean v4, v1, Lcom/mob/mgs/impl/c;->m:Z

    .line 32
    :cond_b
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    add-int/lit8 v12, v12, -0x1

    .line 33
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    const-string v3, "alive"

    .line 34
    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-string v3, "remainCount"

    .line 35
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v5

    move-object/from16 v3, v16

    move-object/from16 v8, v17

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 37
    :cond_d
    :goto_4
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Guard] upLiveApp result pkgList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 38
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 39
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    invoke-static {v7, v0, v2}, Lcom/mob/mgs/impl/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 40
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Guard] upLiveApp exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    :cond_e
    :goto_5
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(ZLjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 85
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p1, p0, 0x1

    if-nez p1, :cond_0

    and-int/lit16 p1, p0, 0x80

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/high16 v2, 0x200000

    and-int/2addr p0, v2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0

    :catchall_0
    move-exception p0

    .line 86
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    return v0
.end method

.method static synthetic a(Lcom/mob/mgs/impl/c;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/mob/mgs/impl/c;->m:Z

    return p0
.end method

.method static synthetic b(Lcom/mob/mgs/impl/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mob/mgs/impl/c;->n:Z

    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_lock_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ";"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/mob/mgs/impl/c;->o:Landroid/content/Context;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 4
    :cond_0
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 5
    invoke-static {}, Lcom/mob/mgs/impl/a;->a()Lcom/mob/mgs/impl/a;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/mob/mgs/impl/a;->a(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)I

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/mob/mgs/impl/c;->o:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mob/mgs/impl/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_1
    if-ne v1, v3, :cond_2

    const-wide/16 v3, 0x7d0

    .line 7
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    .line 10
    :cond_2
    :goto_1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAppLive appStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLive: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    return v0
.end method

.method private e()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/mob/mgs/impl/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/MobSDK;->init(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/apc/b;->a(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/f;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {v0}, Lcom/mob/elp/MobELP;->init(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catchall_0
    :try_start_2
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    const-string v2, "No [MobELP] module."

    invoke-virtual {v1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    :goto_0
    const-string v1, "MOBGUARD"

    .line 7
    invoke-static {v1, p0}, Lcom/mob/apc/b;->a(Ljava/lang/String;Lcom/mob/apc/b$b;)V

    .line 8
    invoke-static {p0}, Lcom/mob/apc/b;->a(Lcom/mob/apc/b$c;)V

    .line 9
    invoke-static {p0}, Lcom/mob/apc/b;->a(Lcom/mob/apc/b$a;)V

    .line 10
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mob/mcl/MobMCL;->initMCLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Guard] init guardId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/mcl/MobMCL;->getCreateSuidTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 13
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private f()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_0
    sget-object v6, Lcom/mob/mgs/impl/c;->a:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v5, v7, :cond_1

    const-string v7, "android.content.Intent"

    .line 6
    invoke-static {v7}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "Intent"

    new-array v8, v8, [Ljava/lang/Object;

    .line 7
    aget-object v6, v6, v5

    aput-object v6, v8, v4

    invoke-static {v7, v8}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 8
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/mob/tools/utils/DeviceHelper;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 10
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/mob/mgs/impl/c;->l:Ljava/util/HashMap;

    .line 12
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 13
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v7, v6, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v7, :cond_2

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x80

    .line 15
    invoke-virtual {v6, v8, v7, v9}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(ZLjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 16
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 17
    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "mob_id_ver"

    .line 18
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v7, "mob_guard_version"

    .line 19
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    :goto_2
    if-eqz v7, :cond_2

    .line 20
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 21
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/mob/mgs/impl/c;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 24
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "appPackage"

    .line 25
    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "targetVer"

    .line 26
    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v7, p0, Lcom/mob/mgs/impl/c;->l:Ljava/util/HashMap;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    .line 29
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    :cond_5
    return-object v0
.end method

.method private g()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/mgs/impl/c;->f()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mob/mgs/MobMGS;->getDS()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/mob/mgs/impl/d;->a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 3
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Guard] getGuardListV5 response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "workId"

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    const-string v2, "syncIdState"

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mob/mgs/impl/c;->h:Z

    const-string v2, "asMaster"

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/mob/mgs/impl/c;->j:I

    const-string v2, "pollTotal"

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/mob/mgs/impl/c;->i:I

    const-string v2, "pkgList"

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 10
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method private h()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Guard] syncId upPkgList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getCreateSuidTime()J

    move-result-wide v1

    .line 5
    iget-object v3, p0, Lcom/mob/mgs/impl/c;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "pkg"

    .line 6
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    new-instance v10, Lcom/mob/apc/a;

    invoke-direct {v10}, Lcom/mob/apc/a;-><init>()V

    const/16 v7, 0x3e9

    .line 8
    iput v7, v10, Lcom/mob/apc/a;->a:I

    const/4 v7, 0x1

    :try_start_0
    const-string v9, "MOBGUARD"

    const-wide/16 v11, 0x1388

    move-object v8, v5

    .line 9
    invoke-static/range {v7 .. v12}, Lcom/mob/apc/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    .line 10
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    .line 11
    :goto_1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Guard] syncId getClientIDs sendAPCMessage pkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", response:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    .line 12
    iget-object v5, v6, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    const-string v6, "guardId"

    .line 13
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "timestamp"

    .line 14
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 15
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_1

    cmp-long v5, v7, v1

    if-gez v5, :cond_1

    move-object v4, v6

    move-wide v1, v7

    goto :goto_0

    .line 16
    :cond_2
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Guard] syncId update guardId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", oldId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 18
    invoke-static {v4, v1, v2}, Lcom/mob/mcl/MobMCL;->syncSuid(Ljava/lang/String;J)Z

    .line 19
    :cond_3
    invoke-direct {p0, v4, v1, v2}, Lcom/mob/mgs/impl/c;->a(Ljava/lang/String;J)V

    if-eqz v3, :cond_4

    .line 20
    :try_start_1
    iget-object v1, p0, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Lcom/mob/mgs/impl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 21
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;
    .locals 8

    .line 56
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Guard] onAPCMessageReceive APCMessage:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pkg:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 57
    new-instance p1, Lcom/mob/apc/a;

    invoke-direct {p1}, Lcom/mob/apc/a;-><init>()V

    .line 58
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getCreateSuidTime()J

    move-result-wide p3

    .line 60
    iget v0, p2, Lcom/mob/apc/a;->a:I

    const/16 v1, 0x3e9

    const-string v2, "timestamp"

    const-string v3, "guardId"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object p2, p2, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    if-eqz p2, :cond_2

    .line 62
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "workId"

    .line 64
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v3, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-lez v2, :cond_2

    .line 65
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    cmp-long v0, v6, p3

    if-gez v0, :cond_2

    .line 66
    new-instance p3, Lcom/mob/mgs/impl/c$4;

    move-object v0, p3

    move-object v1, p0

    move-object v2, v3

    move-wide v3, v6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mob/mgs/impl/c$4;-><init>(Lcom/mob/mgs/impl/c;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 68
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 69
    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 71
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "pkg"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p2, p1, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    :cond_2
    :goto_0
    return-object p1
.end method

.method public a(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x7d1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 p1, 0x7d2

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 80
    :goto_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[requestInvokeGd]finalBusType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-eq p1, v0, :cond_2

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/mob/mgs/impl/c;->b(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 82
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "workId"

    .line 74
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appkey"

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "duid"

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "guardId"

    .line 77
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pkg"

    .line 78
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "acsActType"

    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "acServiceType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/mob/mgs/impl/c;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/mgs/impl/c$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mob/mgs/impl/c$2;-><init>(Lcom/mob/mgs/impl/c;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/mob/mgs/impl/c;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/mob/mgs/impl/c;->g:Ljava/lang/String;

    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mgs/impl/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mob/mgs/impl/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/mob/mgs/impl/c;->e()V

    .line 3
    invoke-static {}, Lcom/mob/mgs/impl/UpdateV5;->getDS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    const-string v1, "DS off"

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 8
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "disable_mob_a_guard"

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v1

    .line 12
    :goto_1
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Guard] run disable_mob_a_guard:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    const-string v2, "true"

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string v0, "cd"

    const-string v2, "221111"

    const-wide/16 v3, 0x0

    .line 14
    invoke-static {v0, v2, v3, v4}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/mob/commons/authorize/DeviceAuthorizer;->isClear()Z

    move-result v0

    .line 16
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EC] isClear init: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "all"

    invoke-static {v5, v2, v3, v4}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 19
    :goto_2
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "als on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-nez v0, :cond_6

    return-void

    .line 20
    :cond_6
    invoke-direct {p0}, Lcom/mob/mgs/impl/c;->g()Z

    move-result v0

    .line 21
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Guard] checkAndInitGuardParams:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    .line 22
    invoke-virtual {p0}, Lcom/mob/mgs/impl/c;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 24
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    const-string v3, "[Guard] registerServerSocket"

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/mob/mgs/impl/a;->a()Lcom/mob/mgs/impl/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/mgs/impl/a;->a(Ljava/util/concurrent/BlockingQueue;)V

    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 27
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Guard] registerServerSocket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    .line 28
    iget-boolean v0, p0, Lcom/mob/mgs/impl/c;->h:Z

    invoke-direct {p0, v0, v1}, Lcom/mob/mgs/impl/c;->a(ZLjava/lang/String;)V

    .line 29
    iget-boolean v0, p0, Lcom/mob/mgs/impl/c;->h:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x1f4

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 31
    invoke-direct {p0}, Lcom/mob/mgs/impl/c;->h()V

    :cond_7
    return-void

    .line 32
    :cond_8
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    const-string v1, "[Guard] registerClientSocket"

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/mob/mgs/impl/a;->a()Lcom/mob/mgs/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/a;->b()V

    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 34
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Guard] syncId newClientPkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " syncIdFailed : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/mob/mgs/impl/c;->n:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 35
    iget-boolean p1, p0, Lcom/mob/mgs/impl/c;->n:Z

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/mob/mgs/impl/c;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mob/mgs/impl/c$3;

    invoke-direct {v0, p0}, Lcom/mob/mgs/impl/c$3;-><init>(Lcom/mob/mgs/impl/c;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 6
    iget v0, p0, Lcom/mob/mgs/impl/c;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/mgs/impl/c;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/mob/mgs/impl/c;->h()V

    :cond_0
    return-void
.end method
