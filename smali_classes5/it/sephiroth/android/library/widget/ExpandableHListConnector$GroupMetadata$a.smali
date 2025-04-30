.class Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata$a;
.super Ljava/lang/Object;
.source "ExpandableHListConnector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->L0(IIIJ)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    move-result-object p1

    return-object p1
.end method

.method public b(I)[Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
    .locals 0

    .line 1
    new-array p1, p1, [Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata$a;->a(Landroid/os/Parcel;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata$a;->b(I)[Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    move-result-object p1

    return-object p1
.end method
