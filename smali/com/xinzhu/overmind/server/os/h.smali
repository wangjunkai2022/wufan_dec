.class public Lcom/xinzhu/overmind/server/os/h;
.super Lcom/xinzhu/overmind/server/os/d$b;
.source "MindStorageManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/c;


# static fields
.field private static sService:Lcom/xinzhu/overmind/server/os/h;


# instance fields
.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/os/h;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/os/h;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/os/h;->sService:Lcom/xinzhu/overmind/server/os/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/os/d$b;-><init>()V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/os/h;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/os/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/os/h;->sService:Lcom/xinzhu/overmind/server/os/h;

    return-object v0
.end method


# virtual methods
.method public getUriForFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/xinzhu/overmind/client/f;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/provider/FileProvider;->f(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result p2

    invoke-static {p2, p1}, Lcom/xinzhu/haunted/android/os/storage/c;->d(II)[Landroid/os/storage/StorageVolume;

    move-result-object p2

    .line 2
    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v1, p2, v0

    .line 3
    new-instance v2, Lcom/xinzhu/haunted/android/os/storage/d;

    invoke-direct {v2, v1}, Lcom/xinzhu/haunted/android/os/storage/d;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-static {p4}, Lcom/xinzhu/overmind/a;->E(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xinzhu/haunted/android/os/storage/d;->f(Ljava/io/File;)Z

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p4}, Lcom/xinzhu/overmind/a;->E(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xinzhu/haunted/android/os/storage/d;->e(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    new-array p1, p1, [Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
