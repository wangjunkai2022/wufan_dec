.class public final Lcom/xinzhu/overmind/utils/e;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    const/16 v0, 0x15

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 1

    const/16 v0, 0x16

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    const/16 v0, 0x17

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    const/16 v0, 0x18

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    const/16 v0, 0x19

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    const/16 v0, 0x1d

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 1

    const/16 v0, 0x1e

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 1

    const/16 v0, 0x1f

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 1

    const/16 v0, 0x21

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method private static k()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static l()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static m()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPPO"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 2

    const-string v0, "ro.build.version.emui"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/helpers/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "EmotionUI"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/xinzhu/haunted/meizu/security/a;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static p()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.huawei.system.BuildEx"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOsBrand"

    new-array v3, v0, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "harmony"

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public static q()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r()Z
    .locals 2

    const-string v0, "ro.miui.ui.version.name"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/helpers/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static s()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static t()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    move-result v0

    return v0
.end method

.method public static u()Z
    .locals 2

    const-string v0, "ro.vivo.os.build.display.id"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/helpers/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static v()Z
    .locals 1

    const/16 v0, 0x1a

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method public static w()Z
    .locals 1

    const/16 v0, 0x1b

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method public static x()Z
    .locals 1

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/e;->y(I)Z

    move-result v0

    return v0
.end method

.method private static y(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    if-ge v0, p0, :cond_1

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->k()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
