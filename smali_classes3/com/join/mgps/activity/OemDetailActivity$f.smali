.class Lcom/join/mgps/activity/OemDetailActivity$f;
.super Ljava/lang/Object;
.source "OemDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/OemDetailActivity;->V0()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$f;->a:Lcom/join/mgps/activity/OemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity$f;->a:Lcom/join/mgps/activity/OemDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/OemDetailActivity;->A:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$f;->a:Lcom/join/mgps/activity/OemDetailActivity;

    const-string v0, "\u793c\u5305\u83b7\u53d6\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/OemDetailActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->P0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
