.class public Lcom/join/mgps/activity/PapayPayDetialActivity;
.super Lcom/BaseActivity;
.source "PapayPayDetialActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0060
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
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

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/dto/PapayHistoryInfo;
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
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u4ea4\u6613\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->h:Lcom/join/mgps/dto/PapayHistoryInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getOrder_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->h:Lcom/join/mgps/dto/PapayHistoryInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getMoney()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->h:Lcom/join/mgps/dto/PapayHistoryInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getOrder_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->h:Lcom/join/mgps/dto/PapayHistoryInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->h:Lcom/join/mgps/dto/PapayHistoryInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getPay_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->h:Lcom/join/mgps/dto/PapayHistoryInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getPay_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
