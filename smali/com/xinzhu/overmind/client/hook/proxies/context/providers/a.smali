.class public Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;
.super Lcom/xinzhu/overmind/client/hook/c;
.source "ContentProviderStub.java"

# interfaces
.implements Lcom/xinzhu/overmind/client/hook/proxies/context/providers/d;


# static fields
.field public static final f:Ljava/lang/String; = "ContentProviderStub"


# instance fields
.field private e:Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contentProviderProxy",
            "appPkg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->e:Landroid/os/IInterface;

    .line 2
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method

.method protected h()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->e:Landroid/os/IInterface;

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
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

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
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "asBinder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->e:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_2

    .line 3
    array-length p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 4
    aget-object v0, p3, p1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    aget-object v0, p3, p1

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p1

    .line 7
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    :try_start_0
    const-class p1, Landroid/content/AttributionSource;

    invoke-static {p3, p1}, Lcom/xinzhu/overmind/utils/helpers/a;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 9
    aget-object p1, p3, p1

    check-cast p1, Landroid/content/AttributionSource;

    .line 10
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fixAttributionSource(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_2
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->e:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method protected k()V
    .locals 0

    return-void
.end method
