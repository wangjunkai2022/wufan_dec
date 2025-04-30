.class Lcom/papa91/activity/EmuBaseActivity$2;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->startShare(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$json:Ljava/lang/String;

.field final synthetic val$shareType:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$2;->val$json:Ljava/lang/String;

    iput p2, p0, Lcom/papa91/activity/EmuBaseActivity$2;->val$shareType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "papa_broadcast_share_message"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$2;->val$json:Ljava/lang/String;

    const-string v2, "shareJson"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity$2;->val$shareType:I

    const-string v2, "shareType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method
