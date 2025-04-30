.class Lcom/papa91/arc/EmuActivity_psp$22;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->showShare(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$22;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iput-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$22;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShare(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.wufun.share.image"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$22;->val$path:Ljava/lang/String;

    const-string v2, "imagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$22;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    return-void
.end method
