.class Lcom/papa91/activity/EmuBaseActivity$23;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->setRewardResult1(IIII)V
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
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$23;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    return-void
.end method
