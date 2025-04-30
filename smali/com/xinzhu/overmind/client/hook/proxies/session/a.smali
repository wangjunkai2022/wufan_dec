.class public Lcom/xinzhu/overmind/client/hook/proxies/session/a;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "MediaSessionManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/session/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "media_session"

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

    const-string v0, "media_session"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/haunted/android/media/session/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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

    const-string p1, "media_session"

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/b;->m(Ljava/lang/String;)V

    return-void
.end method

.method protected k()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/b;->k()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/session/a$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/session/a$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    return-void
.end method
