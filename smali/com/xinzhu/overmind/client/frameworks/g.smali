.class public Lcom/xinzhu/overmind/client/frameworks/g;
.super Ljava/lang/Object;
.source "MindStorageManager.java"


# static fields
.field private static b:Lcom/xinzhu/overmind/client/frameworks/g;


# instance fields
.field private a:Lcom/xinzhu/overmind/server/os/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/frameworks/g;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/frameworks/g;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/frameworks/g;->b:Lcom/xinzhu/overmind/client/frameworks/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xinzhu/overmind/client/frameworks/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/frameworks/g;->b:Lcom/xinzhu/overmind/client/frameworks/g;

    return-object v0
.end method

.method private b()Lcom/xinzhu/overmind/server/os/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/g;->a:Lcom/xinzhu/overmind/server/os/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/g;->a:Lcom/xinzhu/overmind/server/os/d;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "storage_manager"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/os/d$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/os/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/g;->a:Lcom/xinzhu/overmind/server/os/d;

    .line 4
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/g;->b()Lcom/xinzhu/overmind/server/os/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/g;->b()Lcom/xinzhu/overmind/server/os/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/os/d;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

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

.method public d(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "packageName",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/g;->b()Lcom/xinzhu/overmind/server/os/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/os/d;->getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/os/storage/StorageVolume;

    return-object p1
.end method
