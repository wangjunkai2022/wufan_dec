.class Lcom/papa91/view/RewardBananaDialog$5;
.super Ljava/lang/Object;
.source "RewardBananaDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/RewardBananaDialog;->error(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RewardBananaDialog;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/view/RewardBananaDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog$5;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iput-object p2, p0, Lcom/papa91/view/RewardBananaDialog$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$5;->this$0:Lcom/papa91/view/RewardBananaDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/view/RewardBananaDialog$5;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
