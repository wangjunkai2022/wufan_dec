.class Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameRoomSelecterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;

.field private b:I

.field final synthetic c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 p1, -0x400

    .line 2
    iput p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->b:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->b:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->b:I

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;)Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;

    return-object p0
.end method


# virtual methods
.method public d(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->b:I

    const/4 v2, 0x1

    const/16 v3, -0x400

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->e:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;->a:Landroid/view/View;

    iget v3, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->b:I

    if-ne v3, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 5
    :goto_1
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;->a:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c04e0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;Landroid/view/View;)V

    return-object p2
.end method

.method public f(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->d(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;

    move-result-object p1

    return-object p1
.end method
