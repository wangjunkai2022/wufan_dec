.class public Lcom/xinzhu/overmind/client/hook/proxies/display/a;
.super Lcom/xinzhu/overmind/client/hook/c;
.source "DisplayManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/display/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/hardware/display/a;->c()Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/xinzhu/haunted/android/hardware/display/a;

    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/hardware/display/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/hardware/display/a;->d()Landroid/os/IInterface;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->g()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected h()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/hardware/display/a;

    invoke-static {}, Lcom/xinzhu/haunted/android/hardware/display/a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/hardware/display/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/hardware/display/a;->d()Landroid/os/IInterface;

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

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/hardware/display/a;->c()Ljava/lang/Object;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/xinzhu/haunted/android/hardware/display/a;

    invoke-direct {p2, p1}, Lcom/xinzhu/haunted/android/hardware/display/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    invoke-virtual {p2, p1}, Lcom/xinzhu/haunted/android/hardware/display/a;->e(Landroid/os/IInterface;)Z

    return-void
.end method

.method protected k()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/display/a$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/display/a$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    return-void
.end method
