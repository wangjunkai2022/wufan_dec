.class public Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;
.super Lcom/BaseActivity;
.source "NoticeTopAnimActivityDialog.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04e4
.end annotation


# instance fields
.field a:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
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

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field i:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field j:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method E0(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x7d0L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/join/mgps/Util/c;->f(Landroid/view/View;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->G0()V

    :cond_0
    return-void
.end method

.method F0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    iget v1, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->i:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    sget-object v1, Lcom/join/mgps/rpc/g;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->finish()V

    return-void
.end method

.method G0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->finish()V

    return-void
.end method

.method H0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->finish()V

    return-void
.end method

.method I0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    const-string v1, "http://h5.5fun.com/helo_copper.html"

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method afterview()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->i:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    const-string v5, "\u514d\u8d39\u9886\u94dc\u677f"

    if-eq v0, v4, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->c:Landroid/widget/TextView;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->g:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->e:Landroid/widget/TextView;

    const-string v1, "\u60a8\u7684\u94dc\u677f\u4e0d\u591a\u5566\uff0c\u53bb\u514d\u8d39\u9886\u70b9\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/join/mgps/Util/c;->e(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->E0(I)V

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->c:Landroid/widget/TextView;

    const-string v3, "\u94dc\u677f\u4f59\u989d\u4e0d\u8db3"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->g:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->e:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u4f59\u989d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/join/mgps/Util/c;->e(Landroid/view/View;)V

    .line 22
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->E0(I)V

    goto :goto_0

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->g:Landroid/widget/Button;

    const-string v1, "\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->c:Landroid/widget/TextView;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
