.class public Lcom/xinzhu/overmind/entity/pm/InstalledPackage;
.super Ljava/lang/Object;
.source "InstalledPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/entity/pm/InstalledPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/pm/InstalledPackage$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->a:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/pm/ApplicationInfo;
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->b:Ljava/lang/String;

    iget v2, p0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->a:I

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3, v2}, Lcom/xinzhu/overmind/client/frameworks/f;->f(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/content/pm/PackageInfo;
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->b:Ljava/lang/String;

    iget v2, p0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->a:I

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3, v2}, Lcom/xinzhu/overmind/client/frameworks/f;->l(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;

    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
