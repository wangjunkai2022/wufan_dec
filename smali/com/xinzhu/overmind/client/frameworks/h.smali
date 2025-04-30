.class public Lcom/xinzhu/overmind/client/frameworks/h;
.super Ljava/lang/Object;
.source "MindUserManager.java"


# static fields
.field private static b:Lcom/xinzhu/overmind/client/frameworks/h;


# instance fields
.field private a:Lcom/xinzhu/overmind/server/user/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/frameworks/h;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/frameworks/h;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/frameworks/h;->b:Lcom/xinzhu/overmind/client/frameworks/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/xinzhu/overmind/client/frameworks/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/frameworks/h;->b:Lcom/xinzhu/overmind/client/frameworks/h;

    return-object v0
.end method

.method private e()Lcom/xinzhu/overmind/server/user/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/h;->a:Lcom/xinzhu/overmind/server/user/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/h;->a:Lcom/xinzhu/overmind/server/user/a;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "user_manager"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/a$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/user/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/h;->a:Lcom/xinzhu/overmind/server/user/a;

    .line 4
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/h;->e()Lcom/xinzhu/overmind/server/user/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/h;->e()Lcom/xinzhu/overmind/server/user/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/user/a;->createUser(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/h;->e()Lcom/xinzhu/overmind/server/user/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/user/a;->deleteUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/h;->e()Lcom/xinzhu/overmind/server/user/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/user/a;->exists(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/user/MindUserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/h;->e()Lcom/xinzhu/overmind/server/user/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xinzhu/overmind/server/user/a;->getUsers()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
