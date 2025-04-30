.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$m;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
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

    const-string v0, "getRunningAppProcesses"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 6
    new-instance p2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p3

    invoke-direct {p2, v0, v1, v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
