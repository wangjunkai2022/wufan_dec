.class public Lcom/xinzhu/overmind/client/hook/proxies/os/a;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "BatteryStatsStub.java"


# static fields
.field static final f:Ljava/lang/String; = "batterystats"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "batterystats"

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

    const-string v0, "batterystats"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/haunted/com/android/internal/app/b$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "systemhealth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/health/SystemHealthManager;

    .line 3
    new-instance v0, Lcom/xinzhu/haunted/android/os/health/a;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/os/health/a;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/health/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    check-cast p2, Landroid/os/IInterface;

    invoke-virtual {v0, p2}, Lcom/xinzhu/haunted/android/os/health/a;->c(Landroid/os/IInterface;)Z

    :cond_0
    const-string p1, "batterystats"

    .line 6
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/b;->m(Ljava/lang/String;)V

    return-void
.end method

.method protected k()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/b;->k()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    const-string v1, "takeUidSnapshot"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    return-void
.end method
