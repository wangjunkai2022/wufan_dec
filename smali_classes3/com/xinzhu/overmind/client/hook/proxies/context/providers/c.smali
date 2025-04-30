.class public Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;
.super Lcom/xinzhu/overmind/client/hook/c;
.source "SettingsProviderStub.java"

# interfaces
.implements Lcom/xinzhu/overmind/client/hook/proxies/context/providers/d;


# static fields
.field private static final f:I = 0x0

.field private static final g:I = 0x1


# instance fields
.field private e:Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/c;-><init>()V

    return-void
.end method

.method private static l(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "name"

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "value"

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentProviderProxy",
            "appPkg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->e:Landroid/os/IInterface;

    .line 2
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method

.method protected h()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->e:Landroid/os/IInterface;

    return-object v0
.end method

.method protected i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseInvocation",
            "proxyInvocation"
        }
    .end annotation

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proxy",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "asBinder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->e:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_2

    .line 3
    array-length p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 4
    aget-object v0, p3, p1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    aget-object v0, p3, p1

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p1

    .line 7
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    :try_start_0
    const-class p1, Landroid/content/AttributionSource;

    invoke-static {p3, p1}, Lcom/xinzhu/overmind/utils/helpers/a;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 9
    aget-object p1, p3, p1

    check-cast p1, Landroid/content/AttributionSource;

    .line 10
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fixAttributionSource(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    const-string v0, "query"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->e:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    array-length p1, p3

    add-int/lit8 p1, p1, -0x4

    .line 16
    aget-object p1, p3, p1

    check-cast p1, Landroid/net/Uri;

    .line 17
    sget-object v0, Lcom/xinzhu/overmind/client/hook/c;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content provider <query> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://settings/config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->e:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :cond_5
    array-length p1, p3

    add-int/lit8 p1, p1, -0x4

    add-int/lit8 v0, p1, 0x1

    .line 21
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p1, p1, 0x2

    .line 22
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 23
    sget-object v2, Lcom/xinzhu/overmind/client/hook/c;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content provider <call> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GET_"

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "user_setup_complete"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "1"

    if-eqz v0, :cond_6

    .line 26
    invoke-static {p1, v2}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->l(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "install_non_market_apps"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    invoke-static {p1, v2}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->l(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "android_id"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/b;->a()Lcom/xinzhu/overmind/client/frameworks/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/frameworks/b;->b()Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 31
    iget-object p2, v0, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->l(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v0, "adb_enabled"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "development_settings_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_9
    const-string p2, "0"

    .line 33
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->l(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_a
    const-string p1, "PUT_"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "secure"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-object v1

    :cond_b
    const-string p1, "global"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v1

    :cond_c
    const-string p1, "system"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-object v1

    :cond_d
    const-string p1, "LIST_"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-object v1

    .line 39
    :cond_e
    :try_start_1
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->e:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/SecurityException;

    if-nez p2, :cond_10

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/IllegalArgumentException;

    if-eqz p2, :cond_f

    goto :goto_1

    .line 41
    :cond_f
    throw p1

    :cond_10
    :goto_1
    return-object v1
.end method

.method protected k()V
    .locals 0

    return-void
.end method
