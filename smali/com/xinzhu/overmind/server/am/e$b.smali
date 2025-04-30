.class public abstract Lcom/xinzhu/overmind/server/am/e$b;
.super Landroid/os/Binder;
.source "IMindJobManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/am/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/am/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/am/e$b$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xinzhu.overmind.server.am.IMindJobManagerService"

.field static final TRANSACTION_cancel:I = 0x4

.field static final TRANSACTION_cancelAll:I = 0x3

.field static final TRANSACTION_queryJobRecord:I = 0x2

.field static final TRANSACTION_schedule:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xinzhu.overmind.server.am.IMindJobManagerService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/e;
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
    const-string v0, "com.xinzhu.overmind.server.am.IMindJobManagerService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/xinzhu/overmind/server/am/e;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/xinzhu/overmind/server/am/e;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/xinzhu/overmind/server/am/e$b$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/am/e$b$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xinzhu/overmind/server/am/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/am/e$b$a;->b:Lcom/xinzhu/overmind/server/am/e;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xinzhu/overmind/server/am/e;)Z
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
    sget-object v0, Lcom/xinzhu/overmind/server/am/e$b$a;->b:Lcom/xinzhu/overmind/server/am/e;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/xinzhu/overmind/server/am/e$b$a;->b:Lcom/xinzhu/overmind/server/am/e;

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.xinzhu.overmind.server.am.IMindJobManagerService"

    if-eq p1, v1, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 7
    invoke-interface {p0, p1, p4, p2}, Lcom/xinzhu/overmind/server/am/e;->cancel(Ljava/lang/String;II)I

    move-result p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 10
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 13
    invoke-interface {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/e;->cancelAll(Ljava/lang/String;I)V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 15
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 19
    invoke-interface {p0, p1, p4, p2}, Lcom/xinzhu/overmind/server/am/e;->queryJobRecord(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/JobRecord;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {p1, p3, v1}, Lcom/xinzhu/overmind/entity/JobRecord;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 24
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 26
    sget-object p1, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 27
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 28
    invoke-interface {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/e;->schedule(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;

    move-result-object p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 30
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {p1, p3, v1}, Landroid/app/job/JobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 32
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1
.end method
