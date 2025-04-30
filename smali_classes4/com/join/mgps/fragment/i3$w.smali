.class Lcom/join/mgps/fragment/i3$w;
.super Landroid/content/BroadcastReceiver;
.source "MyArchiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/i3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "w"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/i3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$w;->a:Lcom/join/mgps/fragment/i3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$w;->a:Lcom/join/mgps/fragment/i3;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/join/mgps/fragment/i3;->B:Z

    .line 2
    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->a:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$w;->a:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$w;->a:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$w;->a:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$w;->a:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->b:Landroid/widget/ImageView;

    const p2, 0x7f080169

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$w;->a:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->c:Landroid/widget/TextView;

    const-string p2, "\u5df2\u9009\u62e90\u4e2a\u5b58\u6863"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$w;->a:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
