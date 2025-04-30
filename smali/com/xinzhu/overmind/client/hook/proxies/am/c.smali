.class public Lcom/xinzhu/overmind/client/hook/proxies/am/c;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "ActivityTaskManagerStub.java"


# static fields
.field public static final f:Ljava/lang/String; = "ActivityTaskManager"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "activity_task"

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

    const-string v0, "activity_task"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/haunted/android/app/m$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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

    const-string p1, "activity_task"

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/b;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/haunted/android/app/f;->d()Ljava/lang/Object;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/xinzhu/haunted/android/util/b;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/util/b;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/xinzhu/haunted/android/util/b;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method protected k()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;-><init>()V

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
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$r;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$r;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 10
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$o;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 11
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$q;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$q;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$s;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$s;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 13
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$p;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$p;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 14
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 15
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 16
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 18
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$i;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 19
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$j;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$j;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 20
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/b;

    const-string v1, "startAppLockService"

    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/client/hook/common/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    :cond_0
    return-void
.end method
