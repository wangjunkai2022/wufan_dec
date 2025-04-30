.class Lcom/papa91/activity/EmuMenuBaseActivity$8;
.super Ljava/lang/Object;
.source "EmuMenuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->loadRomFinish()V
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
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$8;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$8;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$8;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$8;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isSPVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa91/activity/EmuMenuBaseActivity;->setSPMenuVisible(Z)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$8;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showVipTip()V

    :cond_1
    :goto_0
    return-void
.end method
