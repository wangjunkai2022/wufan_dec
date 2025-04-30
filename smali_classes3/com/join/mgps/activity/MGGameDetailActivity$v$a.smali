.class Lcom/join/mgps/activity/MGGameDetailActivity$v$a;
.super Ljava/lang/Object;
.source "MGGameDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity$v;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/MGGameDetailActivity$w;

.field final synthetic c:Lcom/join/mgps/activity/MGGameDetailActivity$v;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity$v;ILcom/join/mgps/activity/MGGameDetailActivity$w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iput p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->a:I

    iput-object p3, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->b:Lcom/join/mgps/activity/MGGameDetailActivity$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->i1:Ljava/util/List;

    iget v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getCurrent_game_state()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->b:Lcom/join/mgps/activity/MGGameDetailActivity$w;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$w;->b:Landroid/widget/ImageView;

    const v0, 0x7f080428

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->U0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->b1:Lcom/join/mgps/customview/XListView2;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->Y0:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->Z0:Landroid/widget/TextView;

    const-string v3, "\u6536\u85cf\u6210\u529f"

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->a1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->i1:Ljava/util/List;

    iget v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/join/mgps/activity/MGGameDetailActivity;->m1:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iput-boolean v2, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->j1:Z

    .line 10
    iget v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->R0:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->R0:I

    if-lez v0, :cond_1

    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->O0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_follow(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->C1()V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->b:Lcom/join/mgps/activity/MGGameDetailActivity$w;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$w;->b:Landroid/widget/ImageView;

    const v3, 0x7f080427

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->i1:Ljava/util/List;

    iget v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->a:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setCurrent_game_state(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->i1:Ljava/util/List;

    iget v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object v3, v3, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/MGGameDetailActivity;->S0:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->b:Lcom/join/mgps/activity/MGGameDetailActivity$w;

    invoke-virtual {p1, v0, v3, v4}, Lcom/join/mgps/activity/MGGameDetailActivity;->F0(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->R0:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->R0:I

    iput v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->R0:I

    if-nez v0, :cond_1

    .line 17
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->O0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_follow(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->C1()V

    :cond_1
    :goto_0
    return-void
.end method
