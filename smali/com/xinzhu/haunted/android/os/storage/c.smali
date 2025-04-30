.class public final Lcom/xinzhu/haunted/android/os/storage/c;
.super Ljava/lang/Object;
.source "HtStorageManager.java"


# static fields
.field private static final b:Ljava/lang/String; = "c"

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
            "Ljava/lang/reflect/Field;",
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


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.os.storage.StorageManager"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->c:Ljava/lang/Class;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/xinzhu/haunted/android/os/storage/c;->e:Z

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/os/storage/c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    sput-boolean v0, Lcom/xinzhu/haunted/android/os/storage/c;->g:Z

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/xinzhu/haunted/android/os/storage/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    sput-boolean v0, Lcom/xinzhu/haunted/android/os/storage/c;->i:Z

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
    iput-object p1, p0, Lcom/xinzhu/haunted/android/os/storage/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static b()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/xinzhu/haunted/android/os/storage/c;->e:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    sget-object v4, Lcom/xinzhu/haunted/android/os/storage/c;->c:Ljava/lang/Class;

    const-string v5, "sStorageManager"

    invoke-static {v4, v5}, Lcom/xinzhu/haunted/d;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v1, Lcom/xinzhu/haunted/android/os/storage/c;->e:Z

    .line 5
    sget-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public static c(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/xinzhu/haunted/android/os/storage/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_2

    .line 2
    sget-boolean p0, Lcom/xinzhu/haunted/android/os/storage/c;->i:Z

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/xinzhu/haunted/android/os/storage/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lcom/xinzhu/haunted/android/os/storage/c;->c:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    aput-object v4, v3, p1

    const-string v4, "getVolumeList"

    invoke-static {v2, v4, v3}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean p1, Lcom/xinzhu/haunted/android/os/storage/c;->i:Z

    .line 5
    sget-object p0, Lcom/xinzhu/haunted/android/os/storage/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    return p1

    :cond_1
    return v0

    :cond_2
    return p1
.end method

.method public static d(II)[Landroid/os/storage/StorageVolume;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/xinzhu/haunted/android/os/storage/c;->c(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/storage/StorageVolume;
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

.method public static f()Landroid/os/IInterface;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/os/storage/c;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-object v1
.end method

.method public static h(Landroid/os/IInterface;)Z
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
    invoke-static {}, Lcom/xinzhu/haunted/android/os/storage/c;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public a()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/xinzhu/haunted/android/os/storage/c;->g:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    sget-object v4, Lcom/xinzhu/haunted/android/os/storage/c;->c:Ljava/lang/Class;

    const-string v5, "mStorageManager"

    invoke-static {v4, v5}, Lcom/xinzhu/haunted/d;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean v1, Lcom/xinzhu/haunted/android/os/storage/c;->g:Z

    .line 5
    sget-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->f:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public e()Landroid/os/IInterface;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/os/storage/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/xinzhu/haunted/android/os/storage/c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-object v1
.end method

.method public g(Landroid/os/IInterface;)Z
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
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/os/storage/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/os/storage/c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/xinzhu/haunted/android/os/storage/c;->a:Ljava/lang/Object;

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
