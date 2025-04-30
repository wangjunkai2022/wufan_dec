.class final Lcom/ss/android/downloadlib/a/b/b$1;
.super Ljava/lang/Object;
.source "AidlMsg.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/downloadlib/a/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ss/android/downloadlib/a/b/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/downloadlib/a/b/b;

    invoke-direct {v0, p1}, Lcom/ss/android/downloadlib/a/b/b;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/ss/android/downloadlib/a/b/b;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/ss/android/downloadlib/a/b/b;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/b/b$1;->a(Landroid/os/Parcel;)Lcom/ss/android/downloadlib/a/b/b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/b/b$1;->a(I)[Lcom/ss/android/downloadlib/a/b/b;

    move-result-object p1

    return-object p1
.end method
