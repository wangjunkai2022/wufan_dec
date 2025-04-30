.class public Lcom/xinzhu/overmind/entity/pm/InstalledModule;
.super Ljava/lang/Object;
.source "InstalledModule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/entity/pm/InstalledModule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/pm/InstalledModule$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/pm/InstalledModule$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->e:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/content/pm/ApplicationInfo;
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->a:Ljava/lang/String;

    const/16 v2, 0x80

    const/4 v3, -0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/frameworks/f;->f(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/content/pm/PackageInfo;
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->a:Ljava/lang/String;

    const/16 v2, 0x80

    const/4 v3, -0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/frameworks/f;->l(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

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
    iget-object p2, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-boolean p2, p0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;->e:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
