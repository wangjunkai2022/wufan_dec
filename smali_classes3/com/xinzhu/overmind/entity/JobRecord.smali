.class public Lcom/xinzhu/overmind/entity/JobRecord;
.super Ljava/lang/Object;
.source "JobRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/entity/JobRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/app/job/JobInfo;

.field public b:Landroid/content/pm/ServiceInfo;

.field public c:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/JobRecord$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/JobRecord$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/entity/JobRecord;->CREATOR:Landroid/os/Parcelable$Creator;

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
    const-class v0, Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    iput-object v0, p0, Lcom/xinzhu/overmind/entity/JobRecord;->a:Landroid/app/job/JobInfo;

    .line 4
    const-class v0, Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ServiceInfo;

    iput-object p1, p0, Lcom/xinzhu/overmind/entity/JobRecord;->b:Landroid/content/pm/ServiceInfo;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/entity/JobRecord;->a:Landroid/app/job/JobInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/entity/JobRecord;->b:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
