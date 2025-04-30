.class public final Lcom/xinzhu/haunted/android/app/w;
.super Ljava/lang/Object;
.source "HtService.java"


# static fields
.field private static final b:Ljava/lang/String; = "w"

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


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/app/Service;

    invoke-static {v0}, Lcom/xinzhu/haunted/d;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/android/app/w;->c:Ljava/lang/Class;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/xinzhu/haunted/android/app/w;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/xinzhu/haunted/android/app/w;->e:Z

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
    iput-object p1, p0, Lcom/xinzhu/haunted/android/app/w;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "arg5"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/xinzhu/haunted/android/app/w;->b(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/app/w;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/xinzhu/haunted/android/app/w;->a:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    const/4 p1, 0x5

    aput-object p6, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "arg5"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/xinzhu/haunted/android/app/w;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 2
    sget-boolean p1, Lcom/xinzhu/haunted/android/app/w;->e:Z

    const/4 p3, 0x0

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/xinzhu/haunted/android/app/w;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p4, 0x0

    sget-object p5, Lcom/xinzhu/haunted/android/app/w;->c:Ljava/lang/Class;

    const/4 p6, 0x6

    new-array p6, p6, [Ljava/lang/Object;

    const-class v0, Landroid/content/Context;

    aput-object v0, p6, p3

    const-string v0, "android.app.ActivityThread"

    aput-object v0, p6, p2

    const/4 v0, 0x2

    const-class v1, Ljava/lang/String;

    aput-object v1, p6, v0

    const/4 v0, 0x3

    const-class v1, Landroid/os/IBinder;

    aput-object v1, p6, v0

    const/4 v0, 0x4

    const-class v1, Landroid/app/Application;

    aput-object v1, p6, v0

    const/4 v0, 0x5

    const-class v1, Ljava/lang/Object;

    aput-object v1, p6, v0

    const-string v0, "attach"

    invoke-static {p5, v0, p6}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p5

    invoke-virtual {p1, p4, p5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean p2, Lcom/xinzhu/haunted/android/app/w;->e:Z

    .line 5
    sget-object p1, Lcom/xinzhu/haunted/android/app/w;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p3

    :cond_0
    return p2

    :cond_1
    return p3

    :cond_2
    return p2
.end method
