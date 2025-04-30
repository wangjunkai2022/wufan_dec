.class Lcom/join/mgps/activity/HavenDownActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HavenDownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HavenDownActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/HavenDownActivity$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HavenDownActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HavenDownActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->a:Lcom/join/mgps/activity/HavenDownActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/HavenDownActivity$a;Lcom/join/mgps/dto/HavenForumListbean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/HavenDownActivity$a;->b(Lcom/join/mgps/dto/HavenForumListbean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Lcom/join/mgps/dto/HavenForumListbean;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->a:Lcom/join/mgps/activity/HavenDownActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity;->o:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/HavenForumListbean;->getPid()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goFormDetial(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/join/mgps/activity/HavenDownActivity$b;I)V
    .locals 3
    .param p1    # Lcom/join/mgps/activity/HavenDownActivity$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->a:Lcom/join/mgps/activity/HavenDownActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity;->s:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/HavenForumListbean;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/HavenForumListbean;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->a:Lcom/join/mgps/activity/HavenDownActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/HavenDownActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/HavenForumListbean;->getGameSimple()Lcom/join/mgps/dto/HavenForumListGameItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/HavenForumListbean;->getGameSimple()Lcom/join/mgps/dto/HavenForumListGameItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/HavenForumListGameItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/HavenForumListGameItem;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->e:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->e:Landroid/view/View;

    new-instance v2, Lcom/join/mgps/activity/p0;

    invoke-direct {v2, p0, p2}, Lcom/join/mgps/activity/p0;-><init>(Lcom/join/mgps/activity/HavenDownActivity$a;Lcom/join/mgps/dto/HavenForumListbean;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->c:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/HavenDownActivity$a$a;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/activity/HavenDownActivity$a$a;-><init>(Lcom/join/mgps/activity/HavenDownActivity$a;Lcom/join/mgps/dto/HavenForumListbean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->e:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_3
    iget-object v0, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :goto_0
    iget-object p1, p1, Lcom/join/mgps/activity/HavenDownActivity$b;->f:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/activity/HavenDownActivity$a$b;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/HavenDownActivity$a$b;-><init>(Lcom/join/mgps/activity/HavenDownActivity$a;Lcom/join/mgps/dto/HavenForumListbean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/HavenDownActivity$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->a:Lcom/join/mgps/activity/HavenDownActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/HavenDownActivity;->o:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c02c3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/activity/HavenDownActivity$b;

    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->a:Lcom/join/mgps/activity/HavenDownActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/HavenDownActivity$b;-><init>(Lcom/join/mgps/activity/HavenDownActivity;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity$a;->a:Lcom/join/mgps/activity/HavenDownActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/activity/HavenDownActivity$b;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/HavenDownActivity$a;->c(Lcom/join/mgps/activity/HavenDownActivity$b;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/HavenDownActivity$a;->d(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/HavenDownActivity$b;

    move-result-object p1

    return-object p1
.end method
