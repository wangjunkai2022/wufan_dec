.class final Lcom/bytedance/pangle/f/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/pangle/f/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/pangle/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/nio/ByteBuffer;

.field private final c:Ljava/security/MessageDigest;

.field private final d:[B

.field private final e:[B


# direct methods
.method private constructor <init>([BLjava/nio/ByteBuffer;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/bytedance/pangle/f/g$b;->d:[B

    .line 4
    iput-object p1, p0, Lcom/bytedance/pangle/f/g$b;->e:[B

    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/pangle/f/g$b;->b:Ljava/nio/ByteBuffer;

    const-string p2, "SHA-256"

    .line 6
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/pangle/f/g$b;->c:Ljava/security/MessageDigest;

    .line 7
    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->update([B)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/bytedance/pangle/f/g$b;->a:I

    return-void
.end method

.method synthetic constructor <init>([BLjava/nio/ByteBuffer;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/pangle/f/g$b;-><init>([BLjava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 11
    iget v0, p0, Lcom/bytedance/pangle/f/g$b;->a:I

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer is not empty: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/pangle/f/g$b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 3
    iget v1, p0, Lcom/bytedance/pangle/f/g$b;->a:I

    const/16 v2, 0x1000

    rsub-int v1, v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    iget-object v3, p0, Lcom/bytedance/pangle/f/g$b;->c:Ljava/security/MessageDigest;

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    sub-int/2addr v0, v1

    .line 6
    iget v3, p0, Lcom/bytedance/pangle/f/g$b;->a:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/bytedance/pangle/f/g$b;->a:I

    if-ne v3, v2, :cond_0

    .line 7
    iget-object v1, p0, Lcom/bytedance/pangle/f/g$b;->c:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/bytedance/pangle/f/g$b;->d:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->digest([BII)I

    .line 8
    iget-object v1, p0, Lcom/bytedance/pangle/f/g$b;->b:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/bytedance/pangle/f/g$b;->d:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v1, p0, Lcom/bytedance/pangle/f/g$b;->c:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/bytedance/pangle/f/g$b;->e:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 10
    iput v4, p0, Lcom/bytedance/pangle/f/g$b;->a:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/f/g$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/bytedance/pangle/f/g$b;->b:Ljava/nio/ByteBuffer;

    rsub-int v0, v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method
