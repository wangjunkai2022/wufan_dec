.class Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;
.super Ljava/lang/Object;
.source "HandShankCheckKeyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankCheckKeyActivity;->Z0(Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

.field final synthetic b:Lcom/join/mgps/activity/HandShankCheckKeyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->b:Lcom/join/mgps/activity/HandShankCheckKeyActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->a:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->a:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->b:Lcom/join/mgps/activity/HandShankCheckKeyActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->U0(Lcom/join/mgps/activity/HandShankCheckKeyActivity;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->b:Lcom/join/mgps/activity/HandShankCheckKeyActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->a:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    iget v1, v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->a:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    iget v1, v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method
