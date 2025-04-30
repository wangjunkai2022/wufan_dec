.class Lcom/join/mgps/activity/ShareGameActivity$a;
.super Lcom/zhy/view/flowlayout/b;
.source "ShareGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity;->W0(Lcom/join/mgps/dto/GameShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/view/flowlayout/b<",
        "Lcom/join/mgps/dto/TipBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/join/mgps/activity/ShareGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$a;->d:Lcom/join/mgps/activity/ShareGameActivity;

    invoke-direct {p0, p2}, Lcom/zhy/view/flowlayout/b;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Lcom/zhy/view/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    check-cast p3, Lcom/join/mgps/dto/TipBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/ShareGameActivity$a;->j(Lcom/zhy/view/flowlayout/FlowLayout;ILcom/join/mgps/dto/TipBean;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/zhy/view/flowlayout/FlowLayout;ILcom/join/mgps/dto/TipBean;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$a;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/ShareGameActivity;->n0:Landroid/view/LayoutInflater;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->E:Lcom/zhy/view/flowlayout/TagFlowLayout;

    const v0, 0x7f0c0585

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
