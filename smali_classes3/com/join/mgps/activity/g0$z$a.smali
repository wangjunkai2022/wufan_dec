.class Lcom/join/mgps/activity/g0$z$a;
.super Ljava/lang/Object;
.source "GamedetialModleBtFragemnt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/g0$z;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/g0$a0;

.field final synthetic c:Lcom/join/mgps/activity/g0$z;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/g0$z;ILcom/join/mgps/activity/g0$a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iput p2, p0, Lcom/join/mgps/activity/g0$z$a;->a:I

    iput-object p3, p0, Lcom/join/mgps/activity/g0$z$a;->b:Lcom/join/mgps/activity/g0$a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->a1:Ljava/util/List;

    iget v0, p0, Lcom/join/mgps/activity/g0$z$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getCurrent_game_state()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->b:Lcom/join/mgps/activity/g0$a0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$a0;->b:Landroid/widget/ImageView;

    const v0, 0x7f080428

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->M0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->T0:Lcom/join/mgps/customview/XListView2;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->Q0:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->R0:Landroid/widget/TextView;

    const-string v3, "\u6536\u85cf\u6210\u529f"

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->S0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->a1:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/activity/g0$z$a;->a:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/join/mgps/activity/g0;->G1:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iput-boolean v1, p1, Lcom/join/mgps/activity/g0;->b1:Z

    .line 10
    iget v1, p1, Lcom/join/mgps/activity/g0;->D0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/join/mgps/activity/g0;->D0:I

    if-lez v1, :cond_1

    .line 11
    iget-object p1, p1, Lcom/join/mgps/activity/g0;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->D:Landroid/widget/TextView;

    const-string v0, "\u5df2\u6536\u85cf"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->b:Lcom/join/mgps/activity/g0$a0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$a0;->b:Landroid/widget/ImageView;

    const v1, 0x7f080427

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->a1:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/activity/g0$z$a;->a:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setCurrent_game_state(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object v0, p1, Lcom/join/mgps/activity/g0;->a1:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/activity/g0$z$a;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object v2, v2, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object v2, v2, Lcom/join/mgps/activity/g0;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/g0$z$a;->b:Lcom/join/mgps/activity/g0$a0;

    invoke-virtual {p1, v0, v2, v3}, Lcom/join/mgps/activity/g0;->P(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/g0$a0;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget v0, p1, Lcom/join/mgps/activity/g0;->D0:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/join/mgps/activity/g0;->D0:I

    iput v0, p1, Lcom/join/mgps/activity/g0;->D0:I

    if-nez v0, :cond_1

    .line 17
    iget-object p1, p1, Lcom/join/mgps/activity/g0;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/g0$z$a;->c:Lcom/join/mgps/activity/g0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/g0$z;->a:Lcom/join/mgps/activity/g0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->D:Landroid/widget/TextView;

    const-string v0, "\u6536\u85cf"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
