.class Lcom/papa91/activity/EmuMenuBaseActivity$1;
.super Ljava/util/TimerTask;
.source "EmuMenuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuMenuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$1;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$1;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-static {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->access$000(Lcom/papa91/activity/EmuMenuBaseActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$1;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getAutoStateTimeCount()I

    :cond_0
    return-void
.end method
