.class public Lcom/ss/android/downloadlib/addownload/b/i;
.super Ljava/lang/Object;
.source "SharedPrefsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/b/i$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/addownload/b/i$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/b/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/b/i;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/b/i;->c()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/b/i;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i$a;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v0

    return-object v0
.end method

.method private c()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_ad_download_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/api/a/b;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/ss/android/downloadad/api/a/b;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/b/i$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/addownload/b/i$1;-><init>(Lcom/ss/android/downloadlib/addownload/b/i;Ljava/util/Collection;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 9
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/b/i$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/addownload/b/i$2;-><init>(Lcom/ss/android/downloadlib/addownload/b/i;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method b()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/downloadad/api/a/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/b/i;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 6
    new-instance v5, Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v5}, Lcom/ss/android/downloadad/api/a/b;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    if-eqz v2, :cond_1

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    return-object v0
.end method
