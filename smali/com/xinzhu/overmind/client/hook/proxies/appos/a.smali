.class public Lcom/xinzhu/overmind/client/hook/proxies/appos/a;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "AppOpsManagerStub.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "appops"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Ljava/lang/Object;
    .locals 1

    const-string v0, "appops"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/xinzhu/haunted/com/android/internal/app/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
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

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "appops"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    .line 2
    new-instance v0, Lcom/xinzhu/haunted/android/app/h;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/app/h;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/h;->c(Landroid/os/IInterface;)Z

    .line 3
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/client/hook/b;->m(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->d([Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/c;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected k()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/b;->k()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v1, "checkOperation"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v1, "noteOperation"

    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v1, "startOperation"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v1, "finishOperation"

    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v1, "checkAudioOperation"

    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/appos/a$a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "noteProxyOperation"

    invoke-direct {v0, p0, v5, v4}, Lcom/xinzhu/overmind/client/hook/proxies/appos/a$a;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/appos/a;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 8
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v4, "checkPackage"

    invoke-direct {v0, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 9
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v4, "getOpsForPackage"

    invoke-direct {v0, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 10
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v4, "getHistoricalOps"

    invoke-direct {v0, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 11
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v4, "getHistoricalOpsFromDiskRaw"

    invoke-direct {v0, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v4, "getUidOps"

    invoke-direct {v0, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 13
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v4, "setUidMode"

    invoke-direct {v0, v4, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 14
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v4, "setMode"

    invoke-direct {v0, v4, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 15
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v4, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v5, "resetAllModes"

    invoke-direct {v0, v5, v4, v1}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 16
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v1, "setAudioRestriction"

    invoke-direct {v0, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v1, "isOperationActive"

    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 18
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v1, "checkOperationRaw"

    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    return-void
.end method
