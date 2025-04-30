.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$v;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
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

    const-string v0, "startService"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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

    const/4 v0, 0x1

    .line 1
    aget-object v1, p3, v0

    check-cast v1, Landroid/content/Intent;

    const/4 v2, 0x2

    .line 2
    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    aget-object v4, p3, v3

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 4
    aget-object v4, p3, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, p3, v3

    .line 6
    :cond_0
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->f([Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v5

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/xinzhu/overmind/client/frameworks/f;->B(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 8
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/env/a;->e(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startService failed and skip "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManagerStub"

    invoke-static {p2, p1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 11
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v5

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v6

    invoke-virtual {v5, v1, v2, v6}, Lcom/xinzhu/overmind/client/frameworks/a;->startService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 12
    aput-object v1, p3, v0

    .line 13
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    if-eqz p1, :cond_3

    .line 14
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p3, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v4
.end method
