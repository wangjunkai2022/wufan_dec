.class Lcom/papa91/activity/EmuBaseActivity$11;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showVipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;

.field final synthetic val$adCount:I

.field final synthetic val$adSdkType:I

.field final synthetic val$howTimes:I

.field final synthetic val$times:I


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iput p2, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$times:I

    iput p3, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$howTimes:I

    iput p4, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$adSdkType:I

    iput p5, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$adCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->access$300(Lcom/papa91/activity/EmuBaseActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.emu.ad.result"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x7

    const-string v2, "adAction"

    .line 4
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-static {p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->access$302(Lcom/papa91/activity/EmuBaseActivity;Z)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.tools.AdBroadcast"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$times:I

    const-string v2, "times"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$howTimes:I

    const-string v2, "howTimes"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$adSdkType:I

    const-string v2, "adSdkType"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v2, "gameId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$adCount:I

    const-string v1, "adCount"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
