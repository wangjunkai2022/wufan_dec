.class public Lcom/join/mgps/adapter/w2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MemberFunAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/w2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/w2;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/w2;->b:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/w2;->a:Ljava/util/List;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/w2;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/w2;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/w2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/w2;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/w2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/w2;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/w2;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/w2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/w2;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;

    .line 2
    instance-of v0, p1, Lcom/join/mgps/adapter/w2$b;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/join/mgps/adapter/w2$b;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;->getPic()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p1, Lcom/join/mgps/adapter/w2$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/adapter/w2$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p1, Lcom/join/mgps/adapter/w2$b;->a:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/join/mgps/adapter/w2$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/w2$a;-><init>(Lcom/join/mgps/adapter/w2;Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/w2$b;

    iget-object v0, p0, Lcom/join/mgps/adapter/w2;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0c031b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/w2$b;-><init>(Lcom/join/mgps/adapter/w2;Landroid/view/View;)V

    return-object p2
.end method
