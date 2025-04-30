.class Landroid/content/IIntentReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIntentReceiver.java"

# interfaces
.implements Landroid/content/IIntentReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IIntentReceiver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/content/IIntentReceiver;


# instance fields
.field private mRemote:Landroid/os/IBinder;


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
    iput-object p1, p0, Landroid/content/IIntentReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/IIntentReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.content.IIntentReceiver"

    return-object v0
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resultCode",
            "data",
            "extras",
            "ordered",
            "sticky",
            "sendingUser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v5, p4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_0
    const-string v1, "android.content.IIntentReceiver"

    .line 3
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v9, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move v3, p2

    .line 7
    invoke-virtual {v9, p2}, Landroid/os/Parcel;->writeInt(I)V

    move-object v4, p3

    .line 8
    invoke-virtual {v9, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {v5, v9, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p5, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 12
    :goto_2
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 13
    :goto_3
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p7

    .line 14
    invoke-virtual {v9, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    .line 15
    :try_start_1
    iget-object v6, v11, Landroid/content/IIntentReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v6, v1, v9, v10, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 16
    invoke-static {}, Landroid/content/IIntentReceiver$Stub;->getDefaultImpl()Landroid/content/IIntentReceiver;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 17
    invoke-static {}, Landroid/content/IIntentReceiver$Stub;->getDefaultImpl()Landroid/content/IIntentReceiver;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 19
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 20
    :cond_4
    :try_start_2
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v11, p0

    .line 23
    :goto_4
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 25
    throw v0
.end method
