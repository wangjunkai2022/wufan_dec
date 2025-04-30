.class public Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$i;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$p;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$f;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$g;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$o;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$t;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$u;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$q;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$r;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$d;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$e;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$k;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$n;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$j;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$l;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$m;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$a;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$b;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$c;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$w;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$v;,
        Lcom/xinzhu/overmind/client/hook/proxies/am/b$h;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "ActivityManagerStub"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    move-result-object v0

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
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/haunted/android/app/l$b;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
            "base",
            "proxy"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/haunted/android/app/e;->d()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->d()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    new-instance v0, Lcom/xinzhu/haunted/android/util/b;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/util/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/xinzhu/haunted/android/util/b;->e(Ljava/lang/Object;)Z

    const-string p1, "activity"

    .line 6
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/b;->m(Ljava/lang/String;)V

    return-void
.end method

.method protected k()V
    .locals 4

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$h;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$h;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$v;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$v;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$w;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$w;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$m;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$m;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 8
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$l;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$l;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 9
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$n;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$n;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 10
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$k;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$k;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 11
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$e;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 13
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$r;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$r;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 14
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$q;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$q;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 15
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$u;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$u;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 16
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$s;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$t;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$t;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 18
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$o;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 19
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "checkUriPermission"

    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 20
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$f;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 21
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$g;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 22
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$p;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$p;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 23
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    const-string v2, "setServiceForeground"

    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 24
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getPackageProcessState"

    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 25
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v3, "getHistoricalProcessExitReasons"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 26
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 27
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 28
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 29
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 30
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 31
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 32
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$f;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 33
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$g;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 34
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$r;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$r;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 35
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$o;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 36
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$q;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$q;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 37
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$s;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$s;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 38
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$p;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$p;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 39
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 40
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 41
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 42
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 43
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$i;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 44
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$j;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$j;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 45
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$i;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 46
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$j;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$j;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 48
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    :cond_0
    return-void
.end method
