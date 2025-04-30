.class Lcom/join/mgps/mod/activity/ModLoadingActivity$c$c;
.super Ljava/lang/Object;
.source "ModLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->onFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->O0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->N0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
