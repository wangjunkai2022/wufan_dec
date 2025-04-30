.class public Lcom/join/mgps/activity/message/c;
.super Landroidx/fragment/app/Fragment;
.source "MessagePriaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/c$g;,
        Lcom/join/mgps/activity/message/c$h;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c01fe
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

.field d:Lcom/join/mgps/activity/message/c$g;

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/mgps/rpc/d;

.field j:Lcom/join/mgps/rpc/e;

.field k:Landroid/content/Context;

.field l:I

.field m:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field n:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Z

.field private p:Lcom/join/mgps/dto/AccountBean;

.field q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/c$h;",
            ">;"
        }
    .end annotation
.end field

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field s:Z

.field t:Landroid/widget/PopupWindow;

.field u:[Landroid/text/InputFilter;

.field v:Z

.field w:Landroid/view/View;

.field x:Landroid/view/View;

.field y:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/message/c;->l:I

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/c;->o:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/c;->s:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/c;->v:Z

    return-void
.end method

.method private a0(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->t:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method M()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/c$h;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->d:Lcom/join/mgps/activity/message/c$g;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/activity/message/c;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 2
    iget-object v1, v0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/activity/message/c;->p:Lcom/join/mgps/dto/AccountBean;

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    .line 4
    iget-object v2, v0, Lcom/join/mgps/activity/message/c;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcom/join/mgps/activity/message/c;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, v0, Lcom/join/mgps/activity/message/c;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v4

    move v13, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    move-object v10, v2

    move-object v11, v10

    move-object v12, v11

    const/4 v13, -0x1

    .line 7
    :goto_0
    iget-object v1, v0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v8, 0x2

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p2

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move/from16 v17, p8

    invoke-virtual/range {v2 .. v17}, Lcom/join/mgps/Util/RequestBeanUtil;->getReplyCreateCommentBean(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;

    move-result-object v1

    return-object v1
.end method

.method P()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->j:Lcom/join/mgps/rpc/e;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->c(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentTokenBean;->getTimes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method Q()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_8

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v3

    iget v4, p0, Lcom/join/mgps/activity/message/c;->l:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/join/mgps/activity/message/c;->l:I

    iget-object v5, p0, Lcom/join/mgps/activity/message/c;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    iget-object v6, p0, Lcom/join/mgps/activity/message/c;->p:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameReplyMessageRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->i:Lcom/join/mgps/rpc/d;

    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/d;->b0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GameReplyMessageListBean;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->f0()V

    if-eqz v3, :cond_9

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameReplyMessageListBean;->getMessages()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameReplyMessageListBean;->getMessages()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;->getData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameReplyMessageListBean;->getMessages()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameReplyMessageListBean;->getMessages()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;->getData()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    .line 8
    iget v3, p0, Lcom/join/mgps/activity/message/c;->l:I

    if-ne v3, v2, :cond_0

    .line 9
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/message/c;->q:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/message/c;->N(Ljava/util/List;)V

    :cond_0
    const/4 v3, 0x0

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 12
    new-instance v4, Lcom/join/mgps/activity/message/c$h;

    invoke-direct {v4, p0, v0, v5}, Lcom/join/mgps/activity/message/c$h;-><init>(Lcom/join/mgps/activity/message/c;Ljava/lang/Object;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 14
    new-instance v4, Lcom/join/mgps/activity/message/c$h;

    iget-object v6, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, p0, v6, v2}, Lcom/join/mgps/activity/message/c$h;-><init>(Lcom/join/mgps/activity/message/c;Ljava/lang/Object;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_1
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 16
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 17
    new-instance v4, Lcom/join/mgps/activity/message/c$h;

    iget-object v6, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v4, p0, v6, v7}, Lcom/join/mgps/activity/message/c$h;-><init>(Lcom/join/mgps/activity/message/c;Ljava/lang/Object;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 19
    new-instance v4, Lcom/join/mgps/activity/message/c$h;

    iget-object v6, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {v4, p0, v6, v7}, Lcom/join/mgps/activity/message/c$h;-><init>(Lcom/join/mgps/activity/message/c;Ljava/lang/Object;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_3
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 21
    new-instance v4, Lcom/join/mgps/activity/message/c$h;

    iget-object v6, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x5

    invoke-direct {v4, p0, v6, v7}, Lcom/join/mgps/activity/message/c$h;-><init>(Lcom/join/mgps/activity/message/c;Ljava/lang/Object;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 22
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/message/c;->T(Ljava/util/List;)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->R()V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->W()V

    goto :goto_1

    .line 26
    :cond_6
    iget v0, p0, Lcom/join/mgps/activity/message/c;->l:I

    if-ne v0, v2, :cond_7

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->R()V

    .line 28
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/message/c;->Z(I)V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->W()V

    goto :goto_1

    .line 30
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->W()V

    goto :goto_1

    .line 31
    :cond_8
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/message/c;->Z(I)V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->R()V

    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->R()V

    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->showLodingFailed()V

    :cond_9
    :goto_1
    return-void
.end method

.method R()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->f:Landroid/widget/LinearLayout;

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

.method S()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method T(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/c$h;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->d:Lcom/join/mgps/activity/message/c$g;

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

.method U(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v0

    const/16 v1, 0x321

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->P()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6570\u636e\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method W()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    :cond_0
    return-void
.end method

.method X(Ljava/lang/String;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4e0d\u80fd\u56de\u590d\u7a7a\u5b57\u7b26\u4e32"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v2}, Lcom/join/mgps/Util/c2;->d(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8d85\u8fc73\u4e2a\u5b57\u624d\u80fd\u56de\u590d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text_id()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_title()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v7, v2, v11

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getGame_id()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text_uid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v9, p0, Lcom/join/mgps/activity/message/c;->l:I

    move-object v1, p0

    move-object v3, v8

    move-object v4, p1

    .line 10
    invoke-virtual/range {v1 .. v9}, Lcom/join/mgps/activity/message/c;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->j:Lcom/join/mgps/rpc/e;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->d(Lcom/join/mgps/dto/CommentCreateArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v1

    const/16 v2, 0x321

    if-ne v1, v2, :cond_2

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/c;->U(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v10, v11}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentCreateBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentCreateBean;->getInfo()Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "\u56de\u590d\u6210\u529f\uff0c\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a"

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentCreateBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentCreateBean;->getInfo()Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    goto :goto_0

    :cond_4
    const-string v0, "\u56de\u590d\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 18
    invoke-virtual {p0, v0, v10, v11}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v10, v11}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 21
    invoke-virtual {p0, v0, v10, v11}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method Z(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->g:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->g:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
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

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->q:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->r:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/message/c$g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/message/c$g;-><init>(Lcom/join/mgps/activity/message/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->d:Lcom/join/mgps/activity/message/c$g;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->i:Lcom/join/mgps/rpc/d;

    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->m()Lcom/join/mgps/rpc/impl/d;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->j:Lcom/join/mgps/rpc/e;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->p:Lcom/join/mgps/dto/AccountBean;

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->showLoding()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->Q()V

    .line 12
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    move-result v0

    if-lez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->d0()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/message/c$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/c$a;-><init>(Lcom/join/mgps/activity/message/c;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/message/c$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/c$b;-><init>(Lcom/join/mgps/activity/message/c;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->k()V

    return-void
.end method

.method b0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 13
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/c;->o:Z

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->w:Landroid/view/View;

    const/16 v2, 0x21

    const/16 v3, 0xf

    const-string v4, ":"

    const-string v5, " "

    const-string v6, "@ "

    const/4 v7, 0x2

    const-string v8, "input_method"

    const/4 v9, 0x1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v10, 0x7f0c008f

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/message/c;->w:Landroid/view/View;

    .line 4
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/join/mgps/activity/message/c;->w:Landroid/view/View;

    const/4 v12, -0x1

    invoke-direct {v1, v10, v12, v12, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/join/mgps/activity/message/c;->t:Landroid/widget/PopupWindow;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->w:Landroid/view/View;

    const v10, 0x7f0903f5

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/widget/EditText;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->w:Landroid/view/View;

    const v10, 0x7f090921

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 7
    new-instance v10, Lcom/join/mgps/activity/message/c$c;

    invoke-direct {v10, p0}, Lcom/join/mgps/activity/message/c$c;-><init>(Lcom/join/mgps/activity/message/c;)V

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v1, Landroid/text/SpannableString;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_title()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v4, v3, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 10
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/widget/EditText;

    new-instance v3, Landroid/text/SpannedString;

    invoke-direct {v3, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->w:Landroid/view/View;

    const v2, 0x7f0901c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/widget/EditText;

    new-instance v3, Lcom/join/mgps/activity/message/c$d;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/message/c$d;-><init>(Lcom/join/mgps/activity/message/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    new-instance v2, Lcom/join/mgps/activity/message/c$e;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/activity/message/c$e;-><init>(Lcom/join/mgps/activity/message/c;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/widget/EditText;

    invoke-virtual {p1, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->t:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/widget/EditText;

    invoke-virtual {p1, v9}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/widget/EditText;

    invoke-virtual {p1, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 21
    invoke-virtual {p1, v0, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/message/c$f;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/message/c$f;-><init>(Lcom/join/mgps/activity/message/c;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c01fe

    invoke-virtual {p1, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/message/c;->x:Landroid/view/View;

    .line 25
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/message/c;->a0(Landroid/view/View;)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 27
    invoke-virtual {v1, v0, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 28
    new-instance v1, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 29
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p1, v3, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 30
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/widget/EditText;

    new-instance v2, Landroid/text/SpannedString;

    invoke-direct {v2, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->t:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->x:Landroid/view/View;

    const/16 v2, 0x51

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void
.end method

.method c0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method d0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method e0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->S()V

    .line 2
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setPraise_surplus_number(I)V

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/join/mgps/activity/GivePraiceActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    const-string v2, "praice"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method f0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Lcom/join/mgps/customview/XListView2;

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

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/activity/message/c;->s:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/message/c;->s:Z

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/join/mgps/activity/message/c;->l:I

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->Q()V

    :cond_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->f:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->k:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
