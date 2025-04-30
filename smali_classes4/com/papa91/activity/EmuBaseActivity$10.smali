.class Lcom/papa91/activity/EmuBaseActivity$10;
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


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$10;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$10;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object p1, p1, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    invoke-virtual {p1}, Lcom/papa91/MessageVipCommonDialog;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$10;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object p1, p1, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    invoke-virtual {p1}, Lcom/papa91/MessageVipCommonDialog;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.tools.AdBroadcast"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "action"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$10;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    invoke-virtual {v0}, Lcom/papa91/MessageVipCommonDialog;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
