.class Lcom/papa91/activity/EmuBaseActivity$7;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showVideoPopWin(Ljava/lang/String;I)V
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
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$7;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$7;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->access$800(Lcom/papa91/activity/EmuBaseActivity;)Lcom/papa91/VideoStrategyPop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/VideoStrategyPop;->dismiss()V

    return-void
.end method
