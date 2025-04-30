.class Lcom/join/mgps/adapter/w2$a;
.super Ljava/lang/Object;
.source "MemberFunAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/w2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;

.field final synthetic b:Lcom/join/mgps/adapter/w2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/w2;Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/w2$a;->b:Lcom/join/mgps/adapter/w2;

    iput-object p2, p0, Lcom/join/mgps/adapter/w2$a;->a:Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/w2$a;->a:Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/w2$a;->a:Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$MemberFunBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "?"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&game_id="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/mgps/adapter/w2$a;->b:Lcom/join/mgps/adapter/w2;

    invoke-static {p1}, Lcom/join/mgps/adapter/w2;->a(Lcom/join/mgps/adapter/w2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?game_id="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/mgps/adapter/w2$a;->b:Lcom/join/mgps/adapter/w2;

    invoke-static {p1}, Lcom/join/mgps/adapter/w2;->a(Lcom/join/mgps/adapter/w2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/w2$a;->b:Lcom/join/mgps/adapter/w2;

    invoke-static {v1}, Lcom/join/mgps/adapter/w2;->b(Lcom/join/mgps/adapter/w2;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
