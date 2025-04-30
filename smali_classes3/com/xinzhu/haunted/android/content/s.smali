.class public final Lcom/xinzhu/haunted/android/content/s;
.super Ljava/lang/Object;
.source "HtSyncRequest.java"


# static fields
.field private static final b:Ljava/lang/String; = "s"

.field public static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z

.field private static f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Z

.field private static h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Z

.field private static j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Z

.field private static l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Z

.field private static n:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Z


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/content/SyncRequest;

    invoke-static {v0}, Lcom/xinzhu/haunted/d;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/android/content/s;->c:Ljava/lang/Class;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/xinzhu/haunted/android/content/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/s;->e:Z

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/content/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/s;->g:Z

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/content/s;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/s;->i:Z

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/content/s;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/s;->k:Z

    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/content/s;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/s;->m:Z

    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/content/s;->n:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/s;->o:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "egoInstance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/haunted/android/content/s;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/xinzhu/haunted/android/content/s;->m:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->l:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    sget-object v4, Lcom/xinzhu/haunted/android/content/s;->c:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "getAccount"

    invoke-static {v4, v6, v5}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v1, Lcom/xinzhu/haunted/android/content/s;->m:Z

    .line 5
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public b()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/xinzhu/haunted/android/content/s;->e:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    sget-object v4, Lcom/xinzhu/haunted/android/content/s;->c:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "getBundle"

    invoke-static {v4, v6, v5}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v1, Lcom/xinzhu/haunted/android/content/s;->e:Z

    .line 5
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public c()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/xinzhu/haunted/android/content/s;->o:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->n:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    sget-object v4, Lcom/xinzhu/haunted/android/content/s;->c:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "getProvider"

    invoke-static {v4, v6, v5}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v1, Lcom/xinzhu/haunted/android/content/s;->o:Z

    .line 5
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public d()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/xinzhu/haunted/android/content/s;->g:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    sget-object v4, Lcom/xinzhu/haunted/android/content/s;->c:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "getSyncFlexTime"

    invoke-static {v4, v6, v5}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v1, Lcom/xinzhu/haunted/android/content/s;->g:Z

    .line 5
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public e()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/xinzhu/haunted/android/content/s;->i:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    sget-object v4, Lcom/xinzhu/haunted/android/content/s;->c:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "getSyncRunTime"

    invoke-static {v4, v6, v5}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v1, Lcom/xinzhu/haunted/android/content/s;->i:Z

    .line 5
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public f()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/xinzhu/haunted/android/content/s;->k:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    sget-object v4, Lcom/xinzhu/haunted/android/content/s;->c:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "isPeriodic"

    invoke-static {v4, v6, v5}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v1, Lcom/xinzhu/haunted/android/content/s;->k:Z

    .line 5
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public g()Landroid/accounts/Account;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/s;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/xinzhu/haunted/android/content/s;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public h()Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/s;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/xinzhu/haunted/android/content/s;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public i()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/s;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/xinzhu/haunted/android/content/s;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public j()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/s;->d()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/xinzhu/haunted/android/content/s;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method public k()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/s;->e()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/xinzhu/haunted/android/content/s;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method public l()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/s;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/s;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/xinzhu/haunted/android/content/s;->a:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return v1
.end method
