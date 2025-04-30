.class Lcom/join/mgps/adapter/b2$a;
.super Ljava/lang/Object;
.source "GameRecommendAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/b2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/b2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/b2;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b2$a;->c:Lcom/join/mgps/adapter/b2;

    iput-object p2, p0, Lcom/join/mgps/adapter/b2$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/join/mgps/adapter/b2$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/b2$a;->c:Lcom/join/mgps/adapter/b2;

    invoke-static {p1}, Lcom/join/mgps/adapter/b2;->a(Lcom/join/mgps/adapter/b2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickIndexAdEvent:Lcom/papa/sim/statistic/Event;

    iget-object p1, p0, Lcom/join/mgps/adapter/b2$a;->c:Lcom/join/mgps/adapter/b2;

    invoke-static {p1}, Lcom/join/mgps/adapter/b2;->a(Lcom/join/mgps/adapter/b2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/adapter/b2$a;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1-"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/join/mgps/adapter/b2$a;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->W0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v6

    iget-object p1, p0, Lcom/join/mgps/adapter/b2$a;->c:Lcom/join/mgps/adapter/b2;

    invoke-static {p1}, Lcom/join/mgps/adapter/b2;->a(Lcom/join/mgps/adapter/b2;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/adapter/b2$a;->a:Ljava/lang/String;

    const-string v9, "0"

    const/4 v10, 0x1

    const/16 v11, 0x7a

    invoke-virtual/range {v6 .. v11}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
