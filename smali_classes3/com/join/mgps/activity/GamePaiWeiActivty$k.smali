.class Lcom/join/mgps/activity/GamePaiWeiActivty$k;
.super Ljava/lang/Object;
.source "GamePaiWeiActivty.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$k;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$k;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->h(Lcom/join/mgps/activity/GamePaiWeiActivty;)Lcom/join/mgps/adapter/v4;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/v4;->a(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$k;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    iget-object p2, p1, Lcom/join/mgps/activity/GamePaiWeiActivty;->m:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->i(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->getRole()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$k;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->i(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    invoke-static {p1, p2}, Lcom/join/mgps/activity/GamePaiWeiActivty;->j(Lcom/join/mgps/activity/GamePaiWeiActivty;Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$k;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->G()V

    return-void
.end method
