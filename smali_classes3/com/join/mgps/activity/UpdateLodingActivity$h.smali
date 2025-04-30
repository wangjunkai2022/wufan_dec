.class Lcom/join/mgps/activity/UpdateLodingActivity$h;
.super Ljava/lang/Object;
.source "UpdateLodingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/UpdateLodingActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/l0;

.field final synthetic b:Lcom/join/mgps/activity/UpdateLodingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$h;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/UpdateLodingActivity$h;->a:Lcom/join/mgps/dialog/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$h;->a:Lcom/join/mgps/dialog/l0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$h;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity;->G0(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/service/UpdateLodingService;->l()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$h;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
