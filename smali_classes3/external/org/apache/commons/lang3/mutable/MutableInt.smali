.class public Lexternal/org/apache/commons/lang3/mutable/MutableInt;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lexternal/org/apache/commons/lang3/mutable/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lexternal/org/apache/commons/lang3/mutable/MutableInt;",
        ">;",
        "Lexternal/org/apache/commons/lang3/mutable/a<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77401786b8L


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 3
    iput p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return-void
.end method

.method public U()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public Y()V
    .locals 1

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return-void
.end method

.method public a0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->x(Lexternal/org/apache/commons/lang3/mutable/MutableInt;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public e0(Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {p1}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public floatValue()F
    .locals 1

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    int-to-float v0, v0

    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->U()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return v0
.end method

.method public k0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operand"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return-void
.end method

.method public longValue()J
    .locals 2

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public m(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operand"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return-void
.end method

.method public m0(Ljava/lang/Number;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operand"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return-void
.end method

.method public s(Ljava/lang/Number;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operand"
        }
    .end annotation

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->e0(Ljava/lang/Number;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v0()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public x(Lexternal/org/apache/commons/lang3/mutable/MutableInt;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    iget p1, p1, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    .line 2
    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->a:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
