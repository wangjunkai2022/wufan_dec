.class public final Lcom/bytedance/pangle/res/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/bytedance/pangle/res/a/g;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/bytedance/pangle/res/a/g;->b(I)V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v2

    const/4 v3, 0x4

    .line 5
    invoke-virtual {p0, v3}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v4

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result v5

    mul-int/lit8 v1, v1, 0x4

    .line 8
    invoke-virtual {p0, v1}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    if-eqz v2, :cond_0

    mul-int/lit8 v2, v2, 0x4

    .line 9
    invoke-virtual {p0, v2}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    :cond_0
    if-nez v5, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    sub-int/2addr v1, v4

    .line 10
    invoke-virtual {p0, v1}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    if-eqz v5, :cond_2

    sub-int/2addr v0, v5

    .line 11
    invoke-virtual {p0, v0}, Lcom/bytedance/pangle/res/a/g;->skipBytes(I)I

    .line 12
    rem-int/2addr v0, v3

    if-lez v0, :cond_2

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/f;->readByte()B

    move v0, v1

    goto :goto_1

    :cond_2
    return-void
.end method
