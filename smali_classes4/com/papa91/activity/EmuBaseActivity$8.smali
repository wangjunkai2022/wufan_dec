.class Lcom/papa91/activity/EmuBaseActivity$8;
.super Lcom/papa91/MessageVipCommonDialog;
.source "EmuBaseActivity.java"


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
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    .line 1
    iput-object v0, v10, Lcom/papa91/activity/EmuBaseActivity$8;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/papa91/MessageVipCommonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$8;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity;->needResumeGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/papa91/MessageVipCommonDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 2
    invoke-super {p0, p1}, Lcom/papa91/MessageVipCommonDialog;->onShow(Landroid/content/DialogInterface;)V

    return-void
.end method
