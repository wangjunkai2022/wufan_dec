.class public abstract Lcom/ss/android/socialbase/downloader/model/a$a;
.super Landroid/os/Binder;
.source "DownloadAidlTask.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/model/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/model/a$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/model/a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/model/a;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/ss/android/socialbase/downloader/model/a;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/a$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/model/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static m()Lcom/ss/android/socialbase/downloader/model/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->a:Lcom/ss/android/socialbase/downloader/model/a;

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

    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

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
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/model/a;->c(I)Lcom/ss/android/socialbase/downloader/depend/l;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 7
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->l()I

    move-result p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 11
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->k()Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 14
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 15
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->j()Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 18
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 19
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->i()Lcom/ss/android/socialbase/downloader/depend/p;

    move-result-object p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 22
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 23
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->h()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 26
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 27
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->g()Lcom/ss/android/socialbase/downloader/depend/u;

    move-result-object p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 30
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 31
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->f()Lcom/ss/android/socialbase/downloader/depend/f;

    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 34
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 35
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->e()Lcom/ss/android/socialbase/downloader/depend/h;

    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 38
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 39
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->d()Lcom/ss/android/socialbase/downloader/depend/ae;

    move-result-object p1

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    .line 42
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 43
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->c()Lcom/ss/android/socialbase/downloader/depend/y;

    move-result-object p1

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 46
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 47
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 49
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/model/a;->b(I)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object p1

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_a

    .line 51
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 52
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 55
    invoke-interface {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/a;->a(II)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 57
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 58
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 60
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/model/a;->a(I)I

    move-result p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 63
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->b()Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_c

    .line 66
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 67
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_d

    .line 70
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_d
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 73
    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
