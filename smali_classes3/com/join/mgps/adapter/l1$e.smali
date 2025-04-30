.class Lcom/join/mgps/adapter/l1$e;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/l1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/TipBean;

.field final synthetic b:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/TipBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e;->b:Lcom/join/mgps/adapter/l1;

    iput-object p2, p0, Lcom/join/mgps/adapter/l1$e;->a:Lcom/join/mgps/dto/TipBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$e;->b:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/TagGameListActivity_;->d1(Landroid/content/Context;)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->b(I)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$e;->a:Lcom/join/mgps/dto/TipBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->d(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$e;->a:Lcom/join/mgps/dto/TipBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->e(I)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    const-string v0, "3"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->f(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
