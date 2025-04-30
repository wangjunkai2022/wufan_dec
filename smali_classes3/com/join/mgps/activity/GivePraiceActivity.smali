.class public Lcom/join/mgps/activity/GivePraiceActivity;
.super Lcom/BaseFragmentActivity;
.source "GivePraiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GivePraiceActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0047
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/rpc/h;

.field g:Landroid/content/Context;

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:I

.field private k:Lcom/join/mgps/dto/AccountBean;

.field l:Lcom/join/mgps/activity/GivePraiceActivity$d;

.field m:Ljava/lang/String;

.field n:Lcom/join/mgps/dto/ForumResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumProfileMessageData;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumProfileMessageBean;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field q:I

.field r:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->j:I

    return-void
.end method


# virtual methods
.method D0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->g:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->f:Lcom/join/mgps/rpc/h;

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->k:Lcom/join/mgps/dto/AccountBean;

    .line 4
    new-instance v0, Lcom/join/mgps/activity/GivePraiceActivity$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GivePraiceActivity$d;-><init>(Lcom/join/mgps/activity/GivePraiceActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->l:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->o:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->l:Lcom/join/mgps/activity/GivePraiceActivity$d;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "praice"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->q:I

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->showLoding()V

    .line 10
    iget v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->q:I

    if-ne v0, v2, :cond_0

    const-string v0, "\u5e16\u5b50:"

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->m:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->K0()V

    goto :goto_0

    :cond_0
    const-string v0, "\u70b9\u8bc4:"

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->m:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->L0()V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GivePraiceActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GivePraiceActivity$a;-><init>(Lcom/join/mgps/activity/GivePraiceActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GivePraiceActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GivePraiceActivity$b;-><init>(Lcom/join/mgps/activity/GivePraiceActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->k()V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/GivePraiceActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GivePraiceActivity$c;-><init>(Lcom/join/mgps/activity/GivePraiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method E0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method F0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method G0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumProfileMessageBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->l:Lcom/join/mgps/activity/GivePraiceActivity$d;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method H0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->l:Lcom/join/mgps/activity/GivePraiceActivity$d;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method I0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumProfileMessageBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->l:Lcom/join/mgps/activity/GivePraiceActivity$d;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method J0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->l:Lcom/join/mgps/activity/GivePraiceActivity$d;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method K0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/GivePraiceActivity;->f:Lcom/join/mgps/rpc/h;

    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/GivePraiceActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/join/mgps/activity/GivePraiceActivity;->j:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/join/mgps/activity/GivePraiceActivity;->j:I

    const/16 v6, 0xa

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/join/mgps/rpc/h;->m0(ILjava/lang/String;II)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->Q0()V

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumProfileMessageData;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumProfileMessageData;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 7
    iget v3, p0, Lcom/join/mgps/activity/GivePraiceActivity;->j:I

    if-ne v3, v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->o:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GivePraiceActivity;->I0(Ljava/util/List;)V

    .line 9
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v6, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->N0()V

    .line 11
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GivePraiceActivity;->G0(Ljava/util/List;)V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->M0()V

    goto :goto_1

    .line 15
    :cond_3
    iget v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->j:I

    if-ne v0, v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->M0()V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->N0()V

    .line 18
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GivePraiceActivity;->O0(I)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->N0()V

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->M0()V

    .line 21
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GivePraiceActivity;->O0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->M0()V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->showLodingFailed()V

    goto :goto_1

    .line 25
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GivePraiceActivity;->O0(I)V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->M0()V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->showLodingFailed()V

    :cond_7
    :goto_1
    return-void
.end method

.method L0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_9

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/android/v2/message/praisenoticemessagelist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v3

    iget v4, p0, Lcom/join/mgps/activity/GivePraiceActivity;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/join/mgps/activity/GivePraiceActivity;->j:I

    iget-object v5, p0, Lcom/join/mgps/activity/GivePraiceActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    iget-object v6, p0, Lcom/join/mgps/activity/GivePraiceActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getPraiceMessPra(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/join/mgps/activity/GivePraiceActivity;->f:Lcom/join/mgps/rpc/h;

    invoke-interface {v4, v2, v3}, Lcom/join/mgps/rpc/h;->m(Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GivePriaceBean;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->Q0()V

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean;->getMessages()Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean;->getMessages()Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;->getData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean;->getMessages()Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 9
    iget v3, p0, Lcom/join/mgps/activity/GivePraiceActivity;->j:I

    if-ne v3, v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GivePraiceActivity;->J0(Ljava/util/List;)V

    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean;->getMessages()Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean;->getMessages()Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->N0()V

    .line 15
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GivePraiceActivity;->H0(Ljava/util/List;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->M0()V

    goto :goto_1

    .line 17
    :cond_3
    iget v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->j:I

    if-ne v0, v1, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->M0()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->N0()V

    .line 20
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GivePraiceActivity;->O0(I)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->N0()V

    goto :goto_1

    .line 22
    :cond_5
    iget v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->j:I

    if-ne v0, v1, :cond_6

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->M0()V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->N0()V

    .line 25
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GivePraiceActivity;->O0(I)V

    goto :goto_1

    .line 26
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->N0()V

    goto :goto_1

    .line 27
    :cond_7
    iget v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->j:I

    if-ne v0, v1, :cond_8

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->M0()V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->N0()V

    .line 30
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GivePraiceActivity;->O0(I)V

    goto :goto_1

    .line 31
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->N0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 33
    :cond_9
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GivePraiceActivity;->O0(I)V

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->M0()V

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/GivePraiceActivity;->showLodingFailed()V

    :goto_1
    return-void
.end method

.method M0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method N0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    :cond_0
    return-void
.end method

.method O0(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->h:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method P0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u5e16\u5b50\u5df2\u5220\u9664"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method Q0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
