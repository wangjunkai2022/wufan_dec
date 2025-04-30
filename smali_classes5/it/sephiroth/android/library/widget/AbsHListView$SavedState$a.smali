.class Lit/sephiroth/android/library/widget/AbsHListView$SavedState$a;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lit/sephiroth/android/library/widget/AbsHListView$SavedState;",
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
.method public a(Landroid/os/Parcel;)Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
    .locals 2

    .line 1
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcel;Lit/sephiroth/android/library/widget/AbsHListView$a;)V

    return-object v0
.end method

.method public b(I)[Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
    .locals 0

    .line 1
    new-array p1, p1, [Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState$a;->a(Landroid/os/Parcel;)Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState$a;->b(I)[Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    move-result-object p1

    return-object p1
.end method
