.class public Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "AccountManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c0;,
        Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "AccountManagerStub"

.field private static final g:Lcom/xinzhu/overmind/client/frameworks/accounts/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->get()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->g:Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/accounts/c;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/accounts/c;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/accounts/c;->g()Lcom/xinzhu/haunted/android/accounts/d;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/haunted/android/accounts/d;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic n()Lcom/xinzhu/overmind/client/frameworks/accounts/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->g:Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/accounts/c;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/accounts/c;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/accounts/c;->g()Lcom/xinzhu/haunted/android/accounts/d;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/haunted/android/accounts/d;->a:Ljava/lang/Object;

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
    new-instance p1, Lcom/xinzhu/haunted/android/accounts/c;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/accounts/c;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/xinzhu/haunted/android/accounts/d;

    invoke-direct {v0, p2}, Lcom/xinzhu/haunted/android/accounts/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/xinzhu/haunted/android/accounts/c;->i(Lcom/xinzhu/haunted/android/accounts/d;)Z

    .line 3
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/accounts/c;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/accounts/c;->e()V

    :cond_0
    const-string p1, "account"

    .line 5
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/b;->m(Ljava/lang/String;)V

    return-void
.end method

.method protected k()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/b;->k()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 8
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 9
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 10
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 11
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 13
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 14
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 15
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 16
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 18
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 19
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 20
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$r0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 21
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$s0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 22
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 23
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$t0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 24
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 25
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 26
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 27
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 28
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$z0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 29
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$l;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 30
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 31
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 32
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 33
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 34
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$b0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 35
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$n0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 36
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 37
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 38
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 39
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$a0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 40
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$v0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 42
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 43
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$m;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 44
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$u0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 45
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$g0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 46
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$y;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 48
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 49
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 50
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 51
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$q;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 52
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$j0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 53
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$x0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 54
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$d0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 55
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 56
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h0;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$h0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    :cond_0
    return-void
.end method
