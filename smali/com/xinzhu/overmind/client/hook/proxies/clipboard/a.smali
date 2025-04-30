.class public Lcom/xinzhu/overmind/client/hook/proxies/clipboard/a;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "ClipboardStub.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "clipboard"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private static n()Landroid/os/IInterface;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2
    new-instance v1, Lcom/xinzhu/haunted/android/content/d;

    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/content/d;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/content/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/content/d;->c()Landroid/os/IInterface;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/xinzhu/haunted/android/content/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/xinzhu/haunted/android/content/d;->d()Landroid/os/IInterface;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Ljava/lang/Object;
    .locals 1

    const-string v0, "clipboard"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/haunted/android/content/i$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 2
    new-instance v0, Lcom/xinzhu/haunted/android/content/d;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/content/d;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/content/d;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/content/d;->e(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/xinzhu/haunted/android/content/d;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    invoke-static {p1}, Lcom/xinzhu/haunted/android/content/d;->f(Landroid/os/IInterface;)Z

    .line 7
    :cond_1
    :goto_0
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
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/c;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected k()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/b;->k()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    :goto_0
    const-string v3, "setPrimaryClip"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    :goto_1
    const-string v3, "clearPrimaryClip"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    goto :goto_2

    :cond_2
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    :goto_2
    const-string v3, "getPrimaryClip"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    goto :goto_3

    :cond_3
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    :goto_3
    const-string v3, "getPrimaryClipDescription"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    goto :goto_4

    :cond_4
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    :goto_4
    const-string v3, "addPrimaryClipChangedListener"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    goto :goto_5

    :cond_5
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    :goto_5
    const-string v3, "removePrimaryClipChangedListener"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 8
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    goto :goto_6

    :cond_6
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    :goto_6
    const-string v3, "hasClipboardText"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    return-void
.end method
