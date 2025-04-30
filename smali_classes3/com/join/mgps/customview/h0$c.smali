.class Lcom/join/mgps/customview/h0$c;
.super Landroid/widget/BaseAdapter;
.source "PopSelectPostingGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/h0$c$a;,
        Lcom/join/mgps/customview/h0$c$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/customview/h0$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/customview/h0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/h0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/customview/h0$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/h0$c;->b:Lcom/join/mgps/customview/h0;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/h0$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h0$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h0$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h0$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/h0$b;

    iget p1, p1, Lcom/join/mgps/customview/h0$b;->a:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h0$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/h0$b;

    iget v0, v0, Lcom/join/mgps/customview/h0$b;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    :goto_0
    move-object p3, v3

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c033a

    invoke-virtual {p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/join/mgps/customview/h0$c$b;

    invoke-direct {p3, p0}, Lcom/join/mgps/customview/h0$c$b;-><init>(Lcom/join/mgps/customview/h0$c;)V

    const v4, 0x7f09113e

    .line 4
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p3, Lcom/join/mgps/customview/h0$c$b;->a:Landroid/widget/TextView;

    const v4, 0x7f090824

    .line 5
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p3, Lcom/join/mgps/customview/h0$c$b;->b:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 7
    :cond_1
    new-instance p2, Lcom/join/mgps/customview/h0$c$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/h0$c$a;-><init>(Lcom/join/mgps/customview/h0$c;)V

    .line 8
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v4, 0x7f0c032c

    invoke-virtual {p3, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v4, 0x7f091192

    .line 9
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p2, Lcom/join/mgps/customview/h0$c$a;->a:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v3, p2

    move-object p2, p3

    :goto_1
    move-object p3, v5

    goto :goto_2

    :cond_2
    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/customview/h0$c$b;

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/customview/h0$c$a;

    move-object v5, v3

    move-object v3, p3

    goto :goto_1

    :goto_2
    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/customview/h0$c$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/h0$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/h0$b;

    iget-object v1, v1, Lcom/join/mgps/customview/h0$b;->b:Lcom/join/mgps/dto/GroupInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GroupInfoBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/h0$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/h0$b;

    iget-object p1, p1, Lcom/join/mgps/customview/h0$b;->b:Lcom/join/mgps/dto/GroupInfoBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GroupInfoBean;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p3, Lcom/join/mgps/customview/h0$c$b;->b:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 16
    :cond_6
    iget-object p1, p3, Lcom/join/mgps/customview/h0$c$b;->b:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 17
    :cond_7
    iget-object p3, v3, Lcom/join/mgps/customview/h0$c$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/customview/h0$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/h0$b;

    iget-object p1, p1, Lcom/join/mgps/customview/h0$b;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
