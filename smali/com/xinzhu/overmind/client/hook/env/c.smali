.class public Lcom/xinzhu/overmind/client/hook/env/c;
.super Ljava/lang/Object;
.source "VirtualRuntime.java"


# static fields
.field private static final a:Landroid/os/Handler;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xinzhu/overmind/client/hook/env/c;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "transact remote server failed"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/c;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static f()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    return v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/xinzhu/haunted/dalvik/system/a;->e()Lcom/xinzhu/haunted/dalvik/system/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/haunted/dalvik/system/a;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 2

    const-string v0, "java.vm.version"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static h(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processName",
            "appInfo"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object p1, Lcom/xinzhu/overmind/client/hook/env/c;->b:Ljava/lang/String;

    .line 3
    sput-object p0, Lcom/xinzhu/overmind/client/hook/env/c;->c:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/xinzhu/haunted/android/os/o;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    invoke-static {p0, p1}, Lcom/xinzhu/haunted/android/ddm/a;->b(Ljava/lang/String;I)V

    return-void
.end method
