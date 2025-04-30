.class public Lcom/ss/android/downloadlib/a/b/b;
.super Ljava/lang/Object;
.source "AidlMsg.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/downloadlib/a/b/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/downloadlib/a/b/b$1;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/b/b$1;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/b/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/b;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/b;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/b;->f:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/b;->c:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/b;->e:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/b;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadlib/a/b/b;->a:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadlib/a/b/b;->b:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/b;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/b;->e:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/b;->f:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ss/android/downloadlib/a/b/b;->d:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/ss/android/downloadlib/a/b/b;

    .line 3
    iget v2, p0, Lcom/ss/android/downloadlib/a/b/b;->a:I

    iget v3, p1, Lcom/ss/android/downloadlib/a/b/b;->a:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ss/android/downloadlib/a/b/b;->b:I

    iget v3, p1, Lcom/ss/android/downloadlib/a/b/b;->b:I

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/b/b;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 5
    iget-object p1, p1, Lcom/ss/android/downloadlib/a/b/b;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6
    :cond_3
    iget-object p1, p1, Lcom/ss/android/downloadlib/a/b/b;->c:Ljava/lang/String;

    if-nez p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/android/downloadlib/a/b/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/android/downloadlib/a/b/b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/b/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/ss/android/downloadlib/a/b/b;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/ss/android/downloadlib/a/b/b;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/b/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/b/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/b/b;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget p2, p0, Lcom/ss/android/downloadlib/a/b/b;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
