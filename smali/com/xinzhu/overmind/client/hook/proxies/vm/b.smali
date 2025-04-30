.class public Lcom/xinzhu/overmind/client/hook/proxies/vm/b;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "WindowSessionStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/vm/b$b;,
        Lcom/xinzhu/overmind/client/hook/proxies/vm/b$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "WindowSessionStub"


# instance fields
.field private f:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;-><init>(Landroid/os/IBinder;)V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/vm/b;->f:Landroid/os/IInterface;

    return-void
.end method

.method public static n(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutParams"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f6

    const/16 v2, 0x7d2

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d3

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d6

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7da

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/c;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/vm/b;->f:Landroid/os/IInterface;

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
    .locals 2
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

    if-eqz p3, :cond_0

    .line 1
    array-length v0, p3

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {p3, v0}, Lcom/xinzhu/overmind/utils/helpers/a;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    aget-object v1, p3, v0

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 4
    invoke-static {v1}, Lcom/xinzhu/overmind/client/hook/proxies/vm/b;->n(Landroid/view/WindowManager$LayoutParams;)V

    .line 5
    aput-object v1, p3, v0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/c;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected k()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/b;->k()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/vm/b$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/vm/b$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/vm/b$b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/vm/b$b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    return-void
.end method
