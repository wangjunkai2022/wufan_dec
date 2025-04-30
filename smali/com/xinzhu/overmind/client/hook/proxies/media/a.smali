.class public Lcom/xinzhu/overmind/client/hook/proxies/media/a;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "MediaRouterServiceStub.java"


# static fields
.field static final f:Ljava/lang/String; = "media_router"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "media_router"

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

    const-string v0, "media_router"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/haunted/android/media/b$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

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

    const-string p1, "media_router"

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/b;->m(Ljava/lang/String;)V

    return-void
.end method

.method protected k()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/b;->k()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "registerClientAsUser"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v3, "registerRouter2"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v3, "registerManager"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    return-void
.end method
