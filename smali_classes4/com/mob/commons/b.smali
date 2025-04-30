.class public Lcom/mob/commons/b;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mob/commons/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public static volatile b:Z

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/concurrent/CountDownLatch;

.field private static j:Ljava/util/concurrent/CountDownLatch;

.field private static volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/commons/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/commons/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/commons/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mob/commons/b;->a:Ljava/util/HashSet;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/b;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/mob/commons/b;->i:Ljava/util/concurrent/CountDownLatch;

    .line 9
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/mob/commons/b;->j:Ljava/util/concurrent/CountDownLatch;

    .line 10
    sput-boolean v1, Lcom/mob/commons/b;->b:Z

    .line 11
    sput-boolean v1, Lcom/mob/commons/b;->k:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/mob/commons/b;->b(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    const/4 v0, 0x2

    .line 8
    invoke-static {v0}, Lcom/mob/commons/b;->d(I)V

    .line 9
    :cond_1
    sget-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;J)TT;"
        }
    .end annotation

    .line 14
    :try_start_0
    sget-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    :cond_0
    sget-object v0, Lcom/mob/commons/b;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    cmp-long v0, p2, v1

    if-lez v0, :cond_1

    .line 16
    sget-object v0, Lcom/mob/commons/b;->i:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lcom/mob/commons/b;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 18
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/mob/commons/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    sget-object v0, Lcom/mob/commons/b;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    cmp-long v0, p2, v1

    if-lez v0, :cond_3

    .line 20
    sget-object v0, Lcom/mob/commons/b;->j:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_1

    .line 21
    :cond_3
    sget-object p2, Lcom/mob/commons/b;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 22
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 23
    :cond_4
    :goto_1
    invoke-static {p0, p1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/mob/commons/b;->b(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 12
    :cond_1
    invoke-static {p0}, Lcom/mob/commons/b;->a(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p2
.end method

.method static synthetic a(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b;->c(I)V

    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 2

    .line 37
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "004HcbbcdePb"

    .line 38
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "0056cjMj;becbbc"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "016-ejeihahgfcgcgfehffdcbddabeRf+dfbc"

    .line 40
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->saveObjectToFile(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 42
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static a(Ljava/util/HashMap;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 31
    sget-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 32
    :try_start_0
    sget-object p0, Lcom/mob/commons/b;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 33
    sget-object p0, Lcom/mob/commons/b;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 34
    :cond_1
    sget-object p0, Lcom/mob/commons/b;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/mob/commons/b;->b(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private static a(ZZZI)V
    .locals 7

    .line 35
    new-instance v6, Lcom/mob/commons/b$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PY-B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v6

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mob/commons/b$3;-><init>(Ljava/lang/String;ZZZI)V

    .line 36
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a()Z
    .locals 3

    const-string v0, "002b-ca"

    .line 25
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mob/commons/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mob/commons/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static a(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const-string v1, "002bPca"

    .line 24
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/mob/commons/b;->k:Z

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/mob/commons/b;->f:Ljava/util/HashMap;

    invoke-static {v0, p0, p1}, Lcom/mob/commons/b;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 8
    invoke-static {v0, p0, p1}, Lcom/mob/commons/b;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b;->e(I)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/mob/commons/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/util/concurrent/CountDownLatch;)V
    .locals 9

    .line 11
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/mob/commons/b;->b(Ljava/util/HashMap;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 13
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mob/commons/w;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 14
    :cond_0
    invoke-static {}, Lcom/mob/commons/b;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Ljava/util/HashMap;Z)V

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 17
    :cond_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "g ch: y"

    invoke-virtual {v0, v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 18
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    sget-object v3, Lcom/mob/commons/w;->u:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v3

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x1388

    cmp-long v0, v5, v3

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "g ch fre: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v3, 0x2

    if-nez v0, :cond_3

    .line 21
    invoke-static {v3}, Lcom/mob/commons/b;->d(I)V

    :cond_3
    if-eqz p0, :cond_4

    .line 22
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 23
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g dhs_w cdl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-wide/16 v6, 0xdac

    .line 24
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 25
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g dhs_w end, dur: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 26
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 27
    :cond_4
    :goto_1
    invoke-static {v2, v1, v0, v3}, Lcom/mob/commons/b;->a(ZZZI)V

    goto :goto_3

    .line 28
    :cond_5
    :goto_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "g ch: n"

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 29
    invoke-static {v2}, Lcom/mob/commons/b;->d(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method static synthetic b(Z)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/mob/commons/b;->c(Z)V

    return-void
.end method

.method public static b()Z
    .locals 3

    const-string v0, "004Jbecabibi"

    .line 9
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static b(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "010fgh=bcbeEg1cgbc5jg"

    .line 30
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-eqz p0, :cond_0

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long p0, v1, v3

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static c(I)V
    .locals 8

    .line 9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "b ob st"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 10
    invoke-static {}, Lcom/mob/commons/b;->a()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/mob/commons/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "003Ldfbibe"

    .line 11
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-eq p0, v2, :cond_1

    .line 13
    invoke-static {}, Lcom/mob/commons/s;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    :cond_1
    invoke-static {}, Lcom/mob/commons/b;->p()V

    goto :goto_0

    :cond_2
    if-eq p0, v2, :cond_3

    .line 15
    sget-object v4, Lcom/mob/commons/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    :cond_3
    new-instance v4, Lcom/mob/commons/b$1;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "003Adgggfg"

    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Lcom/mob/commons/b$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 18
    :cond_4
    :goto_0
    invoke-static {}, Lcom/mob/commons/b;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/mob/commons/b;->b()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "sbr"

    .line 19
    invoke-static {v0, v3}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 21
    invoke-static {}, Lcom/mob/commons/b;->q()V

    goto :goto_1

    :cond_6
    if-eq p0, v2, :cond_7

    .line 22
    sget-object v2, Lcom/mob/commons/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23
    :cond_7
    new-instance v1, Lcom/mob/commons/b$2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DS-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/mob/commons/b$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 25
    :cond_8
    :goto_1
    invoke-static {}, Lcom/mob/MobSDK;->getDomain()Lcom/mob/commons/InternationalDomain;

    move-result-object p0

    sget-object v0, Lcom/mob/commons/InternationalDomain;->DEFAULT:Lcom/mob/commons/InternationalDomain;

    if-ne p0, v0, :cond_9

    invoke-static {}, Lcom/mob/MobSDK;->checkV6()Z

    move-result p0

    if-nez p0, :cond_9

    .line 26
    invoke-static {}, Lcom/mob/commons/c;->a()V

    :cond_9
    return-void

    .line 27
    :cond_a
    :goto_2
    invoke-static {}, Lcom/mob/commons/b;->q()V

    return-void

    :cond_b
    :goto_3
    if-eq p0, v2, :cond_c

    .line 28
    invoke-static {}, Lcom/mob/commons/s;->b()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 29
    :cond_c
    invoke-static {}, Lcom/mob/commons/b;->p()V

    :cond_d
    return-void
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b;->g(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Z)V
    .locals 3

    .line 4
    invoke-static {}, Lcom/mob/commons/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "b db st"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/mob/commons/e;->a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/mob/commons/m;->a()Lcom/mob/commons/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/m;->b()V

    .line 8
    invoke-static {p0}, Lcom/mob/commons/b;->d(Z)V

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 3

    const-string v0, "002>bibf"

    .line 2
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/mob/commons/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static d(I)V
    .locals 5

    .line 17
    sget-object v0, Lcom/mob/commons/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "005Jeedifghfde"

    .line 18
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 19
    sget-object v1, Lcom/mob/commons/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/mob/commons/b$4;

    invoke-direct {v2, v0, p0}, Lcom/mob/commons/b$4;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v2, "M-"

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 22
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/b;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    sget-object p0, Lcom/mob/commons/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/mob/commons/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private static declared-synchronized d(Z)V
    .locals 6

    const-class v0, Lcom/mob/commons/b;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->o()Ljava/util/HashSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    sget-object v4, Lcom/mob/commons/b;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mob/commons/a/c;

    if-nez p0, :cond_2

    .line 8
    invoke-virtual {v4}, Lcom/mob/commons/a/c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/commons/b;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v4}, Lcom/mob/commons/a/c;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    sget-object v4, Lcom/mob/commons/b;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 11
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 12
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 13
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clt("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ") over"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 14
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 15
    :try_start_5
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 16
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static d()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v0

    return v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "003a+bcDf"

    .line 2
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mob/commons/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static e(I)V
    .locals 8

    .line 4
    invoke-static {}, Lcom/mob/commons/b;->r()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Ljava/util/HashMap;Z)V

    .line 6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/d;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ge dhs_w cdl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-wide/16 v5, 0xdac

    .line 9
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ge dhs_w end, dur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 12
    :cond_0
    :goto_0
    invoke-static {v2, v1, v1, p0}, Lcom/mob/commons/b;->a(ZZZI)V

    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "002Vbecb"

    .line 2
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mob/commons/b;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static f(Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mob/commons/f;->a(I)V

    .line 3
    invoke-static {p0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "003Ddebebe"

    invoke-static {v5}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 5
    :try_start_1
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/commons/g;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object p0

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/mob/commons/f;->a(I)V

    .line 7
    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    goto/16 :goto_7

    .line 8
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 9
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/mob/commons/f;->a(I)V

    .line 10
    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    goto/16 :goto_7

    .line 11
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-nez v4, :cond_2

    .line 12
    :try_start_3
    invoke-static {}, Lcom/mob/commons/b;->p()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    return-void

    .line 13
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mob/commons/f;->a(I)V

    .line 14
    invoke-static {}, Lcom/mob/commons/q;->g()Ljava/util/HashMap;

    move-result-object v4

    .line 15
    new-instance v6, Lcom/mob/tools/network/NetCommunicator;

    const/16 v7, 0x400

    const-string v8, "9e87e8d4b8f52f2916d0fb4342aa6b54a81a05666d0bdb23cc5ebf3a07440bc3976adff1ce11c64ddcdbfc017920648217196d51e3165e780e58b5460c525ee9"

    const-string v9, "13bda4b87eb42ab9e64e6b4f3d17cf8005a4ae94af37bc9fd76ebd91a828f017c81bd63cbe2924e361e20003b9e5f47cdac1f5fba5fca05730a32c5c65869590287207e79a604a2aac429e55f0d35c211367bd226dd5e57df7810f036071854aa1061a0f34b418b9178895a531107c652a428cfa6ecfa65333580ae7e0edf0e1"

    invoke-direct {v6, v7, v8, v9}, Lcom/mob/tools/network/NetCommunicator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6, v4, p0, v3}, Lcom/mob/tools/network/NetCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 17
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v4

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/mob/commons/f;->a(I)V

    const-string v4, "002Ydfcb"

    .line 18
    invoke-static {v4}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "m"

    .line 19
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "002\'bdde"

    .line 20
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    .line 21
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    const-string v8, "002+bdbh"

    .line 22
    invoke-static {v8}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "002Ubebi"

    .line 23
    invoke-static {v9}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "0025dfbi"

    .line 24
    invoke-static {v10}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 25
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto/16 :goto_4

    .line 26
    :cond_4
    sget-object v10, Lcom/mob/commons/l;->h:Ljava/lang/Object;

    monitor-enter v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 27
    :try_start_5
    sget-object v11, Lcom/mob/commons/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 28
    sget-object v11, Lcom/mob/commons/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v12, "h"

    invoke-virtual {v11, v12, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v11, Lcom/mob/commons/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v12, "k"

    invoke-virtual {v11, v12, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v8, Lcom/mob/commons/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v11, "002Kbebi"

    invoke-static {v11}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v8, Lcom/mob/commons/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v9, "002Gdfbi"

    invoke-static {v9}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_6

    .line 32
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object p0

    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/mob/commons/f;->a(I)V

    .line 33
    new-instance p0, Ljava/io/File;

    const-string v7, "008=becabidfcjdebebe"

    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {p0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 35
    :cond_5
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/mob/commons/f;->a(I)V

    .line 36
    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 38
    :try_start_6
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 39
    :try_start_7
    new-instance p0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {p0, v4, v6, v1}, Lcom/mob/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 40
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object p0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/mob/commons/f;->a(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    new-array p0, v5, [Ljava/io/Closeable;

    aput-object v6, p0, v3

    .line 41
    invoke-static {p0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v6

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    new-array v4, v5, [Ljava/io/Closeable;

    aput-object v1, v4, v3

    invoke-static {v4}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 42
    throw p0

    .line 43
    :cond_6
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object p0

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/mob/commons/f;->a(I)V

    .line 44
    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    new-array p0, v5, [[B

    new-array v6, v5, [I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 45
    :try_start_9
    new-instance v7, Lcom/mob/commons/b$5;

    invoke-direct {v7, p0, v6}, Lcom/mob/commons/b$5;-><init>([[B[I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 46
    :try_start_a
    new-instance v8, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v8}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {v8, v4, v7, v1}, Lcom/mob/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 47
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v1

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Lcom/mob/commons/f;->a(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v7, v1, v3

    .line 48
    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 49
    sget-object v1, Lcom/mob/commons/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "001Ida"

    invoke-static {v4}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aget-object p0, p0, v3

    invoke-virtual {v1, v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object p0, Lcom/mob/commons/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "s"

    aget v3, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_7
    :goto_2
    monitor-exit v10

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v1, v7

    goto :goto_3

    :catchall_3
    move-exception p0

    :goto_3
    new-array v4, v5, [Ljava/io/Closeable;

    aput-object v1, v4, v3

    .line 52
    invoke-static {v4}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 53
    throw p0

    :catchall_4
    move-exception p0

    .line 54
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw p0

    .line 55
    :cond_8
    :goto_4
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/mob/commons/f;->a(I)V

    .line 56
    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 57
    :goto_5
    :try_start_d
    invoke-static {}, Lcom/mob/commons/b;->p()V

    goto :goto_7

    :catchall_5
    move-exception p0

    invoke-static {}, Lcom/mob/commons/b;->p()V

    .line 58
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception p0

    move-object v1, v2

    goto :goto_6

    :catchall_7
    move-exception p0

    :goto_6
    if-eqz v1, :cond_9

    .line 59
    :try_start_e
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 60
    :catchall_8
    :cond_9
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method public static g()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0048cfcfcedg"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "005Idhcfcfcedg"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "005Ucb1ghgCcb"

    .line 4
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "009$dfbfSgi9ba2gBbibebg"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "0107bbbbbbbebabfeecabibi"

    .line 6
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "004Vdbbcdebe"

    .line 7
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private static g(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "003@dedacb"

    invoke-static {v3}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    .line 15
    invoke-static {}, Lcom/mob/commons/b;->q()V

    return-void

    .line 16
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/mob/commons/q;->g()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "007hg9bfdebccabi"

    .line 17
    invoke-static {v2}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mob/commons/cc/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Lcom/mob/tools/network/NetCommunicator;

    const/16 v3, 0x400

    const-string v4, "9e87e8d4b8f52f2916d0fb4342aa6b54a81a05666d0bdb23cc5ebf3a07440bc3976adff1ce11c64ddcdbfc017920648217196d51e3165e780e58b5460c525ee9"

    const-string v5, "13bda4b87eb42ab9e64e6b4f3d17cf8005a4ae94af37bc9fd76ebd91a828f017c81bd63cbe2924e361e20003b9e5f47cdac1f5fba5fca05730a32c5c65869590287207e79a604a2aac429e55f0d35c211367bd226dd5e57df7810f036071854aa1061a0f34b418b9178895a531107c652a428cfa6ecfa65333580ae7e0edf0e1"

    invoke-direct {v2, v3, v4, v5}, Lcom/mob/tools/network/NetCommunicator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, v0, p0, v3}, Lcom/mob/tools/network/NetCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string v0, "0048cbbcde<b"

    .line 20
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 21
    sget-object v0, Lcom/mob/commons/l;->i:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :try_start_3
    sget-object v2, Lcom/mob/commons/b;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 23
    sget-object v2, Lcom/mob/commons/b;->h:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "0026cbCb"

    invoke-static {v3}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-object v0, v1

    goto :goto_0

    :catchall_2
    nop

    :goto_0
    if-eqz v0, :cond_3

    .line 25
    :try_start_5
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 26
    :catchall_3
    :cond_3
    :goto_1
    invoke-static {}, Lcom/mob/commons/b;->q()V

    return-void
.end method

.method public static h()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/commons/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/mob/commons/b;->d(I)V

    :cond_0
    return-void
.end method

.method public static i()Z
    .locals 1

    const-string v0, "ie"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 1

    const-string v0, "is"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic k()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic l()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/b;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/commons/b;->k:Z

    return v0
.end method

.method static synthetic n()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static o()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mob/commons/a/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    :try_start_0
    const-class v1, Lcom/mob/commons/a/a;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :catchall_0
    :try_start_1
    const-class v1, Lcom/mob/commons/a/b;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :catchall_1
    :try_start_2
    const-class v1, Lcom/mob/commons/a/d;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5
    :catchall_2
    :try_start_3
    const-class v1, Lcom/mob/commons/a/e;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 6
    :catchall_3
    :try_start_4
    const-class v1, Lcom/mob/commons/a/f;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 7
    :catchall_4
    :try_start_5
    const-class v1, Lcom/mob/commons/a/g;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 8
    :catchall_5
    :try_start_6
    const-class v1, Lcom/mob/commons/a/h;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 9
    :catchall_6
    :try_start_7
    const-class v1, Lcom/mob/commons/a/m;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 10
    :catchall_7
    :try_start_8
    const-class v1, Lcom/mob/commons/a/i;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 11
    :catchall_8
    :try_start_9
    const-class v1, Lcom/mob/commons/a/j;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 12
    :catchall_9
    :try_start_a
    const-class v1, Lcom/mob/commons/a/k;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 13
    :catchall_a
    :try_start_b
    const-class v1, Lcom/mob/commons/a/l;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 14
    :catchall_b
    :try_start_c
    const-class v1, Lcom/mob/commons/a/n;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 15
    :catchall_c
    :try_start_d
    const-class v1, Lcom/mob/commons/a/p;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 16
    :catchall_d
    :try_start_e
    const-class v1, Lcom/mob/commons/a/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 17
    :catchall_e
    :try_start_f
    const-class v1, Lcom/mob/commons/a/r;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    :catchall_f
    return-object v0
.end method

.method private static p()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mob/commons/l;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/mob/commons/f;->a(I)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static q()V
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/commons/l;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static r()Ljava/util/HashMap;
    .locals 14

    .line 1
    invoke-static {}, Lcom/mob/commons/b;->s()Ljava/util/HashMap;

    move-result-object v0

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0x1

    move-wide v7, v1

    move-wide v5, v3

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_6

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_1
    const-wide/16 v9, 0x3e8

    mul-long v9, v9, v5

    .line 3
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v9

    .line 4
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 5
    :goto_2
    invoke-static {}, Lcom/mob/commons/b;->s()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mob/tools/utils/DeviceHelper;->checkNetworkAvailable()Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-gtz v12, :cond_3

    goto :goto_4

    :cond_3
    sub-long/2addr v7, v3

    :cond_4
    mul-long v5, v5, v1

    const-wide/16 v10, 0x8

    if-nez v9, :cond_5

    cmp-long v9, v5, v10

    if-gez v9, :cond_5

    move-wide v5, v10

    :cond_5
    const-wide/16 v12, 0x12c

    cmp-long v9, v5, v12

    if-lez v9, :cond_0

    move-wide v5, v10

    goto :goto_0

    .line 8
    :goto_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    return-object v0
.end method

.method private static s()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "utf-8"

    const-string v1, ":"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->checkNetworkAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {}, Lcom/mob/commons/q;->f()Ljava/util/HashMap;

    move-result-object v5

    .line 5
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "006IbdVcc2bh.gPbg"

    .line 6
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "006Abd3ccc<bhdd"

    .line 7
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "003Ibdddde"

    .line 8
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "022=beca$j1cjddcacaddcb?g*cjbdbiKfYbfcabc@fDcjddKjLde"

    invoke-static {v8}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, -0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v11, "002b_de"

    .line 10
    invoke-static {v11}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/mob/MobSDK;->getPrivacyGrantedStatus()I

    move-result v7

    const/4 v8, 0x0

    if-eq v7, v9, :cond_3

    const-string v11, "009CbcdechddbfDggSefSc"

    .line 12
    invoke-static {v11}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-ne v7, v10, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v7, "002h5gc"

    .line 13
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/mob/MobSDK;->checkV6()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v9, 0x1

    :cond_4
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "002=babe"

    .line 14
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->checkUA()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "002Nba=f"

    .line 15
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->usbEnable()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "002fh"

    .line 16
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->devEnable()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "002hc"

    .line 17
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->vpn()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_5
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "002KdbTc"

    .line 18
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->isWifiProxy()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :goto_6
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "002PbfXb"

    .line 19
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->isRooted()Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    goto :goto_7

    :cond_a
    const/4 v9, 0x0

    :goto_7
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "002Zbj5c"

    .line 20
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->cx()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    :goto_8
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "002DbdZf"

    .line 21
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->debugable()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    const/4 v10, 0x0

    :goto_9
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/mob/commons/c;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "007eh]fc=eIddbedf"

    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    new-instance v7, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v7}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-static {}, Lcom/mob/tools/network/NetCommunicator;->getCommonDefaultHeaders()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v7, v3, v5, v9}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    if-nez v5, :cond_d

    return-object v2

    :cond_d
    const-string v7, "006<de(bRbdXb(bade"

    .line 25
    invoke-static {v7}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "200"

    .line 26
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "RS is illegal: "

    if-eqz v7, :cond_10

    .line 27
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "009b1bc3jgHdePbDbd[jc"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->rawMD5([B)[B

    move-result-object v1

    const-string v4, "002!debe"

    .line 28
    invoke-static {v4}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 29
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mob/tools/utils/Data;->AES128Decode([B[B)[B

    move-result-object v1

    invoke-direct {v5, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sw: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 31
    invoke-static {v5}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 32
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "010fghLbcbeCg]cgbcOjg"

    .line 33
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/mob/commons/w;->a(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    sget-object v3, Lcom/mob/commons/w;->u:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V

    const-string v1, "011Wbccbcb<gAddbdcbegbdbede"

    .line 36
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/commons/b;->a(Ljava/lang/Object;)V

    return-object v0

    .line 37
    :cond_e
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_f
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_10
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 40
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 41
    :try_start_2
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mob/commons/w;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-object v2
.end method
