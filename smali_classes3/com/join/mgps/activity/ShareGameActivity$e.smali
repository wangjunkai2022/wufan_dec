.class Lcom/join/mgps/activity/ShareGameActivity$e;
.super Ljava/lang/Object;
.source "ShareGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity;->W0(Lcom/join/mgps/dto/GameShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->I:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->o0:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bc4\u4ef7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_boot_commented(I)V

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->o0:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v1, p1, Lcom/join/mgps/activity/ShareGameActivity;->I:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/activity/ShareGameActivity;->U0(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->o0:Landroid/content/Context;

    const-string v1, "OnRemarkShare"

    invoke-static {p1, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v1, p1, Lcom/join/mgps/activity/ShareGameActivity;->D:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->I:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->r0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ShareGameActivity;->p:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareGameActivity;->C:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/join/mgps/activity/ShareGameActivity;->D0(Lcom/join/mgps/activity/ShareGameActivity;FLandroid/widget/TextView;)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ShareGameActivity;->I:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareGameActivity;->O0(Ljava/lang/String;)V

    .line 17
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->a:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->I:Landroid/widget/EditText;

    invoke-static {p1}, Ly1/a;->b(Landroid/view/View;)V

    return-void
.end method
