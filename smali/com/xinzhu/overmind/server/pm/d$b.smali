.class public abstract Lcom/xinzhu/overmind/server/pm/d$b;
.super Landroid/os/Binder;
.source "IMindPackageManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/pm/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/d$b$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

.field static final TRANSACTION_deleteUser:I = 0x15

.field static final TRANSACTION_doTransferInstalls:I = 0x1c

.field static final TRANSACTION_doTransferInstallsOnlyForMainPackage:I = 0x1d

.field static final TRANSACTION_getActivityInfo:I = 0x9

.field static final TRANSACTION_getApplicationInfo:I = 0x5

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x19

.field static final TRANSACTION_getInstalledApplications:I = 0xb

.field static final TRANSACTION_getInstalledPackages:I = 0xc

.field static final TRANSACTION_getInstalledPackagesAsUser:I = 0x17

.field static final TRANSACTION_getMindPackageSettings:I = 0x1a

.field static final TRANSACTION_getPackageInfo:I = 0x6

.field static final TRANSACTION_getPackagesForUid:I = 0x1e

.field static final TRANSACTION_getProviderInfo:I = 0xa

.field static final TRANSACTION_getReceiverInfo:I = 0x8

.field static final TRANSACTION_getServiceInfo:I = 0x7

.field static final TRANSACTION_installPackageAsExist:I = 0x12

.field static final TRANSACTION_installPackageAsUser:I = 0x11

.field static final TRANSACTION_isInstalled:I = 0x16

.field static final TRANSACTION_queryBroadcastReceivers:I = 0xf

.field static final TRANSACTION_queryContentProviders:I = 0x10

.field static final TRANSACTION_queryIntentActivities:I = 0xd

.field static final TRANSACTION_queryIntentServices:I = 0xe

.field static final TRANSACTION_resolveActivity:I = 0x2

.field static final TRANSACTION_resolveContentProvider:I = 0x3

.field static final TRANSACTION_resolveIntent:I = 0x4

.field static final TRANSACTION_resolveService:I = 0x1

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x18

.field static final TRANSACTION_setMindPackageRunWithPlugin:I = 0x1b

.field static final TRANSACTION_uninstallPackage:I = 0x14

.field static final TRANSACTION_uninstallPackageAsUser:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/pm/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/xinzhu/overmind/server/pm/d;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/xinzhu/overmind/server/pm/d;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/d$b$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/pm/d$b$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xinzhu/overmind/server/pm/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/d$b$a;->b:Lcom/xinzhu/overmind/server/pm/d;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xinzhu/overmind/server/pm/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/d$b$a;->b:Lcom/xinzhu/overmind/server/pm/d;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/xinzhu/overmind/server/pm/d$b$a;->b:Lcom/xinzhu/overmind/server/pm/d;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xinzhu.overmind.server.pm.IMindPackageManagerService"

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    invoke-interface {p0, p1}, Lcom/xinzhu/overmind/server/pm/d;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1

    .line 7
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Lcom/xinzhu/overmind/server/pm/d;->doTransferInstallsOnlyForMainPackage()V

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 10
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lcom/xinzhu/overmind/server/pm/d;->doTransferInstalls()V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 13
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 16
    :cond_0
    invoke-interface {p0, p1, v3}, Lcom/xinzhu/overmind/server/pm/d;->setMindPackageRunWithPlugin(Ljava/lang/String;Z)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 18
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-interface {p0, p1}, Lcom/xinzhu/overmind/server/pm/d;->getMindPackageSettings(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    invoke-virtual {p1, p3, v1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 25
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 28
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 29
    invoke-interface {p0, v0, p1}, Lcom/xinzhu/overmind/server/pm/d;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 32
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 34
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 35
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 38
    invoke-interface {p0, v0, p1, p4, p2}, Lcom/xinzhu/overmind/server/pm/d;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 40
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 42
    invoke-interface {p0, p1}, Lcom/xinzhu/overmind/server/pm/d;->getInstalledPackagesAsUser(I)Ljava/util/List;

    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 45
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 48
    invoke-interface {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->isInstalled(Ljava/lang/String;I)Z

    move-result p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 51
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 53
    invoke-interface {p0, p1}, Lcom/xinzhu/overmind/server/pm/d;->deleteUser(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 55
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-interface {p0, p1}, Lcom/xinzhu/overmind/server/pm/d;->uninstallPackage(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 59
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 62
    invoke-interface {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->uninstallPackageAsUser(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 64
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 67
    invoke-interface {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->installPackageAsExist(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 69
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {p1, p3, v1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 72
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 75
    sget-object p4, Lcom/xinzhu/overmind/entity/pm/InstallOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 76
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 77
    invoke-interface {p0, p1, v0, p2}, Lcom/xinzhu/overmind/server/pm/d;->installPackageAsUser(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 79
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p1, p3, v1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 81
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 82
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 87
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/xinzhu/overmind/server/pm/d;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 90
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 92
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 93
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 96
    invoke-interface {p0, v0, p1, p4, p2}, Lcom/xinzhu/overmind/server/pm/d;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 99
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 101
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 102
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 105
    invoke-interface {p0, v0, p1, p4, p2}, Lcom/xinzhu/overmind/server/pm/d;->queryIntentServices(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 108
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 110
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 111
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 114
    invoke-interface {p0, v0, p1, p4, p2}, Lcom/xinzhu/overmind/server/pm/d;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 117
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 120
    invoke-interface {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 123
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 126
    invoke-interface {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p1

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 129
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 131
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 132
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 134
    invoke-interface {p0, v0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 136
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 138
    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 139
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 141
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 142
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 144
    invoke-interface {p0, v0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_d

    .line 146
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 148
    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 149
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    .line 151
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 152
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 154
    invoke-interface {p0, v0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 156
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 158
    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 159
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 161
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 162
    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 164
    invoke-interface {p0, v0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_11

    .line 166
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 168
    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 169
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 173
    invoke-interface {p0, p1, p4, p2}, Lcom/xinzhu/overmind/server/pm/d;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_12

    .line 175
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 177
    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 178
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 182
    invoke-interface {p0, p1, p4, p2}, Lcom/xinzhu/overmind/server/pm/d;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_13

    .line 184
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 186
    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    .line 187
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14

    .line 189
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 190
    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 193
    invoke-interface {p0, v0, p1, p4, p2}, Lcom/xinzhu/overmind/server/pm/d;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_15

    .line 195
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 197
    :cond_15
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    .line 198
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 202
    invoke-interface {p0, p1, p4, p2}, Lcom/xinzhu/overmind/server/pm/d;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_16

    .line 204
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 206
    :cond_16
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v1

    .line 207
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17

    .line 209
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 210
    :cond_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 213
    invoke-interface {p0, v0, p1, p4, p2}, Lcom/xinzhu/overmind/server/pm/d;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_18

    .line 215
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 217
    :cond_18
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v1

    .line 218
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_19

    .line 220
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 221
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 224
    invoke-interface {p0, v0, p1, p4, p2}, Lcom/xinzhu/overmind/server/pm/d;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1a

    .line 226
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 228
    :cond_1a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v1

    .line 229
    :cond_1b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
