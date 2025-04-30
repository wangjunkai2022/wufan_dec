.class Lcom/tencent/cos/utils/RecordLog$1;
.super Ljava/lang/Object;
.source "RecordLog.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/utils/RecordLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/utils/RecordLog;


# direct methods
.method constructor <init>(Lcom/tencent/cos/utils/RecordLog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/utils/RecordLog$1;->this$0:Lcom/tencent/cos/utils/RecordLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/cos/utils/RecordLog$1;->this$0:Lcom/tencent/cos/utils/RecordLog;

    invoke-static {v2}, Lcom/tencent/cos/utils/RecordLog;->access$000(Lcom/tencent/cos/utils/RecordLog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog$1;->this$0:Lcom/tencent/cos/utils/RecordLog;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/utils/RecordLog;->getIndexFromFile(Ljava/io/File;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
