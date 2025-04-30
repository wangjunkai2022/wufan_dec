.class Lcom/mob/commons/m$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:[Lcom/mob/commons/m$c;


# instance fields
.field private b:Ljava/lang/Runnable;

.field private c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mob/commons/m$c;

    .line 1
    sput-object v0, Lcom/mob/commons/m$c;->a:[Lcom/mob/commons/m$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mob/commons/m$c$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/m$c$1;-><init>(Lcom/mob/commons/m$c;)V

    iput-object v0, p0, Lcom/mob/commons/m$c;->b:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lcom/mob/commons/m$c$2;

    invoke-direct {v0, p0}, Lcom/mob/commons/m$c$2;-><init>(Lcom/mob/commons/m$c;)V

    iput-object v0, p0, Lcom/mob/commons/m$c;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()Lcom/mob/commons/m$c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/commons/m$c;->b()Lcom/mob/commons/m$c;

    move-result-object v0

    return-object v0
.end method

.method private static b()Lcom/mob/commons/m$c;
    .locals 4

    .line 1
    sget-object v0, Lcom/mob/commons/m$c;->a:[Lcom/mob/commons/m$c;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 3
    :try_start_0
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 4
    aput-object v3, v0, v1

    .line 5
    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lcom/mob/commons/m$c;

    invoke-direct {v1}, Lcom/mob/commons/m$c;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private c()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/mob/commons/m$c;->a:[Lcom/mob/commons/m$c;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 3
    :try_start_1
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 4
    aput-object p0, v0, v1

    .line 5
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/mob/commons/m$c;->c()V

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0042fmgefm_k"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/mob/commons/m$c;->c()V

    return-void

    :cond_1
    :try_start_2
    const-string v0, "004Hfi[kIfjfj"

    .line 7
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 8
    invoke-static {}, Lcom/mob/commons/m;->a()Lcom/mob/commons/m;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/m$c;->b:Ljava/lang/Runnable;

    invoke-static {v0, v2}, Lcom/mob/commons/m;->a(Lcom/mob/commons/m;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string v0, "cerr_max"

    const-wide/32 v2, 0x6400000

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 10
    invoke-static {v1}, Lcom/mob/commons/m;->a(I)Lcom/mob/tools/a;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/a;->a(J)V

    :goto_0
    const-string v0, "004Nhi4k(fjfj"

    .line 11
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 12
    invoke-static {}, Lcom/mob/commons/m;->a()Lcom/mob/commons/m;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/m$c;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/mob/commons/m;->a(Lcom/mob/commons/m;Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    const-string v0, "serr_max"

    const-wide/32 v1, 0x1400000

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x2

    .line 14
    invoke-static {v2}, Lcom/mob/commons/m;->a(I)Lcom/mob/tools/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/a;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16
    :goto_1
    invoke-direct {p0}, Lcom/mob/commons/m$c;->c()V

    return-void

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/mob/commons/m$c;->c()V

    .line 17
    throw v0
.end method
