.class public final Lcom/facebook/soloader/v$d;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/facebook/soloader/v$b;

.field public final b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/v$b;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/soloader/v$d;->a:Lcom/facebook/soloader/v$b;

    .line 3
    iput-object p2, p0, Lcom/facebook/soloader/v$d;->b:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/v$d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
