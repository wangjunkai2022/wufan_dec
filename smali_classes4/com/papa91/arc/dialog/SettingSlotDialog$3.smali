.class Lcom/papa91/arc/dialog/SettingSlotDialog$3;
.super Ljava/lang/Object;
.source "SettingSlotDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;->saveSlot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingSlotDialog;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    iput p2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->ugcPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v1, v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->evictCache(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->val$id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->saveSlotState(Ljava/lang/String;)V

    return-void
.end method
