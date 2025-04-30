.class public Lcom/xinzhu/overmind/entity/UnbindRecord;
.super Ljava/lang/Object;
.source "UnbindRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/entity/UnbindRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/UnbindRecord$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/UnbindRecord$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/entity/UnbindRecord;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->a:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->b:I

    .line 5
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->c:Landroid/content/ComponentName;

    return-void
.end method

.method public static b()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/entity/UnbindRecord;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/entity/UnbindRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->a:I

    return v0
.end method

.method public c()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->c:Landroid/content/ComponentName;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bindCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->a:I

    return-void
.end method

.method public f(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->c:Landroid/content/ComponentName;

    return-void
.end method

.method public g(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->b:I

    return-void
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
    iget v0, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/entity/UnbindRecord;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
