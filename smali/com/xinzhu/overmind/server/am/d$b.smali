.class public abstract Lcom/xinzhu/overmind/server/am/d$b;
.super Landroid/os/Binder;
.source "IMindActivityManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/am/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/am/d$b$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xinzhu.overmind.server.am.IMindActivityManagerService"

.field static final TRANSACTION_acquireContentProviderClient:I = 0xf

.field static final TRANSACTION_bindService:I = 0xa

.field static final TRANSACTION_findPendingIntent:I = 0x1b

.field static final TRANSACTION_findProcessRecordByPid:I = 0x1c

.field static final TRANSACTION_getCallingActivity:I = 0x17

.field static final TRANSACTION_getCallingPackage:I = 0x18

.field static final TRANSACTION_getLaunchedFromPackage:I = 0x1e

.field static final TRANSACTION_getLaunchedFromUid:I = 0x1d

.field static final TRANSACTION_getTaskInfo:I = 0x1f

.field static final TRANSACTION_initProcess:I = 0x1

.field static final TRANSACTION_onActivityCreated:I = 0x12

.field static final TRANSACTION_onActivityDestroyed:I = 0x14

.field static final TRANSACTION_onActivityResumed:I = 0x13

.field static final TRANSACTION_onFinishActivity:I = 0x15

.field static final TRANSACTION_onFinishActivityAffinity:I = 0x16

.field static final TRANSACTION_onServiceDestroy:I = 0xe

.field static final TRANSACTION_onServiceUnbind:I = 0xd

.field static final TRANSACTION_onStartCommand:I = 0xc

.field static final TRANSACTION_peekService:I = 0x11

.field static final TRANSACTION_registerPendingIntent:I = 0x19

.field static final TRANSACTION_restartProcess:I = 0x2

.field static final TRANSACTION_sendBroadcast:I = 0x10

.field static final TRANSACTION_startActivities:I = 0x6

.field static final TRANSACTION_startActivity:I = 0x3

.field static final TRANSACTION_startActivityAms:I = 0x5

.field static final TRANSACTION_startActivityFromExistTask:I = 0x4

.field static final TRANSACTION_startService:I = 0x8

.field static final TRANSACTION_stopPackage:I = 0x7

.field static final TRANSACTION_stopService:I = 0x9

.field static final TRANSACTION_unbindService:I = 0xb

.field static final TRANSACTION_unregisterPendingIntent:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xinzhu.overmind.server.am.IMindActivityManagerService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/d;
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
    const-string v0, "com.xinzhu.overmind.server.am.IMindActivityManagerService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/xinzhu/overmind/server/am/d;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/xinzhu/overmind/server/am/d;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/xinzhu/overmind/server/am/d$b$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/am/d$b$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xinzhu/overmind/server/am/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/am/d$b$a;->b:Lcom/xinzhu/overmind/server/am/d;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xinzhu/overmind/server/am/d;)Z
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
    sget-object v0, Lcom/xinzhu/overmind/server/am/d$b$a;->b:Lcom/xinzhu/overmind/server/am/d;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/xinzhu/overmind/server/am/d$b$a;->b:Lcom/xinzhu/overmind/server/am/d;

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
    .locals 15
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

    move-object v10, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v11, p3

    const v2, 0x5f4e5446

    const/4 v12, 0x1

    const-string v3, "com.xinzhu.overmind.server.am.IMindActivityManagerService"

    if-eq v0, v2, :cond_19

    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->getTaskInfo(I)Lcom/xinzhu/overmind/server/am/MindTaskInfo;

    move-result-object v0

    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {v0, v11, v12}, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v12

    .line 9
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 11
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 14
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 16
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    .line 17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 19
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->findProcessRecordByPid(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v0

    .line 22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    invoke-virtual {v0, v11, v12}, Lcom/xinzhu/overmind/server/ProcessRecord;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v12

    .line 26
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 28
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->findPendingIntent(Landroid/os/IBinder;)Lcom/xinzhu/overmind/entity/PendingIntentRecord;

    move-result-object v0

    .line 29
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {v0, v11, v12}, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v12

    .line 33
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 35
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->unregisterPendingIntent(Landroid/os/IBinder;)V

    .line 36
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 37
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    sget-object v0, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/xinzhu/overmind/entity/PendingIntentRecord;

    .line 40
    :cond_3
    invoke-interface {p0, v4}, Lcom/xinzhu/overmind/server/am/d;->registerPendingIntent(Lcom/xinzhu/overmind/entity/PendingIntentRecord;)V

    .line 41
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 42
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 44
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 47
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 49
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {v0, v11, v12}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 53
    :cond_4
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v12

    .line 54
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 56
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->onFinishActivityAffinity(Landroid/os/IBinder;)V

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 58
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 60
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->onFinishActivity(Landroid/os/IBinder;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 62
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->onActivityDestroyed(Landroid/os/IBinder;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 66
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 68
    invoke-interface {p0, v0}, Lcom/xinzhu/overmind/server/am/d;->onActivityResumed(Landroid/os/IBinder;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 70
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 74
    invoke-interface {p0, v0, v2, v1}, Lcom/xinzhu/overmind/server/am/d;->onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 76
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 79
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    invoke-interface {p0, v4, v0, v1}, Lcom/xinzhu/overmind/server/am/d;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v12

    .line 84
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 87
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    invoke-interface {p0, v4, v0, v1}, Lcom/xinzhu/overmind/server/am/d;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7

    .line 91
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 93
    :cond_7
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v12

    .line 94
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 96
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/ProviderInfo;

    .line 97
    :cond_8
    invoke-interface {p0, v4}, Lcom/xinzhu/overmind/server/am/d;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object v0

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v12

    .line 100
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 102
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 103
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    invoke-interface {p0, v4, v0}, Lcom/xinzhu/overmind/server/am/d;->onServiceDestroy(Landroid/content/Intent;I)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 106
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 108
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 109
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    invoke-interface {p0, v4, v0}, Lcom/xinzhu/overmind/server/am/d;->onServiceUnbind(Landroid/content/Intent;I)Lcom/xinzhu/overmind/entity/UnbindRecord;

    move-result-object v0

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    .line 112
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {v0, v11, v12}, Lcom/xinzhu/overmind/entity/UnbindRecord;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 114
    :cond_b
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v12

    .line 115
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 117
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 118
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    invoke-interface {p0, v4, v0}, Lcom/xinzhu/overmind/server/am/d;->onStartCommand(Landroid/content/Intent;I)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 121
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    invoke-interface {p0, v0, v1}, Lcom/xinzhu/overmind/server/am/d;->unbindService(Landroid/os/IBinder;I)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 126
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 129
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    invoke-interface {p0, v4, v0, v3, v1}, Lcom/xinzhu/overmind/server/am/d;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e

    .line 134
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 136
    :cond_e
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v12

    .line 137
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 139
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 140
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    invoke-interface {p0, v4, v0, v1}, Lcom/xinzhu/overmind/server/am/d;->stopService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_10

    .line 144
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 146
    :cond_10
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v12

    .line 147
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 149
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 150
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    invoke-interface {p0, v4, v0, v1}, Lcom/xinzhu/overmind/server/am/d;->startService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_12

    .line 154
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 156
    :cond_12
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v12

    .line 157
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    invoke-interface {p0, v0, v1}, Lcom/xinzhu/overmind/server/am/d;->stopPackage(Ljava/lang/String;I)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 162
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/content/Intent;

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 169
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v8, v0

    goto :goto_9

    :cond_13
    move-object v8, v4

    :goto_9
    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    .line 170
    invoke-interface/range {v0 .. v6}, Lcom/xinzhu/overmind/server/am/d;->startActivities(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result v0

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 173
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 177
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object v5, v0

    goto :goto_a

    :cond_14
    move-object v5, v4

    .line 178
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 184
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v14, v0

    goto :goto_b

    :cond_15
    move-object v14, v4

    :goto_b
    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    move v8, v13

    move-object v9, v14

    .line 185
    invoke-interface/range {v0 .. v9}, Lcom/xinzhu/overmind/server/am/d;->startActivityAms(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 188
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 190
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 191
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    invoke-interface {p0, v4, v0}, Lcom/xinzhu/overmind/server/am/d;->startActivityFromExistTask(Landroid/content/Intent;I)I

    move-result v0

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 195
    :pswitch_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 197
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 198
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    invoke-interface {p0, v4, v0}, Lcom/xinzhu/overmind/server/am/d;->startActivity(Landroid/content/Intent;I)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 201
    :pswitch_1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    invoke-interface {p0, v0, v2, v1}, Lcom/xinzhu/overmind/server/am/d;->restartProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 207
    :pswitch_1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    invoke-interface {p0, v0, v3, v1}, Lcom/xinzhu/overmind/server/am/d;->initProcess(Ljava/lang/String;Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_18

    .line 213
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {v0, v11, v12}, Lcom/xinzhu/overmind/entity/ClientConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 215
    :cond_18
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v12

    .line 216
    :cond_19
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
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
