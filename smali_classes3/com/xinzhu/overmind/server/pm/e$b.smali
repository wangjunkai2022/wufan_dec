.class public abstract Lcom/xinzhu/overmind/server/pm/e$b;
.super Landroid/os/Binder;
.source "IMindXposedManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/pm/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/e$b$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xinzhu.overmind.server.pm.IMindXposedManagerService"

.field static final TRANSACTION_getInstalledModules:I = 0x5

.field static final TRANSACTION_isModuleEnable:I = 0x3

.field static final TRANSACTION_isXPEnable:I = 0x1

.field static final TRANSACTION_setModuleEnable:I = 0x4

.field static final TRANSACTION_setXPEnable:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xinzhu.overmind.server.pm.IMindXposedManagerService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/pm/e;
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
    const-string v0, "com.xinzhu.overmind.server.pm.IMindXposedManagerService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/xinzhu/overmind/server/pm/e;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/xinzhu/overmind/server/pm/e;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/e$b$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/pm/e$b$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xinzhu/overmind/server/pm/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/e$b$a;->b:Lcom/xinzhu/overmind/server/pm/e;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xinzhu/overmind/server/pm/e;)Z
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
    sget-object v0, Lcom/xinzhu/overmind/server/pm/e$b$a;->b:Lcom/xinzhu/overmind/server/pm/e;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/xinzhu/overmind/server/pm/e$b$a;->b:Lcom/xinzhu/overmind/server/pm/e;

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

    const/4 v0, 0x1

    const-string v1, "com.xinzhu.overmind.server.pm.IMindXposedManagerService"

    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Lcom/xinzhu/overmind/server/pm/e;->o()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 7
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v3, 0x1

    .line 10
    :cond_3
    invoke-interface {p0, p1, v3}, Lcom/xinzhu/overmind/server/pm/e;->p(Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 12
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-interface {p0, p1}, Lcom/xinzhu/overmind/server/pm/e;->f(Ljava/lang/String;)Z

    move-result p1

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 17
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v3, 0x1

    .line 19
    :cond_6
    invoke-interface {p0, v3}, Lcom/xinzhu/overmind/server/pm/e;->q(Z)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 21
    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lcom/xinzhu/overmind/server/pm/e;->n()Z

    move-result p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
