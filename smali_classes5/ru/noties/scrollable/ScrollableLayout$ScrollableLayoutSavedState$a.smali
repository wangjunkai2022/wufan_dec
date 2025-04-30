.class Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState$a;
.super Ljava/lang/Object;
.source "ScrollableLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;",
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
.method public a(Landroid/os/Parcel;)Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;
    .locals 1

    .line 1
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;

    invoke-direct {v0, p1}, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;
    .locals 0

    .line 1
    new-array p1, p1, [Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState$a;->a(Landroid/os/Parcel;)Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState$a;->b(I)[Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;

    move-result-object p1

    return-object p1
.end method
