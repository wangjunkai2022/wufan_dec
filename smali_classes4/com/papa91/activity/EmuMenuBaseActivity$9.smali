.class Lcom/papa91/activity/EmuMenuBaseActivity$9;
.super Ljava/lang/Object;
.source "EmuMenuBaseActivity.java"

# interfaces
.implements Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->showShare(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$9;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iput-object p2, p0, Lcom/papa91/activity/EmuMenuBaseActivity$9;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShare(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.wufun.share.image"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$9;->val$path:Ljava/lang/String;

    const-string v2, "imagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statShareScreenshot(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statShareScreenshot(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statShareScreenshot(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statShareScreenshot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$9;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iget-object p1, p1, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    return-void
.end method
