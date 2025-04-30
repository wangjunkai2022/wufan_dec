.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$b;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "bindService"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
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
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->f([Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 2
    aget-object v1, p3, v0

    check-cast v1, Landroid/content/Intent;

    const/4 v2, 0x3

    .line 3
    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x4

    .line 4
    aget-object v4, p3, v3

    check-cast v4, Landroid/app/IServiceConnection;

    .line 5
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->f([Ljava/lang/Object;)V

    .line 6
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v5

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v2, v6}, Lcom/xinzhu/overmind/client/frameworks/f;->B(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$b;->f()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    .line 9
    aput-object v8, p3, v6

    .line 10
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v6

    if-nez v4, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 12
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v9

    .line 13
    invoke-virtual {v6, v1, v8, v2, v9}, Lcom/xinzhu/overmind/client/frameworks/a;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v4, :cond_2

    .line 14
    new-instance v6, Landroid/content/ComponentName;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v8, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lcom/xinzhu/overmind/client/hook/delegate/d;->createProxy(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)Landroid/app/IServiceConnection;

    move-result-object v4

    aput-object v4, p3, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 15
    aput-object v2, p3, v0

    .line 16
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/env/a;->e(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bindService failed and skip "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManagerStub"

    invoke-static {p2, p1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
