.class Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$1;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$1;->this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$1;->this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$1;->this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    :cond_0
    return-void
.end method
