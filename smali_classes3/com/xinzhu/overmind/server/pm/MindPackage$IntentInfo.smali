.class public Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;
.super Ljava/lang/Object;
.source "MindPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/MindPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/content/IntentFilter;

.field public b:Z

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$IntentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentInfo"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->a:Landroid/content/IntentFilter;

    .line 3
    iget-boolean v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Z

    .line 4
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->c:I

    .line 5
    iget-object v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->d:Ljava/lang/String;

    .line 6
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->e:I

    .line 7
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->f:I

    .line 8
    iget p1, p1, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    iput p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->g:I

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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->a:Landroid/content/IntentFilter;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->c:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->d:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->e:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->f:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentInfo"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->a:Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->a:Landroid/content/IntentFilter;

    .line 11
    iget-boolean v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Z

    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Z

    .line 12
    iget v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->c:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->c:I

    .line 13
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->d:Ljava/lang/String;

    .line 14
    iget v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->e:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->e:I

    .line 15
    iget v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->f:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->f:I

    .line 16
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->g:I

    iput p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->g:I

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->a:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-boolean p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
