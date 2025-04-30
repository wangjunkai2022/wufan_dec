.class Lcom/join/mgps/activity/b0$k;
.super Ljava/lang/Object;
.source "GameDetialModleThreeActivity.java"

# interfaces
.implements Lcom/join/mgps/Util/k1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b0;->P0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/activity/b0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/b0$k;->b:Lcom/join/mgps/activity/b0;

    iput-boolean p2, p0, Lcom/join/mgps/activity/b0$k;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/Util/k1$c;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/Util/k1$c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/b0$k;->b:Lcom/join/mgps/activity/b0;

    invoke-static {v0}, Lcom/join/mgps/activity/b0;->N(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->finish()V

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/k1;->c()Lcom/join/mgps/Util/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/b0$k;->b:Lcom/join/mgps/activity/b0;

    invoke-static {v1}, Lcom/join/mgps/activity/b0;->N(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/b0$k;->b:Lcom/join/mgps/activity/b0;

    iget-object v2, v2, Lcom/join/mgps/activity/b0;->J:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/Util/k1$c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/join/mgps/Util/k1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/b0$k;->b:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->N(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6388\u6743\u6210\u529f"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/b0$k;->a:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/b0$k;->b:Lcom/join/mgps/activity/b0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/b0;->P0(Z)V

    :cond_1
    :goto_0
    return-void
.end method
