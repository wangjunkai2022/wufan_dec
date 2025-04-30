.class public Lcom/join/mgps/adapter/z;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FriendAddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/z$a;,
        Lcom/join/mgps/adapter/z$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/join/mgps/adapter/z$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/z;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/z;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/z;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/z;->d(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic d(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/z;->c:Lcom/join/mgps/adapter/z$a;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/z$a;->G(Lcom/join/mgps/dto/FriendBean;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/join/mgps/adapter/z$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z;->c:Lcom/join/mgps/adapter/z$a;

    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/z;->b:Ljava/util/List;

    return-void
.end method

.method public f(Lcom/join/mgps/adapter/z$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/z;->c:Lcom/join/mgps/adapter/z$a;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/join/mgps/adapter/z$b;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/join/mgps/adapter/z$b;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/z;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/FriendBean;

    .line 4
    iget-object v0, p1, Lcom/join/mgps/adapter/z$b;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/join/mgps/adapter/z$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Lcom/join/mgps/adapter/z$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getFriendRequestType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getFriendRequestType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACCEPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/z$b;->c:Landroid/widget/TextView;

    const-string v0, "\u5df2\u6dfb\u52a0"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/z$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object p1, p1, Lcom/join/mgps/adapter/z$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getFriendRequestType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "REJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getFriendRequestType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "INIT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/z$b;->c:Landroid/widget/TextView;

    const-string v1, "\u52a0\u597d\u53cb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p1, Lcom/join/mgps/adapter/z$b;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 15
    iget-object p1, p1, Lcom/join/mgps/adapter/z$b;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/adapter/y;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/y;-><init>(Lcom/join/mgps/adapter/z;Lcom/join/mgps/dto/FriendBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/z$b;->c:Landroid/widget/TextView;

    const-string v0, "\u5df2\u53d1\u9001"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p2, p1, Lcom/join/mgps/adapter/z$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 18
    iget-object p1, p1, Lcom/join/mgps/adapter/z$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/z$b;

    iget-object v0, p0, Lcom/join/mgps/adapter/z;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c02f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/z$b;-><init>(Lcom/join/mgps/adapter/z;Landroid/view/View;)V

    return-object p2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/z;->a:Landroid/content/Context;

    return-void
.end method
