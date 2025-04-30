.class public abstract Lcom/ss/android/socialbase/downloader/b/c$a;
.super Landroid/os/Binder;
.source "ISqlDownloadCacheAidl.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/b/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/b/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/ss/android/socialbase/downloader/b/c;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/c$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/b/c$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static f()Lcom/ss/android/socialbase/downloader/b/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->a:Lcom/ss/android/socialbase/downloader/b/c;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    if-eq p1, v0, :cond_10

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/b/b$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object p1

    .line 4
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/b/b;)V

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 6
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8
    sget-object p4, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 9
    invoke-interface {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->b(ILjava/util/List;)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 11
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13
    sget-object p4, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 14
    invoke-interface {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->a(ILjava/util/List;)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 16
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 19
    :cond_0
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/b/c;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 21
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/b/c;->e()Z

    move-result p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 25
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/b/c;->d()Z

    move-result p1

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 29
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 31
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 36
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 38
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 43
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 46
    invoke-interface {p0, p1, v4, v5}, Lcom/ss/android/socialbase/downloader/b/c;->e(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 48
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 50
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 51
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 54
    invoke-interface {p0, p1, v4, v5}, Lcom/ss/android/socialbase/downloader/b/c;->d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 56
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 58
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 59
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 62
    invoke-interface {p0, p1, v4, v5}, Lcom/ss/android/socialbase/downloader/b/c;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 64
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 66
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 67
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 69
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 71
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 73
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 74
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 77
    invoke-interface {p0, p1, v4, v5}, Lcom/ss/android/socialbase/downloader/b/c;->b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 79
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 81
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 82
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 85
    invoke-interface {p0, p1, v4, v5}, Lcom/ss/android/socialbase/downloader/b/c;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    .line 87
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 89
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 90
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    .line 95
    invoke-interface/range {v4 .. v9}, Lcom/ss/android/socialbase/downloader/b/c;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 97
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 99
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    .line 100
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 102
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_a

    .line 104
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 106
    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    .line 107
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/b/c;->c()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 110
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 112
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->f(I)Z

    move-result p1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 115
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->e(I)Z

    move-result p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 120
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 122
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 123
    :cond_b
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 126
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 129
    invoke-interface {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_c

    .line 131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 133
    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v1

    .line 134
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 139
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIII)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 141
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    .line 146
    invoke-interface/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIIJ)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 148
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 152
    invoke-interface {p0, p1, p4, v2, v3}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIJ)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 154
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    .line 156
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    .line 157
    :cond_d
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/b/c;->b(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 159
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    .line 161
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    .line 162
    :cond_e
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 164
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 166
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->d(I)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 168
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 170
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->c(I)Ljava/util/List;

    move-result-object p1

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 173
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/b/c;->b()Ljava/util/List;

    move-result-object p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 177
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 182
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 187
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 192
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 197
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 199
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 201
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 203
    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v1

    .line 204
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 206
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(I)Z

    move-result p1

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 209
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/b/c;->a()V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 212
    :cond_10
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
