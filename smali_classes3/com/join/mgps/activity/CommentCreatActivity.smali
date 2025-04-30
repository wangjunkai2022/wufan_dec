.class public Lcom/join/mgps/activity/CommentCreatActivity;
.super Lcom/BaseAppCompatActivity;
.source "CommentCreatActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00fc
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/MStarBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field l:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:F
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field n:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field o:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field p:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field q:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field r:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field s:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field t:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field u:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field v:Lcom/join/mgps/rpc/e;

.field w:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private x:Z

.field private y:Lcom/join/mgps/dto/AccountBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->x:Z

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/CommentCreatActivity;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentCreatActivity;->L0(F)V

    return-void
.end method

.method public static G0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private L0(F)V
    .locals 1

    float-to-int p1, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->g:Landroid/widget/TextView;

    const-string v0, "\u70b9\u51fb\u661f\u661f\u8bc4\u5206"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->g:Landroid/widget/TextView;

    const-string v0, "\u5fc5\u73a9\u795e\u4f5c"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->g:Landroid/widget/TextView;

    const-string v0, "\u5f3a\u70c8\u63a8\u8350"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->g:Landroid/widget/TextView;

    const-string v0, "\u503c\u5f97\u4e00\u73a9"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->g:Landroid/widget/TextView;

    const-string v0, "\u6253\u53d1\u65f6\u95f4"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->g:Landroid/widget/TextView;

    const-string v0, "\u6d6a\u8d39\u751f\u547d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public E0(FLjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentCreateArgs;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/activity/CommentCreatActivity;->w:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 2
    iget-object v1, v0, Lcom/join/mgps/activity/CommentCreatActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v15

    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/activity/CommentCreatActivity;->y:Lcom/join/mgps/dto/AccountBean;

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    .line 5
    iget-object v2, v0, Lcom/join/mgps/activity/CommentCreatActivity;->y:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, v0, Lcom/join/mgps/activity/CommentCreatActivity;->y:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, v0, Lcom/join/mgps/activity/CommentCreatActivity;->y:Lcom/join/mgps/dto/AccountBean;

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

    .line 8
    :goto_0
    iget-object v1, v0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/join/mgps/activity/CommentCreatActivity;->n:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v14, 0x1

    const-string v9, "0"

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v15}, Lcom/join/mgps/Util/RequestBeanUtil;->getCreateCommentBean(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/CommentCreateArgs;

    move-result-object v1

    return-object v1
.end method

.method public F0(FLjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentModifyArgs;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->w:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->y:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->y:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    move v5, v0

    move-object v7, v1

    goto :goto_0

    :cond_0
    const-string v0, ""

    const/4 v1, -0x1

    move-object v7, v0

    const/4 v5, -0x1

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/activity/CommentCreatActivity;->n:Ljava/lang/String;

    iget-object v6, p0, Lcom/join/mgps/activity/CommentCreatActivity;->k:Ljava/lang/String;

    move-object v3, p3

    move-object v8, p2

    move v9, p1

    invoke-virtual/range {v1 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->getModifyCommentBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)Lcom/join/mgps/dto/CommentModifyArgs;

    move-result-object p1

    return-object p1
.end method

.method H0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->v:Lcom/join/mgps/rpc/e;

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
    iget-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->w:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->w:Lcom/join/mgps/pref/PrefDef_;

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

.method I0(IDLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v9, Lcom/join/mgps/event/h;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v6, v1, v3

    move-object v1, v9

    move v2, p1

    move-object v3, p4

    move-wide v4, p2

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/join/mgps/event/h;-><init>(ILjava/lang/String;DJLjava/lang/String;)V

    .line 3
    invoke-virtual {v0, v9}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method J0(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method K0(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v0

    const/16 v1, 0x321

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentCreatActivity;->H0()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6570\u636e\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method M0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->e:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->t:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    cmpl-float v1, v0, v2

    if-nez v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u70b9\u51fb\u661f\u661f\u8bc4\u5206"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x320

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/join/mgps/activity/CommentCreatActivity;->N0(FLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u586b\u51993~800\u4e2a\u5b57"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method N0(FLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentCreatActivity;->E0(FLjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentCreateArgs;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->v:Lcom/join/mgps/rpc/e;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/e;->d(Lcom/join/mgps/dto/CommentCreateArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentCreatActivity;->F0(FLjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentModifyArgs;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->v:Lcom/join/mgps/rpc/e;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/e;->a(Lcom/join/mgps/dto/CommentModifyArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p1

    const/16 p2, 0x321

    if-ne p1, p2, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentCreatActivity;->K0(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/CommentCreatActivity;->J0(Ljava/lang/String;Z)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentCreateBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentCreateBean;->getInfo()Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p3, ""

    :cond_3
    move-object v8, p3

    .line 13
    iget-object p3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->k:Ljava/lang/String;

    if-nez p3, :cond_4

    const/4 v4, 0x0

    float-to-double v5, p1

    move-object v3, p0

    move-object v7, p2

    .line 14
    invoke-virtual/range {v3 .. v8}, Lcom/join/mgps/activity/CommentCreatActivity;->I0(IDLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u70b9\u8bc4\u521b\u5efa\u6210\u529f,\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a\uff01"

    .line 15
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/CommentCreatActivity;->J0(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    float-to-double v5, p1

    move-object v3, p0

    move-object v7, p2

    .line 16
    invoke-virtual/range {v3 .. v8}, Lcom/join/mgps/activity/CommentCreatActivity;->I0(IDLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u70b9\u8bc4\u4fee\u6539\u6210\u529f,\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a\uff01"

    .line 17
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/CommentCreatActivity;->J0(Ljava/lang/String;Z)V

    goto :goto_1

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->k:Ljava/lang/String;

    if-nez p1, :cond_6

    const-string p1, "\u70b9\u8bc4\u521b\u5efa\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 19
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/CommentCreatActivity;->J0(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    const-string p1, "\u70b9\u8bc4\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 20
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/CommentCreatActivity;->J0(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lcom/join/mgps/activity/CommentCreatActivity;->J0(Ljava/lang/String;Z)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_7
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 23
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/CommentCreatActivity;->J0(Ljava/lang/String;Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method afterView()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->m()Lcom/join/mgps/rpc/impl/d;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->v:Lcom/join/mgps/rpc/e;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->t:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->f:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->e:Lcom/join/mgps/customview/MStarBar;

    iget v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->m:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 9
    iget v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->m:F

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/CommentCreatActivity;->L0(F)V

    .line 10
    iget v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->u:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 11
    iput-boolean v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->x:Z

    goto/16 :goto_3

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->n:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->o:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 14
    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->o:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/enums/Dtype;->H5:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->o:Ljava/lang/String;

    const-string v4, "102"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->o:Ljava/lang/String;

    const-string v4, "green"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 16
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/join/mgps/activity/CommentCreatActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iput-boolean v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->x:Z

    goto :goto_3

    .line 19
    :cond_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->x:Z

    goto :goto_3

    .line 20
    :cond_5
    iput-boolean v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->x:Z

    goto :goto_3

    .line 21
    :cond_6
    iput-boolean v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->x:Z

    goto :goto_3

    :cond_7
    :goto_1
    if-nez v0, :cond_9

    .line 22
    iget v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->p:I

    if-ne v0, v2, :cond_8

    goto :goto_2

    .line 23
    :cond_8
    iput-boolean v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->x:Z

    goto :goto_3

    .line 24
    :cond_9
    :goto_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->x:Z

    .line 25
    :cond_a
    :goto_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->x:Z

    .line 26
    invoke-static {}, Lcom/join/mgps/activity/CommentCreatActivity;->G0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 28
    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 29
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v3, "\u624b\u673a\u578b\u53f7\u83b7\u53d6\u5931\u8d25\uff01"

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 30
    :goto_4
    iget-boolean v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->r:Z

    if-eqz v0, :cond_d

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->s:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 33
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 34
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 35
    :goto_5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->e:Lcom/join/mgps/customview/MStarBar;

    new-instance v2, Lcom/join/mgps/activity/CommentCreatActivity$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CommentCreatActivity$a;-><init>(Lcom/join/mgps/activity/CommentCreatActivity;)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/MStarBar;->setOnStarChangeListener(Lcom/join/mgps/customview/MStarBar$a;)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 37
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 38
    new-instance v0, Landroid/text/SpannableString;

    const-string v2, "\u8bf7\u6309\u7167\u300a\u609f\u996d\u8bc4\u4ef7\u89c4\u5219\u300b\u53d1\u5e03\u70b9\u8bc4"

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#3CA4FD"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0xb

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 40
    new-instance v2, Lcom/join/mgps/activity/CommentCreatActivity$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CommentCreatActivity$b;-><init>(Lcom/join/mgps/activity/CommentCreatActivity;)V

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_e
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->x:Z

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/CommentCreatActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentCreatActivity$c;-><init>(Lcom/join/mgps/activity/CommentCreatActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/z;->B(Landroid/content/Context;Lcom/join/mgps/Util/z$o0;)V

    :cond_1
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
