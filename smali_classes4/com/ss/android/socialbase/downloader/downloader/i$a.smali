.class public abstract Lcom/ss/android/socialbase/downloader/downloader/i$a;
.super Landroid/os/Binder;
.source "IDownloadAidlService.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/downloader/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/downloader/i$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/i;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/i$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/i$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static g()Lcom/ss/android/socialbase/downloader/downloader/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/i$a$a;->a:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v7, p0

    move v0, p1

    move-object v1, p2

    move-object v8, p3

    const v2, 0x5f4e5446

    const/4 v9, 0x1

    const-string v3, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    if-eq v0, v2, :cond_12

    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 5
    invoke-interface {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IJ)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 7
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/downloader/i;->f()Z

    move-result v0

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 11
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 13
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->s(I)Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object v0

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v9

    .line 16
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/depend/y$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/y;

    move-result-object v1

    .line 19
    invoke-interface {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(ILcom/ss/android/socialbase/downloader/depend/y;)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 21
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 23
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->r(I)Lcom/ss/android/socialbase/downloader/depend/ae;

    move-result-object v0

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v9

    .line 26
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 28
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->q(I)Lcom/ss/android/socialbase/downloader/depend/y;

    move-result-object v0

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    .line 30
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v9

    .line 31
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 34
    invoke-interface {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(II)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 36
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/depend/aj$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/aj;

    move-result-object v0

    .line 38
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/depend/aj;)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 40
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 42
    sget-object v2, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 43
    invoke-interface {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(ILjava/util/List;)V

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 45
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 47
    sget-object v2, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 48
    invoke-interface {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(ILjava/util/List;)V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 50
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/downloader/i;->e()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 53
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->p(I)Z

    move-result v0

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 58
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    invoke-interface {p0, v0, v2, v3, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIII)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 65
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move-wide v4, v5

    .line 70
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIIJ)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 72
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 76
    invoke-interface {p0, v0, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIJ)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 78
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->o(I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 82
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->n(I)Z

    move-result v0

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 87
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    sget-object v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 90
    :cond_3
    invoke-interface {p0, v2}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 93
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    sget-object v0, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/b;

    .line 96
    :cond_4
    invoke-interface {p0, v2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 98
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->m(I)I

    move-result v0

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 103
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    .line 106
    :cond_5
    invoke-interface {p0, v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(IZ)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 108
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/downloader/i;->d()Z

    move-result v0

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 112
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->l(I)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 116
    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->k(I)Z

    move-result v0

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 121
    :pswitch_18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    .line 126
    :pswitch_19
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/downloader/i;->c()Z

    move-result v0

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 130
    :pswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    .line 132
    :cond_6
    invoke-interface {p0, v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Z)V

    return v9

    .line 133
    :pswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 136
    sget-object v2, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/Notification;

    .line 137
    :cond_7
    invoke-interface {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(ILandroid/app/Notification;)V

    return v9

    .line 138
    :pswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 140
    sget-object v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 141
    :cond_8
    invoke-interface {p0, v2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 144
    :pswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/depend/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v5

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v10, 0x1

    goto :goto_0

    :cond_9
    const/4 v10, 0x0

    .line 150
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v11, 0x1

    goto :goto_1

    :cond_a
    const/4 v11, 0x0

    :goto_1
    move-object v0, p0

    move v1, v2

    move v2, v3

    move-object v3, v5

    move v4, v6

    move v5, v10

    move v6, v11

    .line 151
    invoke-interface/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IILcom/ss/android/socialbase/downloader/depend/i;IZZ)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 153
    :pswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/depend/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v5

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v10, 0x1

    goto :goto_2

    :cond_b
    const/4 v10, 0x0

    :goto_2
    move-object v0, p0

    move v1, v2

    move v2, v3

    move-object v3, v5

    move v4, v6

    move v5, v10

    .line 159
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 161
    :pswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/depend/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v5

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v10, 0x1

    goto :goto_3

    :cond_c
    const/4 v10, 0x0

    :goto_3
    move-object v0, p0

    move v1, v2

    move v2, v3

    move-object v3, v5

    move v4, v6

    move v5, v10

    .line 167
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 169
    :pswitch_20
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->j(I)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 173
    :pswitch_21
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v4, 0x1

    .line 176
    :cond_d
    invoke-interface {p0, v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(IZ)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 178
    :pswitch_22
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v4, 0x1

    .line 181
    :cond_e
    invoke-interface {p0, v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(IZ)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 183
    :pswitch_23
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 185
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(Ljava/util/List;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 187
    :pswitch_24
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Ljava/util/List;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 191
    :pswitch_25
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/downloader/i;->b()Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    .line 195
    :pswitch_26
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    .line 200
    :pswitch_27
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    .line 205
    :pswitch_28
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    .line 210
    :pswitch_29
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-interface {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_f

    .line 215
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {v0, p3, v9}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 217
    :cond_f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v9

    .line 218
    :pswitch_2a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-interface {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 224
    :pswitch_2b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->i(I)Ljava/util/List;

    move-result-object v0

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    .line 229
    :pswitch_2c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    .line 234
    :pswitch_2d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_10

    .line 238
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {v0, p3, v9}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 240
    :cond_10
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v9

    .line 241
    :pswitch_2e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->g(I)Z

    move-result v0

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 246
    :pswitch_2f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->f(I)I

    move-result v0

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 251
    :pswitch_30
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->e(I)J

    move-result-wide v0

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v9

    .line 256
    :pswitch_31
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/downloader/i;->a()V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 259
    :pswitch_32
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 261
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(I)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 263
    :pswitch_33
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 265
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(I)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 267
    :pswitch_34
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Z

    move-result v0

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .line 272
    :pswitch_35
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v4, 0x1

    .line 275
    :cond_11
    invoke-interface {p0, v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IZ)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 277
    :pswitch_36
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(I)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 281
    :pswitch_37
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/model/a$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v0

    .line 283
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/a;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    .line 285
    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
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
