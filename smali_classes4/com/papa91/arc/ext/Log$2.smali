.class Lcom/papa91/arc/ext/Log$2;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/ext/Log;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/papa91/arc/ext/Log;->closed:Z

    .line 2
    sget-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 4
    sget-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WF-LOG"

    const-string v2, "Log close: I/O"

    .line 6
    invoke-static {v1, v2, v0}, Lcom/papa91/arc/ext/Log$LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
