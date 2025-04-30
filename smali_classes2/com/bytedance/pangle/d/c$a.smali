.class final Lcom/bytedance/pangle/d/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/pangle/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:[B

.field public final b:S

.field public final c:S

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:I

.field public final i:S

.field public final j:S

.field public final k:S

.field public final l:S

.field public final m:S

.field public final n:S


# direct methods
.method private constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/bytedance/pangle/d/c$a;->a:[B

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 v1, 0x0

    .line 6
    aget-byte v2, v0, v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/16 v7, 0x7f

    if-ne v2, v7, :cond_4

    aget-byte v2, v0, v6

    const/16 v7, 0x45

    if-ne v2, v7, :cond_4

    aget-byte v2, v0, v4

    const/16 v7, 0x4c

    if-ne v2, v7, :cond_4

    aget-byte v2, v0, v3

    const/16 v7, 0x46

    if-ne v2, v7, :cond_4

    .line 7
    aget-byte v1, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad elf class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/bytedance/pangle/d/c;->a(IILjava/lang/String;)V

    const/4 v1, 0x5

    .line 8
    aget-byte v2, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "bad elf data encoding: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v7, v0, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/bytedance/pangle/d/c;->a(IILjava/lang/String;)V

    .line 9
    aget-byte v2, v0, v5

    if-ne v2, v6, :cond_0

    const/16 v2, 0x24

    goto :goto_0

    :cond_0
    const/16 v2, 0x30

    :goto_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 10
    aget-byte v1, v0, v1

    if-ne v1, v6, :cond_1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-string v1, "failed to read rest part of ehdr."

    .line 11
    invoke-static {p1, v2, v1}, Lcom/bytedance/pangle/d/c;->a(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/bytedance/pangle/d/c$a;->b:S

    .line 13
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/bytedance/pangle/d/c$a;->c:S

    .line 14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/bytedance/pangle/d/c$a;->d:I

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bad elf version: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v6, v1}, Lcom/bytedance/pangle/d/c;->a(IILjava/lang/String;)V

    .line 16
    aget-byte p1, v0, v5

    if-eq p1, v6, :cond_3

    if-ne p1, v4, :cond_2

    .line 17
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/pangle/d/c$a;->e:J

    .line 18
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/pangle/d/c$a;->f:J

    .line 19
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/pangle/d/c$a;->g:J

    goto :goto_2

    .line 20
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected elf class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bytedance/pangle/d/c$a;->e:J

    .line 22
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bytedance/pangle/d/c$a;->f:J

    .line 23
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bytedance/pangle/d/c$a;->g:J

    .line 24
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/bytedance/pangle/d/c$a;->h:I

    .line 25
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/bytedance/pangle/d/c$a;->i:S

    .line 26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/bytedance/pangle/d/c$a;->j:S

    .line 27
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/bytedance/pangle/d/c$a;->k:S

    .line 28
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/bytedance/pangle/d/c$a;->l:S

    .line 29
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/bytedance/pangle/d/c$a;->m:S

    .line 30
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/bytedance/pangle/d/c$a;->n:S

    return-void

    .line 31
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-array v2, v5, [Ljava/lang/Object;

    aget-byte v5, v0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v1

    aget-byte v1, v0, v6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v6

    aget-byte v1, v0, v4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v4

    aget-byte v0, v0, v3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "bad elf magic: %x %x %x %x."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/nio/channels/FileChannel;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/pangle/d/c$a;-><init>(Ljava/nio/channels/FileChannel;)V

    return-void
.end method
