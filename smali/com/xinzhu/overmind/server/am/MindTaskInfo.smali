.class public Lcom/xinzhu/overmind/server/am/MindTaskInfo;
.super Ljava/lang/Object;
.source "MindTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/am/MindTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Landroid/content/Intent;

.field public c:Landroid/content/ComponentName;

.field public d:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/am/MindTaskInfo$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/MindTaskInfo$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskId",
            "baseIntent",
            "baseActivity",
            "topActivity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->a:I

    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->b:Landroid/content/Intent;

    .line 4
    iput-object p3, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->c:Landroid/content/ComponentName;

    .line 5
    iput-object p4, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->d:Landroid/content/ComponentName;

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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->a:I

    .line 8
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->b:Landroid/content/Intent;

    .line 9
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->c:Landroid/content/ComponentName;

    .line 10
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->d:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
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
    iget v0, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->b:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->d:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
