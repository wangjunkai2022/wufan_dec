.class public Lcom/xinzhu/overmind/client/service/a;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/service/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Service;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/xinzhu/overmind/client/service/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/client/service/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "intent",
            "iBinder"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/service/a;->f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/xinzhu/overmind/client/service/a$b;

    invoke-direct {p1, p0}, Lcom/xinzhu/overmind/client/service/a$b;-><init>(Lcom/xinzhu/overmind/client/service/a;)V

    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Lcom/xinzhu/overmind/client/service/a$b;->e(Landroid/os/IBinder;)V

    .line 6
    :try_start_0
    new-instance p1, Lcom/xinzhu/overmind/client/service/a$a;

    invoke-direct {p1, p0, p2, v0}, Lcom/xinzhu/overmind/client/service/a$a;-><init>(Lcom/xinzhu/overmind/client/service/a;Landroid/os/IBinder;Landroid/content/Intent$FilterComparison;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(Landroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/client/service/a$b;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/service/a$b;->a()I

    move-result p1

    if-gtz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/content/Intent;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/service/a;->f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/service/a$b;->b()I

    move-result p1

    return p1
.end method

.method public e(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/service/a;->f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/service/a$b;->c()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/client/service/a$b;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/xinzhu/overmind/client/service/a$b;

    invoke-direct {p1, p0}, Lcom/xinzhu/overmind/client/service/a$b;-><init>(Lcom/xinzhu/overmind/client/service/a;)V

    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/client/service/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public g()Landroid/app/Service;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/service/a;->a:Landroid/app/Service;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/client/service/a;->d:I

    return v0
.end method

.method public i(Landroid/content/Intent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/service/a;->f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/service/a$b;->c()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Landroid/content/Intent;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/service/a;->f(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/service/a$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/service/a$b;->d()I

    move-result p1

    return p1
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/client/service/a;->c:Z

    return v0
.end method

.method public l(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rebind"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/xinzhu/overmind/client/service/a;->c:Z

    return-void
.end method

.method public m(Landroid/app/Service;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/service/a;->a:Landroid/app/Service;

    return-void
.end method

.method public n(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/xinzhu/overmind/client/service/a;->d:I

    return-void
.end method
