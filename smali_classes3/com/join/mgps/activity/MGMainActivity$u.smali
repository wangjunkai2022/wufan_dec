.class Lcom/join/mgps/activity/MGMainActivity$u;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->showVideoPopWin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$u;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$u;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$2400(Lcom/join/mgps/activity/MGMainActivity;)Lcom/papa91/VideoStrategyPop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/VideoStrategyPop;->dismiss()V

    return-void
.end method
