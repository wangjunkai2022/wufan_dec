.class final Lcom/facebook/cache/common/k$b;
.super Ljava/lang/Object;
.source "WriterCallbacks.java"

# interfaces
.implements Lcom/facebook/cache/common/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/common/k;->b([B)Lcom/facebook/cache/common/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/common/k$b;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/common/k$b;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
