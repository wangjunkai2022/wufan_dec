.class Lcom/papa91/activity/EmuMenuBaseActivity$10;
.super Ljava/lang/Object;
.source "EmuMenuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->onVipChanged()V
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
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$10;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$10;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$10;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$10;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isSPVisible()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$10;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v1, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->setSPMenuVisible(Z)V

    :cond_0
    return-void
.end method
