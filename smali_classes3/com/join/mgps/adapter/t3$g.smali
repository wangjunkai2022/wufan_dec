.class public Lcom/join/mgps/adapter/t3$g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PaPaStandAloneV2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/t3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/adapter/t3$h;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/StandAloneListBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/adapter/t3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/t3;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t3$g;->c:Lcom/join/mgps/adapter/t3;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/t3$g;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/t3$g;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/t3$g;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t3$g;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/join/mgps/adapter/t3$h;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t3$g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/StandAloneListBean$ListBean;

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/mgps/adapter/t3$g;->d(Lcom/join/mgps/adapter/t3$h;Lcom/join/mgps/dto/StandAloneListBean$ListBean;I)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/t3$h;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c034b

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/t3$h;

    iget-object v0, p0, Lcom/join/mgps/adapter/t3$g;->c:Lcom/join/mgps/adapter/t3;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/adapter/t3$h;-><init>(Lcom/join/mgps/adapter/t3;Landroid/view/View;)V

    const v0, 0x7f090ec1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/join/mgps/adapter/t3$h;->a:Landroid/view/View;

    const v0, 0x7f090ebf

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/t3$h;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f090ec0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/t3$h;->c:Landroid/widget/TextView;

    const v0, 0x7f090ebe

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/t3$h;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090ec2

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/join/mgps/adapter/t3$h;->e:Landroid/view/View;

    return-object p2
.end method

.method public d(Lcom/join/mgps/adapter/t3$h;Lcom/join/mgps/dto/StandAloneListBean$ListBean;I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p1, Lcom/join/mgps/adapter/t3$h;->a:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p3, p1, Lcom/join/mgps/adapter/t3$h;->e:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/adapter/t3$g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_1

    .line 4
    iget-object p3, p1, Lcom/join/mgps/adapter/t3$h;->a:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p3, p1, Lcom/join/mgps/adapter/t3$h;->e:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p3, p1, Lcom/join/mgps/adapter/t3$h;->a:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p3, p1, Lcom/join/mgps/adapter/t3$h;->e:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :goto_0
    iget-object p3, p1, Lcom/join/mgps/adapter/t3$h;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p3, p1, Lcom/join/mgps/adapter/t3$h;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getPic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 10
    iget-object p1, p1, Lcom/join/mgps/adapter/t3$h;->b:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/join/mgps/adapter/t3$g$a;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/t3$g$a;-><init>(Lcom/join/mgps/adapter/t3$g;Lcom/join/mgps/dto/StandAloneListBean$ListBean;)V

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t3$g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/adapter/t3$h;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/t3$g;->b(Lcom/join/mgps/adapter/t3$h;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/t3$g;->c(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/t3$h;

    move-result-object p1

    return-object p1
.end method

.method public setListDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/StandAloneListBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t3$g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/t3$g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
