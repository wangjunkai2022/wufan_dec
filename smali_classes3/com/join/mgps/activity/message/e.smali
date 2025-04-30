.class public Lcom/join/mgps/activity/message/e;
.super Landroidx/fragment/app/Fragment;
.source "NoticeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/e$d;,
        Lcom/join/mgps/activity/message/e$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0212
.end annotation


# instance fields
.field a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
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

.field private g:Lcom/join/mgps/dto/AccountBean;

.field h:Landroid/content/Context;

.field i:Lcom/join/mgps/activity/message/e$d;

.field j:I

.field k:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Z

.field m:Z

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/message/e;->j:I

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/e;->l:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/e;->m:Z

    return-void
.end method


# virtual methods
.method M()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

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

.method N(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/e$c;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/e;->i:Lcom/join/mgps/activity/message/e$d;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method O(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/e$c;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/e;->i:Lcom/join/mgps/activity/message/e$d;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method P(J)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u5e74"

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, "\u6708"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "\u65e5"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ":"

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const-string v0, "\u5206"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method Q()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/e;->l:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "wufun"

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/message/e;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/join/mgps/activity/message/e;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/message/e;->f:Lcom/join/mgps/rpc/h;

    iget-object v4, p0, Lcom/join/mgps/activity/message/e;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/activity/message/e;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/join/mgps/activity/message/e;->j:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/join/mgps/activity/message/e;->j:I

    const/16 v7, 0xa

    invoke-interface/range {v3 .. v9}, Lcom/join/mgps/rpc/h;->Q(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/NoticeFragmentBean;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->W()V

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/NoticeFragmentBean;->getData()Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/NoticeFragmentBean;->getData()Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;->getNotification_list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/join/mgps/dto/NoticeFragmentBean;->getData()Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;->getNotification_list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 11
    iget v4, p0, Lcom/join/mgps/activity/message/e;->j:I

    if-ne v4, v1, :cond_0

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/message/e;->n:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/message/e;->O(Ljava/util/List;)V

    .line 13
    :cond_0
    invoke-virtual {v3}, Lcom/join/mgps/dto/NoticeFragmentBean;->getData()Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;->getNotification_list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

    .line 14
    invoke-virtual {v5}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getJump_info()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getJump_info()Ljava/util/List;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v6, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 15
    new-instance v6, Lcom/join/mgps/activity/message/e$c;

    invoke-direct {v6, p0, v5, v2}, Lcom/join/mgps/activity/message/e$c;-><init>(Lcom/join/mgps/activity/message/e;Ljava/lang/Object;I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    new-instance v6, Lcom/join/mgps/activity/message/e$c;

    invoke-direct {v6, p0, v5, v1}, Lcom/join/mgps/activity/message/e$c;-><init>(Lcom/join/mgps/activity/message/e;Ljava/lang/Object;I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/NoticeFragmentBean;->getData()Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;->getNotification_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0xa

    if-ge v1, v3, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->U()V

    .line 19
    :cond_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/message/e;->l:Z

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/e;->N(Ljava/util/List;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->S()V

    goto :goto_1

    .line 22
    :cond_4
    iput-boolean v2, p0, Lcom/join/mgps/activity/message/e;->l:Z

    .line 23
    iget v0, p0, Lcom/join/mgps/activity/message/e;->j:I

    if-ne v0, v1, :cond_5

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->S()V

    .line 25
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/message/e;->V(I)V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->U()V

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->U()V

    goto :goto_1

    .line 28
    :cond_6
    iput-boolean v2, p0, Lcom/join/mgps/activity/message/e;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    iput-boolean v2, p0, Lcom/join/mgps/activity/message/e;->l:Z

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->S()V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->showLodingFailed()V

    goto :goto_1

    .line 33
    :cond_7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/message/e;->V(I)V

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->S()V

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->showLodingFailed()V

    :cond_8
    :goto_1
    return-void
.end method

.method R(Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;->getJump_type()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;->getLink_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/message/e;->h:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method S()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/activity/message/e;->d:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method T()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/activity/message/e;->e:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method U()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    :cond_0
    return-void
.end method

.method V(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/message/e;->e:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/message/e;->e:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method W()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->h:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->f:Lcom/join/mgps/rpc/h;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->g:Lcom/join/mgps/dto/AccountBean;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->n:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/message/e$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/e$d;-><init>(Lcom/join/mgps/activity/message/e;)V

    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->i:Lcom/join/mgps/activity/message/e$d;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/message/e$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/e$a;-><init>(Lcom/join/mgps/activity/message/e;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/message/e$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/e$b;-><init>(Lcom/join/mgps/activity/message/e;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->k()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->showLoding()V

    .line 11
    iget-boolean v0, p0, Lcom/join/mgps/activity/message/e;->l:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->Q()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/e;->l:Z

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/activity/message/e;->m:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/message/e;->m:Z

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/join/mgps/activity/message/e;->j:I

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->Q()V

    :cond_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->d:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/e;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
