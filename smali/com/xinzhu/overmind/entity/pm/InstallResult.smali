.class public Lcom/xinzhu/overmind/entity/pm/InstallResult;
.super Ljava/lang/Object;
.source "InstallResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/entity/pm/InstallResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "InstallResult"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/pm/InstallResult$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a:Z

    const-string v0, "InstallResult"

    .line 3
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
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
    iget-boolean p2, p0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget-object p2, p0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
