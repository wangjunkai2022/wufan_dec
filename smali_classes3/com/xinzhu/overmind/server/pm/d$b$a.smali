.class Lcom/xinzhu/overmind/server/pm/d$b$a;
.super Ljava/lang/Object;
.source "IMindPackageManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/pm/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static b:Lcom/xinzhu/overmind/server/pm/d;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteUser(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xinzhu/overmind/server/pm/d;->deleteUser(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15
    throw p1
.end method

.method public doTransferInstalls()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/xinzhu/overmind/server/pm/d;->doTransferInstalls()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14
    throw v2
.end method

.method public doTransferInstallsOnlyForMainPackage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/xinzhu/overmind/server/pm/d;->doTransferInstallsOnlyForMainPackage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14
    throw v2
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 14
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    sget-object p1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 17
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 21
    throw p1
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    sget-object p1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 19
    throw p1
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentName",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 13
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 19
    throw p1
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12
    sget-object p1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17
    throw p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12
    sget-object p1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17
    throw p1
.end method

.method public getInstalledPackagesAsUser(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/entity/pm/InstalledPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xinzhu/overmind/server/pm/d;->getInstalledPackagesAsUser(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11
    sget-object p1, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16
    throw p1
.end method

.method public getMindPackageSettings(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xinzhu/overmind/server/pm/d;->getMindPackageSettings(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    sget-object p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17
    throw p1
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    sget-object p1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 19
    throw p1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xinzhu/overmind/server/pm/d;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16
    throw p1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 14
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    sget-object p1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 17
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 21
    throw p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 14
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    sget-object p1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 17
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 21
    throw p1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 14
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    sget-object p1, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 17
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 21
    throw p1
.end method

.method public installPackageAsExist(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->installPackageAsExist(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    sget-object p1, Lcom/xinzhu/overmind/entity/pm/InstallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/entity/pm/InstallResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 18
    throw p1
.end method

.method public installPackageAsUser(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "option",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {p2, v0, v2}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->installPackageAsUser(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 14
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    sget-object p1, Lcom/xinzhu/overmind/entity/pm/InstallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/entity/pm/InstallResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 17
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 21
    throw p1
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->isInstalled(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 13
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17
    throw p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    return-object v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 15
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16
    sget-object p1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 21
    throw p1
.end method

.method public queryContentProviders(Ljava/lang/String;III)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processName",
            "uid",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14
    sget-object p1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 19
    throw p1
.end method

.method public queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 15
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16
    sget-object p1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 21
    throw p1
.end method

.method public queryIntentServices(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->queryIntentServices(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 15
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16
    sget-object p1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 21
    throw p1
.end method

.method public resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 15
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    sget-object p1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 18
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    throw p1
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "authority",
            "flag",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    sget-object p1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 19
    throw p1
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 15
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    sget-object p1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 18
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    throw p1
.end method

.method public resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 15
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    sget-object p1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 18
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    throw p1
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentName",
            "newState",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 15
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 20
    throw p1
.end method

.method public setMindPackageRunWithPlugin(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "runWithPlugin"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->setMindPackageRunWithPlugin(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16
    throw p1
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xinzhu/overmind/server/pm/d;->uninstallPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15
    throw p1
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/d$b;->getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->uninstallPackageAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16
    throw p1
.end method
