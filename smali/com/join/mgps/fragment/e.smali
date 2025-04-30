.class public Lcom/join/mgps/fragment/e;
.super Lcom/join/mgps/fragment/a;
.source "CardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected b:Lcom/join/mgps/dto/GameDiscoverBean;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/ImageView;

.field protected i:Lcom/facebook/drawee/view/SimpleDraweeView;

.field protected j:Landroid/widget/ImageView;

.field protected k:Lcom/join/mgps/customview/HtmlTextView;

.field protected l:Landroid/widget/TextView;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/widget/TextView;

.field private o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/ProgressBar;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/a;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/fragment/e$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/e$a;-><init>(Lcom/join/mgps/fragment/e;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->s:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static O(Lcom/join/mgps/dto/GameDiscoverBean;)Lcom/join/mgps/fragment/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/e;

    invoke-direct {v0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/fragment/e;->R(Lcom/join/mgps/dto/GameDiscoverBean;)V

    return-object v0
.end method


# virtual methods
.method protected M(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected N(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    const v0, 0x7f0c01f5

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090180

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f0906fb

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->c:Landroid/widget/ImageView;

    const v0, 0x7f0906fc

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090fde

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->n:Landroid/widget/TextView;

    const v0, 0x7f090fdb

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->l:Landroid/widget/TextView;

    const v0, 0x7f090fd5

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HtmlTextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->k:Lcom/join/mgps/customview/HtmlTextView;

    const v0, 0x7f090704

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->j:Landroid/widget/ImageView;

    const v0, 0x7f09032a

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->m:Landroid/widget/TextView;

    const v0, 0x7f09076d

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    const v0, 0x7f090204

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->h:Landroid/widget/ImageView;

    const v0, 0x7f090c6e

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f090c6d

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f09034c

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090203

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->q:Landroid/widget/ProgressBar;

    const v0, 0x7f090c02

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->r:Landroid/widget/TextView;

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DiscoverBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->k:Lcom/join/mgps/customview/HtmlTextView;

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DiscoverBean;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/HtmlTextView;->setTextViewHtml(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM\u6708dd\u65e5 EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DiscoverBean;->getAddtimes()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->P()V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->updateButn()V

    return-object p1
.end method

.method protected P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DiscoverBean;->getPic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method Q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->r:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public R(Lcom/join/mgps/dto/GameDiscoverBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    return-void
.end method

.method protected initData()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDiscoverBean;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v0, v3, v4, v5}, Lcom/join/android/app/common/utils/APKUtils;->d(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lcom/join/android/app/common/utils/APKUtils;->l(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto/16 :goto_3

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto/16 :goto_3

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto/16 :goto_3

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto/16 :goto_3

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 16
    iget-object v3, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 17
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v3, v5}, Lg1/f;->C([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 18
    :cond_5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    iget-object v5, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDiscoverBean;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_e

    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :cond_6
    const/4 v6, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    sget-object v8, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 22
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v5

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v1, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 23
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v6, v8, v9, v10}, Lcom/join/android/app/common/utils/APKUtils;->d(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v1, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_9
    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    .line 24
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    goto :goto_2

    :cond_a
    if-eqz v5, :cond_b

    .line 25
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 26
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    goto :goto_2

    :cond_b
    if-eqz v6, :cond_c

    .line 27
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    goto :goto_2

    .line 28
    :cond_c
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 29
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    :cond_d
    if-nez v0, :cond_e

    .line 30
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 31
    :cond_e
    :goto_2
    iput-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_f
    :goto_3
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090180

    if-eq p1, v0, :cond_24

    const v0, 0x7f09076d

    const/4 v1, 0x2

    if-eq p1, v0, :cond_4

    const v0, 0x7f090c6e

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->updateButn()V

    goto/16 :goto_3

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_25

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->updateButn()V

    goto/16 :goto_3

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x2b

    if-lez v0, :cond_7

    const/16 p1, 0x2b

    .line 12
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_9

    if-eq p1, v1, :cond_8

    const/16 v3, 0xa

    if-ne p1, v3, :cond_9

    .line 13
    :cond_8
    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    :cond_9
    const/16 v3, 0xc

    if-ne p1, v3, :cond_a

    return-void

    :cond_a
    const/16 v3, 0xd

    if-ne p1, v3, :cond_b

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    :cond_b
    const/4 v3, 0x5

    if-ne p1, v3, :cond_c

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    :cond_c
    const/16 v4, 0x9

    const-string v5, ""

    if-ne p1, v4, :cond_15

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result p1

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    if-eq p1, v1, :cond_e

    goto/16 :goto_3

    .line 19
    :cond_e
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    .line 20
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto/16 :goto_0

    .line 21
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_11

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 30
    :cond_11
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->f1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GameDiscoverBean;)V

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto/16 :goto_3

    .line 32
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDown_status()I

    move-result p1

    if-ne p1, v3, :cond_13

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    .line 34
    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCdn_down_switch()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto/16 :goto_3

    :cond_14
    :goto_0
    return-void

    :cond_15
    const/16 v1, 0x2a

    if-ne p1, v1, :cond_18

    .line 35
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_1

    .line 36
    :cond_16
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    :cond_17
    :goto_1
    return-void

    :cond_18
    const/16 v1, 0xb

    if-ne v1, p1, :cond_19

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_19
    const/16 v0, 0x1b

    if-ne v0, p1, :cond_1a

    goto/16 :goto_3

    :cond_1a
    const/16 v0, 0x30

    if-ne v0, p1, :cond_1b

    goto/16 :goto_3

    :cond_1b
    if-ne v2, p1, :cond_1f

    .line 44
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 46
    :cond_1c
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->f1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GameDiscoverBean;)V

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto/16 :goto_3

    .line 48
    :cond_1d
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDown_status()I

    move-result p1

    if-ne p1, v3, :cond_1e

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    .line 50
    :cond_1e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCdn_down_switch()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto/16 :goto_3

    .line 51
    :cond_1f
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_20

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 53
    :cond_20
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->f1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GameDiscoverBean;)V

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_3

    .line 55
    :cond_21
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDown_status()I

    move-result p1

    if-ne p1, v3, :cond_22

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 57
    :cond_22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCdn_down_switch()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto :goto_3

    .line 58
    :cond_23
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->L0(Landroid/content/Context;Lcom/join/mgps/dto/GameDiscoverBean;)V

    return-void

    .line 59
    :cond_24
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 60
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getSp_tpl_two_position()I

    move-result v4

    const/16 v5, 0x73

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_25
    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/16 v1, 0x30

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->q:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->r:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->updateButn()V

    return-void
.end method

.method public onResume()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/GameDiscoverBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 6
    iget-object v2, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-nez v0, :cond_f

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v0, v2, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->d(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->l(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto/16 :goto_3

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto/16 :goto_3

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto/16 :goto_3

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto/16 :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 18
    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2, v5}, Lg1/f;->C([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 20
    :cond_5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    iget-object v5, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDiscoverBean;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_e

    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 22
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_6
    const/4 v6, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    sget-object v8, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 24
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v5

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v1, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 25
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v6, v8, v9, v10}, Lcom/join/android/app/common/utils/APKUtils;->d(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v1, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_9
    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    .line 26
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    goto :goto_2

    :cond_a
    if-eqz v5, :cond_b

    .line 27
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 28
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    goto :goto_2

    :cond_b
    if-eqz v6, :cond_c

    .line 29
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    goto :goto_2

    .line 30
    :cond_c
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 31
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    :cond_d
    if-nez v0, :cond_e

    .line 32
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 33
    :cond_e
    :goto_2
    iput-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->updateButn()V

    return-void
.end method

.method showInstallButn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->p:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method showProgress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->p:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method updateButn()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    const v1, 0x7f080346

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x2b

    if-lez v2, :cond_2

    const/16 v0, 0x2b

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    const v1, 0x7f080a62

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_5

    :cond_3
    const/16 v2, 0xc

    if-ne v0, v2, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showInstallButn()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    const-string v1, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->h:Landroid/widget/ImageView;

    const v1, 0x7f0803ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_4
    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showInstallButn()V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    const-string v1, "\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->h:Landroid/widget/ImageView;

    const v1, 0x7f080a7b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_5
    const/16 v2, 0x9

    const v4, 0x7f080345

    const v5, 0x7f080324

    if-ne v0, v2, :cond_6

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showInstallButn()V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    const-string v1, "\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_5

    :cond_6
    const/16 v2, 0xb

    if-ne v0, v2, :cond_7

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showInstallButn()V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_5

    :cond_7
    const/4 v2, 0x5

    if-eq v0, v2, :cond_12

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_8

    goto/16 :goto_4

    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showProgress()V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->h:Landroid/widget/ImageView;

    const v1, 0x7f080325

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/php25/PDownload/d;->i(Ljava/lang/String;J)D

    move-result-wide v0

    double-to-int v0, v0

    .line 30
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 31
    iget-object v1, p0, Lcom/join/mgps/fragment/e;->r:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_9
    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/4 v2, 0x6

    if-ne v0, v2, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v2, 0x1b

    const-string v4, "M"

    if-ne v0, v2, :cond_b

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showInstallButn()V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6682\u505c\u4e2d\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_b
    const/16 v2, 0xa

    if-ne v0, v2, :cond_c

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showInstallButn()V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b49\u5f85\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_c
    const/4 v2, 0x1

    const v6, 0x7f110261

    const-string v7, "\u3000"

    const v8, 0x7f1100d1

    if-ne v0, v3, :cond_e

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showInstallButn()V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v0

    if-lez v0, :cond_d

    .line 40
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v3, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 42
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    if-eqz v0, :cond_13

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->B2(Landroid/widget/Button;Lcom/join/mgps/dto/GameDiscoverBean;)V

    goto/16 :goto_5

    :cond_e
    const/16 v3, 0x30

    if-ne v0, v3, :cond_f

    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showInstallButn()V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 49
    :cond_f
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showInstallButn()V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v0

    if-lez v0, :cond_10

    .line 52
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 53
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v3, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 54
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    if-eqz v0, :cond_13

    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->b:Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->B2(Landroid/widget/Button;Lcom/join/mgps/dto/GameDiscoverBean;)V

    goto :goto_5

    .line 59
    :cond_11
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showProgress()V

    .line 60
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 63
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e;->o:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/php25/PDownload/d;->i(Ljava/lang/String;J)D

    move-result-wide v0

    double-to-int v0, v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e;->Q(I)V

    goto :goto_5

    .line 65
    :cond_12
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e;->showInstallButn()V

    .line 66
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    const v1, 0x7f080347

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 67
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_5
    return-void
.end method
