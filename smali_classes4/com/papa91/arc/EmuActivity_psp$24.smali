.class Lcom/papa91/arc/EmuActivity_psp$24;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$24;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$24;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$24;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$000(Lcom/papa91/arc/EmuActivity_psp;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$24;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1900(Lcom/papa91/arc/EmuActivity_psp;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$24;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-wide v1, v0, Lcom/papa91/arc/EmuActivity_psp;->playTime:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/papa91/arc/EmuActivity_psp;->playTime:J

    .line 3
    iget-wide v3, v0, Lcom/papa91/arc/EmuActivity_psp;->limitTime:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->onHandleRealName(I)V

    return-void

    .line 5
    :cond_1
    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
