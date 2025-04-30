.class Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$6;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$6;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->h:Z

    return-void
.end method
