.class public Lru/noties/scrollable/f;
.super Ljava/lang/Object;
.source "DefaultCloseUpAlgorithm.java"

# interfaces
.implements Lru/noties/scrollable/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lru/noties/scrollable/ScrollableLayout;ZIII)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p5, 0x0

    :cond_0
    return p5
.end method

.method public b(Lru/noties/scrollable/ScrollableLayout;II)I
    .locals 1

    .line 1
    div-int/lit8 p1, p3, 0x2

    const/4 v0, 0x0

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p3, 0x0

    :cond_1
    return p3
.end method
