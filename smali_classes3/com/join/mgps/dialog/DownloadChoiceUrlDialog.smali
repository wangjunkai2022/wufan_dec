.class public Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;
.super Lcom/BaseActivity;
.source "DownloadChoiceUrlDialog.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c01c1
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field c:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field d:Z
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

.method static synthetic E0(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method afterview()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->a:Landroid/content/Context;

    const v0, 0x7f0900c0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f091023

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u9009\u62e9\u4e0b\u8f7d\u6e90"

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090218

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090b5c

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 7
    new-instance v3, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$a;-><init>(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;-><init>(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/DownloadUrlBean;

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadUrlBean;->getDown_url_type()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->d:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const v4, 0x7f0c01c0

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0903b4

    .line 14
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0909a6

    .line 15
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadUrlBean;->getDown_source_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    new-instance v5, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;

    invoke-direct {v5, p0, v3}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;-><init>(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;Lcom/join/mgps/dto/DownloadUrlBean;)V

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method
