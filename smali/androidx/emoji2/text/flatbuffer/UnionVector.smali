.class public final Landroidx/emoji2/text/flatbuffer/UnionVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "UnionVector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/UnionVector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/BaseVector;->b(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(Landroidx/emoji2/text/flatbuffer/Table;I)Landroidx/emoji2/text/flatbuffer/Table;
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/BaseVector;->a(I)I

    move-result p2

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->d:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/Table;->j(Landroidx/emoji2/text/flatbuffer/Table;ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/Table;

    move-result-object p1

    return-object p1
.end method
