.class public Lcom/xinzhu/overmind/client/hook/proxies/am/a;
.super Lcom/xinzhu/overmind/client/hook/c;
.source "ActivityClientControllerStub.java"


# static fields
.field public static e:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

.method protected h()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/b;->c()Landroid/os/IInterface;

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
    invoke-static {}, Lcom/xinzhu/haunted/android/app/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Lcom/xinzhu/haunted/android/util/b;

    invoke-static {}, Lcom/xinzhu/haunted/android/app/b;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/util/b;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/xinzhu/haunted/android/util/b;->e(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/xinzhu/haunted/android/app/b$a;

    invoke-static {}, Lcom/xinzhu/haunted/android/app/b;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/b$a;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/app/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p2

    check-cast v0, Landroid/os/IInterface;

    invoke-virtual {p1, v0}, Lcom/xinzhu/haunted/android/app/b$a;->c(Landroid/os/IInterface;)Z

    .line 7
    :cond_0
    check-cast p2, Landroid/os/IInterface;

    sput-object p2, Lcom/xinzhu/overmind/client/hook/proxies/am/a;->e:Landroid/os/IInterface;

    :cond_1
    return-void
.end method

.method protected k()V
    .locals 3

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$f;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 8
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$g;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 9
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 10
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 11
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "startAppLockService"

    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    :cond_0
    return-void
.end method
