.class Lcom/papa91/view/AutoSlotDialog$2;
.super Ljava/lang/Object;
.source "AutoSlotDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/AutoSlotDialog;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AutoSlotDialog;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/papa91/view/AutoSlotDialog;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog$2;->this$0:Lcom/papa91/view/AutoSlotDialog;

    iput p2, p0, Lcom/papa91/view/AutoSlotDialog$2;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget v2, p0, Lcom/papa91/view/AutoSlotDialog$2;->val$pos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onclickAutosave"

    invoke-static {v2, v1}, Lcom/papa91/activity/EmuBaseActivity;->sendEmuStat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isLogined()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->sign()V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u8be5\u529f\u80fd\u9700\u767b\u5f55\u540e\u4f7f\u7528"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/papa91/view/AutoSlotDialog$2;->this$0:Lcom/papa91/view/AutoSlotDialog;

    iget v1, v1, Lcom/papa91/view/AutoSlotDialog;->vipLevel:I

    if-ge v1, v0, :cond_2

    .line 6
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->freeLoadSlot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/papa91/view/AutoSlotDialog$2;->val$pos:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u5f00\u901a\u4f1a\u5458\u5373\u53ef\u8bfb\u53d6\u8be5\u5b58\u6863"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog$2;->this$0:Lcom/papa91/view/AutoSlotDialog;

    iget-object v0, p1, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    iget v1, p0, Lcom/papa91/view/AutoSlotDialog$2;->val$pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/papa91/view/AutoSlotDialog$2;->val$pos:I

    invoke-virtual {p1, v0, v1}, Lcom/papa91/view/AutoSlotDialog;->showConfirmDialog(Ljava/lang/String;I)V

    return-void
.end method
