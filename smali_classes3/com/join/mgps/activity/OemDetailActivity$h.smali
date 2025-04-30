.class Lcom/join/mgps/activity/OemDetailActivity$h;
.super Ljava/lang/Object;
.source "OemDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/OemDetailActivity;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/OemDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/OemDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$h;->a:Lcom/join/mgps/activity/OemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity$h;->a:Lcom/join/mgps/activity/OemDetailActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/OemDetailActivity;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity$h;->a:Lcom/join/mgps/activity/OemDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/OemDetailActivity;->A:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->P0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$h;->a:Lcom/join/mgps/activity/OemDetailActivity;

    const-string v0, "\u60a8\u7684\u9285\u677f\u4e0d\u8db3"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/OemDetailActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
