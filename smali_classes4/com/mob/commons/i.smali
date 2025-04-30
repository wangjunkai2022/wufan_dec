.class public Lcom/mob/commons/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/commons/i;


# instance fields
.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mob/commons/h;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private volatile e:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/i;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mob/commons/i;->d:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lcom/mob/commons/i;->e:J

    const-string v1, "M-"

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "004(hmhljkin"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    new-instance v1, Lcom/mob/commons/i$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/i$1;-><init>(Lcom/mob/commons/i;)V

    invoke-static {v0, v1}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/i;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/i;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/commons/i;->e:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lcom/mob/commons/i;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/mob/commons/i;->a:Lcom/mob/commons/i;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/mob/commons/i;

    invoke-direct {v1}, Lcom/mob/commons/i;-><init>()V

    sput-object v1, Lcom/mob/commons/i;->a:Lcom/mob/commons/i;

    .line 8
    iget-object v1, v1, Lcom/mob/commons/i;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 9
    sget-object v1, Lcom/mob/commons/i;->a:Lcom/mob/commons/i;

    iget-object v1, v1, Lcom/mob/commons/i;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    :cond_0
    sget-object v1, Lcom/mob/commons/i;->a:Lcom/mob/commons/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/mob/commons/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mob/commons/i;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x65

    .line 26
    invoke-static {p0, v0}, Lcom/mob/commons/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 21
    invoke-direct {p0, p3, p3, p1, p2}, Lcom/mob/commons/i;->a(ZZJ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mob/commons/i;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/mob/commons/i;->c()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/i;JZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/commons/i;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/i;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/mob/commons/i;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 20
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mob/commons/i;->a(ZZJ)V

    :cond_0
    return-void
.end method

.method private a(ZZJ)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/mob/commons/i;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/i;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/commons/h;

    .line 24
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mob/commons/h;->a(ZZJ)V

    goto :goto_0

    .line 25
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static synthetic b(Lcom/mob/commons/i;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/commons/i;->b:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic c(Lcom/mob/commons/i;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/commons/i;->e:J

    return-wide v0
.end method

.method private c()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/FBManager$2;

    invoke-direct {v1, p0}, Lcom/mob/commons/FBManager$2;-><init>(Lcom/mob/commons/i;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    return-void
.end method

.method static synthetic d(Lcom/mob/commons/i;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/commons/i;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/mob/commons/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/commons/i;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mob/commons/h;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/i;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/i;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/mob/commons/i;->c:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 15
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    .line 16
    iput v2, v1, Landroid/os/Message;->what:I

    .line 17
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lcom/mob/commons/i;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 5

    .line 2
    iget-wide v0, p0, Lcom/mob/commons/i;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
