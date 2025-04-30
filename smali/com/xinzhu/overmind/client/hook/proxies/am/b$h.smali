.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$h;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method

.method private f()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private g()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$h;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "getContentProvider"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$h;->f()I

    move-result v0

    .line 2
    aget-object v1, p3, v0

    .line 3
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$h;->g()I

    move-result v2

    invoke-virtual {p0, p3, v2}, Lcom/xinzhu/overmind/client/hook/g;->e([Ljava/lang/Object;I)V

    .line 4
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 5
    check-cast v1, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    aput-object v1, p3, v0

    .line 8
    invoke-static {v1}, Lcom/xinzhu/overmind/client/f;->n(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v2

    :cond_1
    const-string v2, "settings"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "telephony"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "downloads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 13
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hook getContentProvider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/xinzhu/overmind/client/frameworks/f;->z(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    const-string v2, "provider"

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 15
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xinzhu/overmind/Overmind;->isInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    .line 16
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPid()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 17
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/xinzhu/overmind/client/frameworks/a;->k(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v4

    .line 18
    iget v5, v4, Lcom/xinzhu/overmind/entity/ClientConfig;->c:I

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPid()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 19
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/xinzhu/overmind/client/frameworks/a;->a(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object v5

    goto :goto_0

    :cond_4
    move-object v5, v3

    .line 20
    :goto_0
    iget-boolean v6, v4, Lcom/xinzhu/overmind/entity/ClientConfig;->i:Z

    if-eqz v6, :cond_5

    iget v4, v4, Lcom/xinzhu/overmind/entity/ClientConfig;->c:I

    invoke-static {v4}, Lcom/xinzhu/overmind/client/f;->c(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 21
    :cond_5
    iget v4, v4, Lcom/xinzhu/overmind/entity/ClientConfig;->c:I

    invoke-static {v4}, Lcom/xinzhu/overmind/client/f;->g(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, p3, v0

    .line 22
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$h;->g()I

    move-result v0

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    move-result v4

    invoke-static {v4}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p3, v0

    goto :goto_2

    :cond_6
    move-object v5, v3

    .line 23
    :goto_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    return-object v3

    .line 24
    :cond_7
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/s;->t(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;

    move-result-object p2

    const-string p3, "info"

    .line 25
    invoke-virtual {p2, p3}, Lcom/xinzhu/overmind/utils/s;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s;

    move-result-object p2

    .line 26
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/utils/s;->q(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;

    if-eqz v5, :cond_8

    .line 27
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/s;->t(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;

    move-result-object p2

    .line 28
    invoke-virtual {p2, v2}, Lcom/xinzhu/overmind/utils/s;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s;

    move-result-object p2

    new-instance p3, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;

    invoke-direct {p3}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;-><init>()V

    .line 29
    invoke-static {v5}, Lcom/xinzhu/haunted/android/content/g;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->b(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xinzhu/overmind/utils/s;->q(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;

    :cond_8
    return-object p1

    .line 30
    :cond_9
    :goto_3
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 31
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/s;->t(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;

    move-result-object p2

    .line 32
    invoke-virtual {p2, v2}, Lcom/xinzhu/overmind/utils/s;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s;

    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lcom/xinzhu/overmind/utils/s;->i()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 34
    instance-of p3, p2, Ljava/lang/reflect/Proxy;

    if-nez p3, :cond_a

    .line 35
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/s;->t(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;

    move-result-object p3

    .line 36
    invoke-virtual {p3, v2}, Lcom/xinzhu/overmind/utils/s;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s;

    move-result-object p3

    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;-><init>()V

    check-cast p2, Landroid/os/IInterface;

    .line 37
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->b(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/xinzhu/overmind/utils/s;->q(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    return-object p1

    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3

    .line 39
    :cond_b
    :goto_4
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 40
    invoke-static {p1, v1}, Lcom/xinzhu/overmind/client/hook/delegate/c;->update(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 41
    :cond_c
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
