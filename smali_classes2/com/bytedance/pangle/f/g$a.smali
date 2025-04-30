.class final Lcom/bytedance/pangle/f/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/pangle/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:[B


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/pangle/f/g$a;->a:Ljava/nio/ByteBuffer;

    .line 3
    iput-object p2, p0, Lcom/bytedance/pangle/f/g$a;->b:[B

    return-void
.end method
