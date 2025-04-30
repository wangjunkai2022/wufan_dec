.class public Lcom/ss/android/socialbase/downloader/a/a;
.super Ljava/lang/Object;
.source "AppStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/a/a$a;,
        Lcom/ss/android/socialbase/downloader/a/a$c;,
        Lcom/ss/android/socialbase/downloader/a/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcom/ss/android/socialbase/downloader/a/a$c;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:I

.field private volatile g:Z

.field private final h:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->f:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->g:Z

    .line 6
    new-instance v0, Lcom/ss/android/socialbase/downloader/a/a$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a$1;-><init>(Lcom/ss/android/socialbase/downloader/a/a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/a/a$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    return p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/a/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    return p1
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/a/a;
    .locals 1

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a$b;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/a/a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a;->e:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/a/a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/a/a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->e()V

    return-void
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->f()V

    return-void
.end method

.method private d()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->f:I

    .line 2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->d()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    check-cast v3, Lcom/ss/android/socialbase/downloader/a/a$a;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/a/a$a;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->f:I

    .line 2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->d()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 4
    check-cast v3, Lcom/ss/android/socialbase/downloader/a/a$a;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/a/a$a;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "activity"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 7
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 8
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0

    :catchall_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    if-nez v0, :cond_1

    .line 7
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 10
    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 12
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/a/a$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/a/a$c;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Lcom/ss/android/socialbase/downloader/a/a$c;

    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/a/a$a;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
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
    .locals 2

    .line 2
    iget v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->g()Z

    move-result v0

    .line 4
    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->f:I

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
