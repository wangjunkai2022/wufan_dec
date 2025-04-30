.class public Le/b;
.super Ljava/lang/Object;
.source "NumericWheelAdapter.java"

# interfaces
.implements Le/c;


# static fields
.field public static final c:I = 0x9

.field private static final d:I


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 1
    invoke-direct {p0, v0, v1}, Le/b;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Le/b;->a:I

    .line 4
    iput p2, p0, Le/b;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Le/b;->b:I

    iget v1, p0, Le/b;->a:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Le/b;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget v0, p0, Le/b;->a:I

    add-int/2addr v0, p1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Le/b;->a:I

    sub-int/2addr p1, v0

    return p1
.end method
