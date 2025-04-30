.class public abstract Lcom/bda/controller/d$a;
.super Landroid/os/Binder;
.source "IControllerListener.java"

# interfaces
.implements Lcom/bda/controller/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/d$a$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bda.controller.IControllerListener"

.field static final TRANSACTION_onKeyEvent:I = 0x1

.field static final TRANSACTION_onMotionEvent:I = 0x2

.field static final TRANSACTION_onStateEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.bda.controller.IControllerListener"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bda/controller/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.bda.controller.IControllerListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/bda/controller/d;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/bda/controller/d;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/bda/controller/d$a$a;

    invoke-direct {v0, p0}, Lcom/bda/controller/d$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "com.bda.controller.IControllerListener"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 3
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lcom/bda/controller/StateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bda/controller/StateEvent;

    .line 6
    :cond_2
    invoke-interface {p0, v0}, Lcom/bda/controller/d;->onStateEvent(Lcom/bda/controller/StateEvent;)V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 8
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    sget-object p1, Lcom/bda/controller/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bda/controller/MotionEvent;

    .line 11
    :cond_4
    invoke-interface {p0, v0}, Lcom/bda/controller/d;->onMotionEvent(Lcom/bda/controller/MotionEvent;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 13
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    sget-object p1, Lcom/bda/controller/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bda/controller/KeyEvent;

    .line 16
    :cond_6
    invoke-interface {p0, v0}, Lcom/bda/controller/d;->onKeyEvent(Lcom/bda/controller/KeyEvent;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2
.end method
