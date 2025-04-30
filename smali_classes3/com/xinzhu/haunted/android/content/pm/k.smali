.class public final Lcom/xinzhu/haunted/android/content/pm/k;
.super Ljava/lang/Object;
.source "HtSharedLibraryInfo.java"


# static fields
.field private static final b:Ljava/lang/String; = "k"

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
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Z


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/content/pm/SharedLibraryInfo;

    invoke-static {v0}, Lcom/xinzhu/haunted/d;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/android/content/pm/k;->c:Ljava/lang/Class;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/xinzhu/haunted/android/content/pm/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/pm/k;->e:Z

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/content/pm/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/pm/k;->g:Z

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/content/pm/k;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    sput-boolean v0, Lcom/xinzhu/haunted/android/content/pm/k;->i:Z

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
    iput-object p1, p0, Lcom/xinzhu/haunted/android/content/pm/k;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2",
            "arg3",
            "arg4",
            "arg5",
            "arg6",
            "arg7",
            "arg8",
            "arg9"
        }
    .end annotation

    .line 1
    const-class p0, Ljava/lang/String;

    sget-object p1, Lcom/xinzhu/haunted/android/content/pm/k;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 2
    sget-boolean p1, Lcom/xinzhu/haunted/android/content/pm/k;->i:Z

    const/4 p3, 0x0

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/xinzhu/haunted/android/content/pm/k;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p4, 0x0

    sget-object p5, Lcom/xinzhu/haunted/android/content/pm/k;->c:Ljava/lang/Class;

    const/16 p6, 0xa

    new-array p6, p6, [Ljava/lang/Object;

    aput-object p0, p6, p3

    aput-object p0, p6, p2

    const/4 p7, 0x2

    const-class p8, Ljava/util/List;

    aput-object p8, p6, p7

    const/4 p7, 0x3

    aput-object p0, p6, p7

    const/4 p0, 0x4

    sget-object p7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object p7, p6, p0

    const/4 p0, 0x5

    sget-object p7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p7, p6, p0

    const/4 p0, 0x6

    const-class p7, Landroid/content/pm/VersionedPackage;

    aput-object p7, p6, p0

    const/4 p0, 0x7

    const-class p7, Ljava/util/List;

    aput-object p7, p6, p0

    const/16 p0, 0x8

    const-class p7, Ljava/util/List;

    aput-object p7, p6, p0

    const/16 p0, 0x9

    sget-object p7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p7, p6, p0

    const-string p0, "HtSharedLibraryInfo"

    invoke-static {p5, p0, p6}, Lcom/xinzhu/haunted/d;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p1, p4, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean p2, Lcom/xinzhu/haunted/android/content/pm/k;->i:Z

    .line 5
    sget-object p0, Lcom/xinzhu/haunted/android/content/pm/k;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return p3

    :cond_0
    return p2

    :cond_1
    return p3

    :cond_2
    return p2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)Lcom/xinzhu/haunted/android/content/pm/k;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2",
            "arg3",
            "arg4",
            "arg5",
            "arg6",
            "arg7",
            "arg8",
            "arg9"
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/xinzhu/haunted/android/content/pm/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lcom/xinzhu/haunted/android/content/pm/k;

    invoke-direct {v0}, Lcom/xinzhu/haunted/android/content/pm/k;-><init>()V

    .line 3
    sget-object v2, Lcom/xinzhu/haunted/android/content/pm/k;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object p1, v3, p0

    const/4 p0, 0x2

    aput-object p2, v3, p0

    const/4 p0, 0x3

    aput-object p3, v3, p0

    const/4 p0, 0x4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, p0

    const/4 p0, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    const/4 p0, 0x6

    aput-object p7, v3, p0

    const/4 p0, 0x7

    aput-object p8, v3, p0

    const/16 p0, 0x8

    aput-object p9, v3, p0

    const/16 p0, 0x9

    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/xinzhu/haunted/android/content/pm/k;->a:Ljava/lang/Object;
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


# virtual methods
.method public b()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/xinzhu/haunted/android/content/pm/k;->e:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    sget-object v4, Lcom/xinzhu/haunted/android/content/pm/k;->c:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "getName"

    invoke-static {v4, v6, v5}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v1, Lcom/xinzhu/haunted/android/content/pm/k;->e:Z

    .line 5
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

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
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/xinzhu/haunted/android/content/pm/k;->g:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    sget-object v4, Lcom/xinzhu/haunted/android/content/pm/k;->c:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "getPath"

    invoke-static {v4, v6, v5}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v1, Lcom/xinzhu/haunted/android/content/pm/k;->g:Z

    .line 5
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public e()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/k;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/xinzhu/haunted/android/content/pm/k;->a:Ljava/lang/Object;

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

.method public f()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/k;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/xinzhu/haunted/android/content/pm/k;->a:Ljava/lang/Object;

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
