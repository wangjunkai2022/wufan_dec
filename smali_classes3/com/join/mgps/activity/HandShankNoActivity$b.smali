.class Lcom/join/mgps/activity/HandShankNoActivity$b;
.super Ljava/lang/Object;
.source "HandShankNoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankNoActivity;->d1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HandShankNoActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankNoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity$b;->a:Lcom/join/mgps/activity/HandShankNoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity$b;->a:Lcom/join/mgps/activity/HandShankNoActivity;

    const-class v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "from"

    const-string v1, "first"

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity$b;->a:Lcom/join/mgps/activity/HandShankNoActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity$b;->a:Lcom/join/mgps/activity/HandShankNoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
