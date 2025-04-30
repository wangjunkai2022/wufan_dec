.class Lcom/mob/commons/a/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/mob/commons/a/j$a;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private volatile c:Z

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/mob/commons/a/j$a;

    invoke-direct {v0}, Lcom/mob/commons/a/j$a;-><init>()V

    sput-object v0, Lcom/mob/commons/a/j$a;->a:Lcom/mob/commons/a/j$a;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a/j$a;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mob/commons/a/j$a;->c:Z

    .line 3
    new-instance v0, Lcom/mob/commons/a/j$a$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/a/j$a$1;-><init>(Lcom/mob/commons/a/j$a;)V

    iput-object v0, p0, Lcom/mob/commons/a/j$a;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()Lcom/mob/commons/a/j$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/a/j$a;->a:Lcom/mob/commons/a/j$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .line 7
    sget-object v0, Lcom/mob/commons/a/j$a;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 8
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static synthetic d()Lcom/mob/commons/a/j$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/a/j$a;->a:Lcom/mob/commons/a/j$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 3
    :goto_0
    invoke-direct {p0, p2}, Lcom/mob/commons/a/j$a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 4
    sput-boolean p2, Lcom/mob/commons/b;->b:Z

    .line 5
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v0

    const-wide/16 v1, 0x2

    const-class v3, Lcom/mob/commons/a/j;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p1, v4, p2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized b()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/mob/commons/a/j$a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lcom/mob/commons/a/j$a;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    sget-object v4, Lcom/mob/commons/a/j$a;->b:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 6
    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "007f>egehekegggFj"

    .line 7
    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    const/4 v5, 0x2

    if-ge v3, v4, :cond_2

    .line 9
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "016?ei*jUggefghAejBeihfDj1eh$jAefWkj;ei"

    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mob/commons/a/j$a;->d:Landroid/content/BroadcastReceiver;

    aput-object v7, v6, v2

    aput-object v1, v6, v0

    new-array v1, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/BroadcastReceiver;

    aput-object v5, v1, v2

    const-class v2, Landroid/content/IntentFilter;

    aput-object v2, v1, v0

    invoke-static {v3, v4, v6, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "016Uei[j-ggefghQejAeihfYjUeh^j$ef_kj2ei"

    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/mob/commons/a/j$a;->d:Landroid/content/BroadcastReceiver;

    aput-object v8, v7, v2

    aput-object v1, v7, v0

    const/4 v1, 0x4

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    new-array v1, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v1, v2

    const-class v2, Landroid/content/IntentFilter;

    aput-object v2, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v1, v5

    .line 12
    invoke-static {v3, v4, v7, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized c()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/mob/commons/a/j$a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lcom/mob/commons/a/j$a;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "018XedeleiZj%ggefghNejAeihf@jYeh5jVefWkjLei"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mob/commons/a/j$a;->d:Landroid/content/BroadcastReceiver;

    aput-object v5, v4, v0

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/BroadcastReceiver;

    aput-object v5, v3, v0

    invoke-static {v1, v2, v4, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
