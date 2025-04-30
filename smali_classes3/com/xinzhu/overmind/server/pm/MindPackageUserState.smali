.class public Lcom/xinzhu/overmind/server/pm/MindPackageUserState;
.super Ljava/lang/Object;
.source "MindPackageUserState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageUserState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->c:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/xinzhu/overmind/server/pm/MindPackageUserState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-boolean v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a:Z

    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a:Z

    .line 11
    iget-boolean v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b:Z

    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b:Z

    .line 12
    iget-boolean p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->c:Z

    iput-boolean p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->c:Z

    return-void
.end method

.method public static a()Lcom/xinzhu/overmind/server/pm/MindPackageUserState;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a:Z

    return-object v0
.end method


# virtual methods
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
    iget-boolean p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget-boolean p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-boolean p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
