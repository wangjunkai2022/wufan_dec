.class public abstract Lcom/bda/controller/f$a;
.super Landroid/os/Binder;
.source "IControllerService.java"

# interfaces
.implements Lcom/bda/controller/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/f$a$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bda.controller.IControllerService"

.field static final TRANSACTION_allowNewConnections:I = 0xc

.field static final TRANSACTION_disallowNewConnections:I = 0xd

.field static final TRANSACTION_getAxisValue:I = 0x7

.field static final TRANSACTION_getInfo:I = 0x5

.field static final TRANSACTION_getKeyCode:I = 0x6

.field static final TRANSACTION_getKeyCode2:I = 0xb

.field static final TRANSACTION_getState:I = 0x8

.field static final TRANSACTION_isAllowingNewConnections:I = 0xe

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_registerListener2:I = 0xa

.field static final TRANSACTION_registerMonitor:I = 0x3

.field static final TRANSACTION_sendMessage:I = 0x9

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_unregisterMonitor:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.bda.controller.IControllerService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bda/controller/f;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.bda.controller.IControllerService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/bda/controller/f;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/bda/controller/f;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/bda/controller/f$a$a;

    invoke-direct {v0, p0}, Lcom/bda/controller/f$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.bda.controller.IControllerService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lcom/bda/controller/f;->E()Z

    move-result p1

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 6
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Lcom/bda/controller/f;->v()V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 9
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lcom/bda/controller/f;->F()V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 12
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 15
    invoke-interface {p0, p1, p2}, Lcom/bda/controller/f;->D(II)I

    move-result p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 18
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bda/controller/d$a;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/d;

    move-result-object p1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 21
    invoke-interface {p0, p1, p2}, Lcom/bda/controller/f;->w(Lcom/bda/controller/d;I)V

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 23
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 26
    invoke-interface {p0, p1, p2}, Lcom/bda/controller/f;->x(II)V

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 28
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 31
    invoke-interface {p0, p1, p2}, Lcom/bda/controller/f;->u(II)I

    move-result p1

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 34
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 37
    invoke-interface {p0, p1, p2}, Lcom/bda/controller/f;->y(II)F

    move-result p1

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    .line 40
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 43
    invoke-interface {p0, p1, p2}, Lcom/bda/controller/f;->A(II)I

    move-result p1

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 46
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 48
    invoke-interface {p0, p1}, Lcom/bda/controller/f;->t(I)I

    move-result p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 51
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bda/controller/e$a;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/e;

    move-result-object p1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 54
    invoke-interface {p0, p1, p2}, Lcom/bda/controller/f;->z(Lcom/bda/controller/e;I)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 56
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bda/controller/e$a;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/e;

    move-result-object p1

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 59
    invoke-interface {p0, p1, p2}, Lcom/bda/controller/f;->C(Lcom/bda/controller/e;I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 61
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bda/controller/d$a;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/d;

    move-result-object p1

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 64
    invoke-interface {p0, p1, p2}, Lcom/bda/controller/f;->B(Lcom/bda/controller/d;I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 66
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bda/controller/d$a;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/d;

    move-result-object p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 69
    invoke-interface {p0, p1, p2}, Lcom/bda/controller/f;->G(Lcom/bda/controller/d;I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 71
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
