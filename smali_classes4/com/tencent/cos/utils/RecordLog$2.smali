.class Lcom/tencent/cos/utils/RecordLog$2;
.super Landroid/os/Handler;
.source "RecordLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/utils/RecordLog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/utils/RecordLog;


# direct methods
.method constructor <init>(Lcom/tencent/cos/utils/RecordLog;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/utils/RecordLog$2;->this$0:Lcom/tencent/cos/utils/RecordLog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/tencent/cos/utils/RecordLog$2;->this$0:Lcom/tencent/cos/utils/RecordLog;

    invoke-virtual {p1}, Lcom/tencent/cos/utils/RecordLog;->flush()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/tencent/cos/utils/RecordLog$2;->this$0:Lcom/tencent/cos/utils/RecordLog;

    invoke-virtual {p1}, Lcom/tencent/cos/utils/RecordLog;->flush()V

    const/4 p1, 0x0

    const-wide/16 v0, 0x2710

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
