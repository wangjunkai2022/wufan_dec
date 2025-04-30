.class Lcom/papa91/activity/EmuBaseActivity$26;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showRewardDialog1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1, p1}, Lcom/papa91/activity/EmuBaseActivity;->setRewardResult(II)V

    .line 2
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    return-void
.end method
