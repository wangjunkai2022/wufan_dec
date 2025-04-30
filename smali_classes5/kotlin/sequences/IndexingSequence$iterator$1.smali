.class public final Lkotlin/sequences/IndexingSequence$iterator$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/IndexingSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/collections/IndexedValue<",
        "+TT;>;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0001J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0002R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00018\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "kotlin/sequences/IndexingSequence$iterator$1",
        "",
        "Lkotlin/collections/IndexedValue;",
        "next",
        "",
        "hasNext",
        "",
        "index",
        "I",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "iterator",
        "Ljava/util/Iterator;",
        "getIterator",
        "()Ljava/util/Iterator;",
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
.field private index:I

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lkotlin/sequences/IndexingSequence;


# direct methods
.method constructor <init>(Lkotlin/sequences/IndexingSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlin/sequences/IndexingSequence$iterator$1;->this$0:Lkotlin/sequences/IndexingSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lkotlin/sequences/IndexingSequence;->access$getSequence$p(Lkotlin/sequences/IndexingSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/IndexingSequence$iterator$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/sequences/IndexingSequence$iterator$1;->index:I

    return v0
.end method

.method public final getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/sequences/IndexingSequence$iterator$1;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/sequences/IndexingSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/sequences/IndexingSequence$iterator$1;->next()Lkotlin/collections/IndexedValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lkotlin/collections/IndexedValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/IndexedValue<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lkotlin/collections/IndexedValue;

    iget v1, p0, Lkotlin/sequences/IndexingSequence$iterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/sequences/IndexingSequence$iterator$1;->index:I

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    iget-object v2, p0, Lkotlin/sequences/IndexingSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/sequences/IndexingSequence$iterator$1;->index:I

    return-void
.end method
