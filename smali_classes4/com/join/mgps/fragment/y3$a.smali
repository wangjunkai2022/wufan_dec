.class Lcom/join/mgps/fragment/y3$a;
.super Ljava/lang/Object;
.source "PaPaStandAloneV2Fragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/y3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/y3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/y3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/y3$a;->a:Lcom/join/mgps/fragment/y3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$a;->a:Lcom/join/mgps/fragment/y3;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/y3;->isActivityFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$a;->a:Lcom/join/mgps/fragment/y3;

    invoke-static {v0}, Lcom/join/mgps/fragment/y3;->M(Lcom/join/mgps/fragment/y3;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$a;->a:Lcom/join/mgps/fragment/y3;

    invoke-static {v0}, Lcom/join/mgps/fragment/y3;->N(Lcom/join/mgps/fragment/y3;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$a;->a:Lcom/join/mgps/fragment/y3;

    iget-object v0, v0, Lcom/join/mgps/fragment/y3;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$a;->a:Lcom/join/mgps/fragment/y3;

    const v1, 0x7f110206

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/y3;->showToast(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3$a;->a:Lcom/join/mgps/fragment/y3;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/y3;->R()V

    :cond_2
    return-void
.end method
