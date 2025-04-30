.class public Lcom/mob/tools/utils/ActivityTracker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/ActivityTracker$EachTracker;,
        Lcom/mob/tools/utils/ActivityTracker$Tracker;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/tools/utils/ActivityTracker;


# instance fields
.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mob/tools/utils/ActivityTracker$Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/ActivityTracker;->b:Ljava/util/HashSet;

    .line 3
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$3;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/ActivityTracker$3;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->a(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker$2;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->a(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/ActivityTracker$1;-><init>(Lcom/mob/tools/utils/ActivityTracker;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private a(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V
    .locals 4

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker;->b:Ljava/util/HashSet;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/mob/tools/utils/ActivityTracker$Tracker;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .line 7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {p1, v3}, Lcom/mob/tools/utils/ActivityTracker$EachTracker;->each(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$4;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/ActivityTracker$4;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->a(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker$8;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->a(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method static synthetic b(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$5;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/ActivityTracker$5;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->a(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method static synthetic c(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$6;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/ActivityTracker$6;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->a(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method static synthetic d(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->d(Landroid/app/Activity;)V

    return-void
.end method

.method private e(Landroid/app/Activity;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$7;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/ActivityTracker$7;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->a(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method static synthetic e(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;
    .locals 2

    const-class v0, Lcom/mob/tools/utils/ActivityTracker;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/ActivityTracker;->a:Lcom/mob/tools/utils/ActivityTracker;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mob/tools/utils/ActivityTracker;

    invoke-direct {v1, p0}, Lcom/mob/tools/utils/ActivityTracker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/utils/ActivityTracker;->a:Lcom/mob/tools/utils/ActivityTracker;

    .line 3
    :cond_0
    sget-object p0, Lcom/mob/tools/utils/ActivityTracker;->a:Lcom/mob/tools/utils/ActivityTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
