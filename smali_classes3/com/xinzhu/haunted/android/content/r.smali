.class public final Lcom/xinzhu/haunted/android/content/r;
.super Ljava/lang/Object;
.source "HtSyncInfo.java"


# static fields
.field private static final b:Ljava/lang/String; = "r"

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
            "Ljava/lang/reflect/Field;",
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
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Z

.field private static j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Z


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/content/SyncInfo;

    invoke-static {v0}, Lcom/xinzhu/haunted/d;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/android/content/r;->c:Ljava/lang/Class;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/xinzhu/haunted/android/content/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/r;->e:Z

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/content/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/r;->g:Z

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/content/r;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/r;->i:Z

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/content/r;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/r;->k:Z

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
    iput-object p1, p0, Lcom/xinzhu/haunted/android/content/r;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(ILandroid/accounts/Account;Ljava/lang/String;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/xinzhu/haunted/android/content/r;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_2

    .line 2
    sget-boolean p0, Lcom/xinzhu/haunted/android/content/r;->i:Z

    const/4 p2, 0x0

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/xinzhu/haunted/android/content/r;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p3, 0x0

    sget-object p4, Lcom/xinzhu/haunted/android/content/r;->c:Ljava/lang/Class;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p2

    const-class v1, Landroid/accounts/Account;

    aput-object v1, v0, p1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const-string v1, "HtSyncInfo"

    invoke-static {p4, v1, v0}, Lcom/xinzhu/haunted/d;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean p1, Lcom/xinzhu/haunted/android/content/r;->i:Z

    .line 5
    sget-object p0, Lcom/xinzhu/haunted/android/content/r;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    return p1

    :cond_1
    return p2

    :cond_2
    return p1
.end method

.method public static b(Landroid/content/SyncInfo;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/xinzhu/haunted/android/content/r;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_2

    .line 2
    sget-boolean p0, Lcom/xinzhu/haunted/android/content/r;->k:Z

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/xinzhu/haunted/android/content/r;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    sget-object v3, Lcom/xinzhu/haunted/android/content/r;->c:Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Object;

    const-class v5, Landroid/content/SyncInfo;

    aput-object v5, v4, v1

    const-string v5, "HtSyncInfo"

    invoke-static {v3, v5, v4}, Lcom/xinzhu/haunted/d;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/r;->k:Z

    .line 5
    sget-object p0, Lcom/xinzhu/haunted/android/content/r;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static d(ILjava/lang/String;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/xinzhu/haunted/android/content/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_2

    .line 2
    sget-boolean p0, Lcom/xinzhu/haunted/android/content/r;->g:Z

    const/4 p2, 0x0

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/xinzhu/haunted/android/content/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p3, 0x0

    sget-object v0, Lcom/xinzhu/haunted/android/content/r;->c:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, p2

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, p1

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string v2, "createAccountRedacted"

    invoke-static {v0, v2, v1}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean p1, Lcom/xinzhu/haunted/android/content/r;->g:Z

    .line 5
    sget-object p0, Lcom/xinzhu/haunted/android/content/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    return p1

    :cond_1
    return p2

    :cond_2
    return p1
.end method

.method public static e(ILandroid/accounts/Account;Ljava/lang/String;J)Lcom/xinzhu/haunted/android/content/r;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xinzhu/haunted/android/content/r;->a(ILandroid/accounts/Account;Ljava/lang/String;J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lcom/xinzhu/haunted/android/content/r;

    invoke-direct {v0}, Lcom/xinzhu/haunted/android/content/r;-><init>()V

    .line 3
    sget-object v2, Lcom/xinzhu/haunted/android/content/r;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object p1, v3, p0

    const/4 p0, 0x2

    aput-object p2, v3, p0

    const/4 p0, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/xinzhu/haunted/android/content/r;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static f(Landroid/content/SyncInfo;)Lcom/xinzhu/haunted/android/content/r;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/haunted/android/content/r;->b(Landroid/content/SyncInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lcom/xinzhu/haunted/android/content/r;

    invoke-direct {v0}, Lcom/xinzhu/haunted/android/content/r;-><init>()V

    .line 3
    sget-object v2, Lcom/xinzhu/haunted/android/content/r;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/xinzhu/haunted/android/content/r;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static g(ILjava/lang/String;J)Landroid/content/SyncInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/xinzhu/haunted/android/content/r;->d(ILjava/lang/String;J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SyncInfo;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public c()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/content/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/xinzhu/haunted/android/content/r;->e:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xinzhu/haunted/android/content/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    sget-object v4, Lcom/xinzhu/haunted/android/content/r;->c:Ljava/lang/Class;

    const-string v5, "authorityId"

    invoke-static {v4, v5}, Lcom/xinzhu/haunted/d;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v1, Lcom/xinzhu/haunted/android/content/r;->e:Z

    .line 5
    sget-object v0, Lcom/xinzhu/haunted/android/content/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public h()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/r;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/xinzhu/haunted/android/content/r;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return v1
.end method

.method public i(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/r;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/r;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/xinzhu/haunted/android/content/r;->a:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return v1
.end method
