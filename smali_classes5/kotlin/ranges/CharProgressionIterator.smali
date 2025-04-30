.class public final Lkotlin/ranges/CharProgressionIterator;
.super Lkotlin/collections/CharIterator;
.source "ProgressionIterators.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\tR\u0016\u0010\n\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0008R\u0019\u0010\u000b\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/ranges/CharProgressionIterator;",
        "Lkotlin/collections/CharIterator;",
        "",
        "hasNext",
        "",
        "nextChar",
        "",
        "finalElement",
        "I",
        "Z",
        "next",
        "step",
        "getStep",
        "()I",
        "first",
        "last",
        "<init>",
        "(CCI)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final finalElement:I

.field private hasNext:Z

.field private next:I

.field private final step:I


# direct methods
.method public constructor <init>(CCI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlin/collections/CharIterator;-><init>()V

    iput p3, p0, Lkotlin/ranges/CharProgressionIterator;->step:I

    .line 2
    iput p2, p0, Lkotlin/ranges/CharProgressionIterator;->finalElement:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p3

    if-gtz p3, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p3

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lkotlin/ranges/CharProgressionIterator;->hasNext:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    .line 4
    :goto_1
    iput p1, p0, Lkotlin/ranges/CharProgressionIterator;->next:I

    return-void
.end method


# virtual methods
.method public final getStep()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/ranges/CharProgressionIterator;->step:I

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/ranges/CharProgressionIterator;->hasNext:Z

    return v0
.end method

.method public nextChar()C
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/ranges/CharProgressionIterator;->next:I

    .line 2
    iget v1, p0, Lkotlin/ranges/CharProgressionIterator;->finalElement:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lkotlin/ranges/CharProgressionIterator;->hasNext:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lkotlin/ranges/CharProgressionIterator;->hasNext:Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 6
    :cond_1
    iget v1, p0, Lkotlin/ranges/CharProgressionIterator;->step:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlin/ranges/CharProgressionIterator;->next:I

    :goto_0
    int-to-char v0, v0

    return v0
.end method
