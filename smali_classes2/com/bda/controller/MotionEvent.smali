.class public final Lcom/bda/controller/MotionEvent;
.super Lcom/bda/controller/BaseEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/MotionEvent$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/bda/controller/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0xb

.field public static final h:I = 0xe

.field public static final i:I = 0x11

.field public static final j:I = 0x12


# instance fields
.field final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bda/controller/MotionEvent$a;

    invoke-direct {v0}, Lcom/bda/controller/MotionEvent$a;-><init>()V

    sput-object v0, Lcom/bda/controller/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIFFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bda/controller/BaseEvent;-><init>(JI)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    .line 3
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p4, 0x1

    invoke-virtual {p1, p4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p5, 0xb

    invoke-virtual {p1, p5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p5, 0xe

    invoke-virtual {p1, p5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    .line 8
    invoke-static {p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    invoke-static {p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JI[I[F[I[F)V
    .locals 3

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/bda/controller/BaseEvent;-><init>(JI)V

    .line 11
    array-length p1, p4

    .line 12
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p2, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-lt p3, p1, :cond_1

    .line 13
    array-length v0, p6

    .line 14
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    :goto_1
    if-lt p2, v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    aget p3, p6, p2

    aget p4, p7, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    aget v1, p4, p3

    aget v2, p5, p3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 17
    invoke-direct {p0, p1}, Lcom/bda/controller/BaseEvent;-><init>(Landroid/os/Parcel;)V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 21
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    :goto_1
    if-lt v1, v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 24
    iget-object v4, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 27
    iget-object v5, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final c(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final d(I)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/bda/controller/MotionEvent;->e(II)F

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(II)F
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final h()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bda/controller/MotionEvent;->j()F

    move-result v0

    return v0
.end method

.method public final i()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bda/controller/MotionEvent;->n()F

    move-result v0

    return v0
.end method

.method public final j()F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/bda/controller/MotionEvent;->e(II)F

    move-result v0

    return v0
.end method

.method public final k(I)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/bda/controller/MotionEvent;->e(II)F

    move-result p1

    return p1
.end method

.method public final l()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final n()F
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/bda/controller/MotionEvent;->e(II)F

    move-result v0

    return v0
.end method

.method public final o(I)F
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/bda/controller/MotionEvent;->e(II)F

    move-result p1

    return p1
.end method

.method public final p()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bda/controller/BaseEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-lt v0, v2, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/bda/controller/MotionEvent;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v2, p0, Lcom/bda/controller/MotionEvent;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
