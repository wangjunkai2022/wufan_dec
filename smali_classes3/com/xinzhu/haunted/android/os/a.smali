.class public final Lcom/xinzhu/haunted/android/os/a;
.super Ljava/lang/Object;
.source "HtBundle.java"


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field public static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/xinzhu/haunted/d;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/android/os/a;->b:Ljava/lang/Class;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/xinzhu/haunted/android/os/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/xinzhu/haunted/android/os/a;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Z)Z
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
    sget-object p0, Lcom/xinzhu/haunted/android/os/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_2

    .line 2
    sget-boolean p0, Lcom/xinzhu/haunted/android/os/a;->d:Z

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/xinzhu/haunted/android/os/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lcom/xinzhu/haunted/android/os/a;->b:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p1

    const-string v4, "setDefusable"

    invoke-static {v2, v4, v3}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    sput-boolean p1, Lcom/xinzhu/haunted/android/os/a;->d:Z

    .line 5
    sget-object p0, Lcom/xinzhu/haunted/android/os/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public static b(Landroid/os/Bundle;Z)Landroid/os/Bundle;
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
    invoke-static {p0, p1}, Lcom/xinzhu/haunted/android/os/a;->a(Landroid/os/Bundle;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xinzhu/haunted/android/os/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
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
