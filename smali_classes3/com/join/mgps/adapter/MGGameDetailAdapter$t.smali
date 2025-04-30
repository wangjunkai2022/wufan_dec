.class Lcom/join/mgps/adapter/MGGameDetailAdapter$t;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;->A(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/DetialIntentBean;

.field final synthetic b:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/DetialIntentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;->a:Lcom/join/mgps/dto/DetialIntentBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;->a:Lcom/join/mgps/dto/DetialIntentBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetialIntentBean;->getIntentType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->r1(Landroid/content/Context;)Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$u;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;->a:Lcom/join/mgps/dto/DetialIntentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialIntentBean;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$u;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$u;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->P0(Landroid/content/Context;)Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;->a:Lcom/join/mgps/dto/DetialIntentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialIntentBean;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;->a(Ljava/lang/String;)Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->Z0(Landroid/content/Context;)Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;->a:Lcom/join/mgps/dto/DetialIntentBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;->a(Lcom/join/mgps/dto/DetialIntentBean;)Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    return-void
.end method
