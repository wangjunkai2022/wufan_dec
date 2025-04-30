.class final Lcom/facebook/cache/common/k$a;
.super Ljava/lang/Object;
.source "WriterCallbacks.java"

# interfaces
.implements Lcom/facebook/cache/common/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/common/k;->a(Ljava/io/InputStream;)Lcom/facebook/cache/common/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/common/k$a;->a:Ljava/io/InputStream;

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
    iget-object v0, p0, Lcom/facebook/cache/common/k$a;->a:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method
