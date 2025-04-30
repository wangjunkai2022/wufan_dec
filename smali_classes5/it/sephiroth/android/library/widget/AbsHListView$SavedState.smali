.class Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AbsHListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lit/sephiroth/android/library/widget/AbsHListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:J

.field b:J

.field c:I

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field g:Z

.field h:I

.field i:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState$a;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState$a;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    .line 12
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a(Landroid/os/Parcel;)Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroidx/collection/SparseArrayCompat;

    .line 13
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c(Landroid/os/Parcel;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lit/sephiroth/android/library/widget/AbsHListView$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method private a(Landroid/os/Parcel;)Landroidx/collection/SparseArrayCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v1, v0}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 3
    invoke-direct {p0, v1, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b(Landroidx/collection/SparseArrayCompat;Landroid/os/Parcel;I)V

    return-object v1
.end method

.method private b(Landroidx/collection/SparseArrayCompat;Landroid/os/Parcel;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Landroid/os/Parcel;)Landroidx/collection/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 3
    invoke-direct {p0, v1, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d(Landroidx/collection/LongSparseArray;Landroid/os/Parcel;I)V

    return-object v1
.end method

.method private d(Landroidx/collection/LongSparseArray;Landroid/os/Parcel;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Landroidx/collection/SparseArrayCompat;Landroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 1
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeByte(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f(Landroidx/collection/LongSparseArray;Landroid/os/Parcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    invoke-virtual {p1, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbsListView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " selectedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " firstId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " viewLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " checkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroidx/collection/SparseArrayCompat;

    invoke-direct {p0, p2, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e(Landroidx/collection/SparseArrayCompat;Landroid/os/Parcel;)V

    .line 11
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroidx/collection/LongSparseArray;

    invoke-direct {p0, p2, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f(Landroidx/collection/LongSparseArray;Landroid/os/Parcel;)V

    return-void
.end method
