.class public Lcom/xinzhu/overmind/client/VMCore;
.super Ljava/lang/Object;
.source "VMCore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VMCoreJava"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "overmind_a"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "overmind"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addIORule(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetPath",
            "relocatePath"
        }
    .end annotation
.end method

.method public static getCallingUid(I)I
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origCallingUid"
        }
    .end annotation

    return p0
.end method

.method public static native hideXposed()V
.end method

.method public static native init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "apiLevel",
            "host_package_name",
            "mind_package_name",
            "mind_cache_dir"
        }
    .end annotation
.end method

.method public static native initClientClassloader(Ljava/lang/ClassLoader;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classLoader"
        }
    .end annotation
.end method

.method public static initLibrary()V
    .locals 2

    const-string v0, "VMCoreJava"

    const-string v1, "Call initLibrary."

    .line 1
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static redirectPath(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "redirectPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xinzhu/overmind/client/hook/f;->d()Lcom/xinzhu/overmind/client/hook/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xinzhu/overmind/client/hook/f;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VMCoreJava"

    invoke-static {v1, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/f;->d()Lcom/xinzhu/overmind/client/hook/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xinzhu/overmind/client/hook/f;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static redirectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "redirectPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xinzhu/overmind/client/hook/f;->d()Lcom/xinzhu/overmind/client/hook/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xinzhu/overmind/client/hook/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VMCoreJava"

    invoke-static {v1, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/f;->d()Lcom/xinzhu/overmind/client/hook/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xinzhu/overmind/client/hook/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native waitForNativeDebugger()V
.end method
