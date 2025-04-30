.class Lcom/join/mgps/activity/MGInformationActivity$b;
.super Ljava/lang/Object;
.source "MGInformationActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGInformationActivity;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGInformationActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGInformationActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGInformationActivity$b;->a:Lcom/join/mgps/activity/MGInformationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity$b;->a:Lcom/join/mgps/activity/MGInformationActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGInformationActivity;->E0(Lcom/join/mgps/activity/MGInformationActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity$b;->a:Lcom/join/mgps/activity/MGInformationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGInformationActivity;->F0(Lcom/join/mgps/activity/MGInformationActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity$b;->a:Lcom/join/mgps/activity/MGInformationActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGInformationActivity;->H0()V

    return-void
.end method
