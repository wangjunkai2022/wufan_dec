.class Lcom/join/mgps/activity/ShareGameActivity$b;
.super Ljava/lang/Object;
.source "ShareGameActivity.java"

# interfaces
.implements Lcom/zhy/view/flowlayout/TagFlowLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity;->W0(Lcom/join/mgps/dto/GameShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/activity/ShareGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/zhy/view/flowlayout/FlowLayout;)Z
    .locals 3

    const/4 p1, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p3

    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p3

    .line 2
    invoke-virtual {p3, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_boot_commented(I)V

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lg1/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 4
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    add-int/lit8 p3, p2, 0x1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p3, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->I:Landroid/widget/EditText;

    invoke-static {p1}, Ly1/a;->c(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->o0:Landroid/content/Context;

    const-string p2, "OnRemarkInput"

    invoke-static {p1, p2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 14
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/ShareGameActivity;->o0:Landroid/content/Context;

    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 15
    iget-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/TipBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, v0, p2}, Lcom/join/mgps/activity/ShareGameActivity;->U0(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->o0:Landroid/content/Context;

    const-string p3, "OnRemarkShare"

    invoke-static {p1, p3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->D:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/dto/TipBean;

    invoke-virtual {p3}, Lcom/join/mgps/dto/TipBean;->getContent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->r0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/ShareGameActivity;->p:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {p2}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    move-result p2

    iget-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/ShareGameActivity;->C:Landroid/widget/TextView;

    invoke-static {p1, p2, p3}, Lcom/join/mgps/activity/ShareGameActivity;->D0(Lcom/join/mgps/activity/ShareGameActivity;FLandroid/widget/TextView;)V

    goto :goto_1

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/TipBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ShareGameActivity;->N0(Ljava/lang/String;)V

    :goto_1
    return v1
.end method
