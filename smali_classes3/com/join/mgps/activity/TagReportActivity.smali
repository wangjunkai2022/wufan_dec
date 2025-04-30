.class public Lcom/join/mgps/activity/TagReportActivity;
.super Lcom/BaseFragmentActivity;
.source "TagReportActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0071
.end annotation


# instance fields
.field a:Lcom/join/mgps/rpc/impl/h;

.field b:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
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

.field e:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/mgps/dto/ListUserCustomGameTagBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TagReportReasonBean;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTagsBean;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/papa91/arc/adapter/SimpleBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
            "Lcom/join/mgps/dto/TagReportReasonBean;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/join/mgps/dialog/x0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->k:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->l:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->n:Lcom/join/mgps/dialog/x0;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/TagReportActivity;Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/TagReportActivity;->E0(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V

    return-void
.end method

.method private E0(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V
    .locals 5

    const v0, 0x7f0c0355

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v2, 0x7f091192

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090969

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f080b43

    goto :goto_0

    :cond_0
    const v4, 0x7f080b41

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "#FFA047"

    goto :goto_1

    :cond_1
    const-string v3, "#555555"

    :goto_1
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    new-instance v2, Lcom/join/mgps/activity/TagReportActivity$c;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/activity/TagReportActivity$c;-><init>(Lcom/join/mgps/activity/TagReportActivity;Lcom/join/mgps/dto/GameTagsBean;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method F0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->n:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method G0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;->setUid(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/TagReportActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;->setGameId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity;->a:Lcom/join/mgps/rpc/impl/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/rpc/impl/h;->x(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/TagReportActivity;->L0(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 13
    :goto_0
    throw v0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLodingFailed()V

    :goto_1
    return-void
.end method

.method H0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->d:Landroid/widget/LinearLayout;

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

.method I0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0901c6
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameTagsBean;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u60f3\u8981\u6295\u8bc9\u7684\u6807\u7b7e"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TagReportReasonBean;

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/TagReportReasonBean;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v3

    :cond_4
    if-nez v2, :cond_5

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u4e3e\u62a5\u539f\u56e0"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/TagReportReasonBean;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u4e3e\u62a5\u8bf4\u660e"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_6
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/join/mgps/dto/TagReportReasonBean;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/TagReportActivity;->J0(Ljava/lang/String;I)V

    return-void
.end method

.method J0(Ljava/lang/String;I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->K0()V

    .line 3
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v1, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setFeedbackUid(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/TagReportActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setGameId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setTagName(Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setFeedbackType(Ljava/lang/Integer;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->g:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setReason(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->g:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setReason(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->a:Lcom/join/mgps/rpc/impl/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/rpc/impl/h;->a(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u4e3e\u62a5\u6807\u7b7e\u6210\u529f"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->F0()V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->F0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->F0()V

    .line 22
    throw p1

    .line 23
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method K0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->n:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

    return-void
.end method

.method L0(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->H0()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->i:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getGameTags()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameTagsBean;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->i:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getPersonalTags()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameTagsBean;

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 8
    :cond_5
    iget-object v3, p0, Lcom/join/mgps/activity/TagReportActivity;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameTagsBean;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity;->e:Lcom/join/mgps/customview/FlowLayout;

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/TagReportActivity;->E0(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->n:Lcom/join/mgps/dialog/x0;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->j:Landroid/widget/TextView;

    const-string v1, "\u4e3e\u62a5\u6807\u7b7e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->j:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->a:Lcom/join/mgps/rpc/impl/h;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->k:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/dto/TagReportReasonBean;

    const-string v3, "\u6807\u7b7e\u4e0d\u9002\u5408\u6b64\u6e38\u620f"

    invoke-direct {v2, v1, v3}, Lcom/join/mgps/dto/TagReportReasonBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->k:Ljava/util/List;

    new-instance v1, Lcom/join/mgps/dto/TagReportReasonBean;

    const/4 v2, 0x2

    const-string v3, "\u5176\u4ed6"

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/dto/TagReportReasonBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->e:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07110f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setHorizontalDivider(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->e:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f071167

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setVerticalDivider(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->i:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLoding()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->G0()V

    goto/16 :goto_3

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->H0()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->i:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getGameTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->i:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getGameTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameTagsBean;

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_2

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 16
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/TagReportActivity;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->i:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getPersonalTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameTagsBean;

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_5

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 19
    :cond_5
    iget-object v4, p0, Lcom/join/mgps/activity/TagReportActivity;->l:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameTagsBean;

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/TagReportActivity;->e:Lcom/join/mgps/customview/FlowLayout;

    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/TagReportActivity;->E0(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V

    goto :goto_2

    .line 22
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->m:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    if-nez v0, :cond_8

    .line 23
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagReportActivity$a;-><init>(Lcom/join/mgps/activity/TagReportActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->m:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->m:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    new-instance v1, Lcom/join/mgps/activity/TagReportActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagReportActivity$b;-><init>(Lcom/join/mgps/activity/TagReportActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->m:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

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

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLoding()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->G0()V

    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

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

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

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
