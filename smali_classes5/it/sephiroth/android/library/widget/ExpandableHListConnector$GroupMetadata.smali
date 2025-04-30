.class Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "ExpandableHListConnector.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/ExpandableHListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field static final e:I = -0x1


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata$a;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata$a;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static L0(IIIJ)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
    .locals 1

    .line 1
    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;-><init>()V

    .line 2
    iput p0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    .line 3
    iput p1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    .line 4
    iput p2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    .line 5
    iput-wide p3, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:J

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->s(Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s(Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    iget p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    sub-int/2addr v0, p1

    return v0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
