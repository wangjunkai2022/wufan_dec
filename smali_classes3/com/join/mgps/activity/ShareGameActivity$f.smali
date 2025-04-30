.class Lcom/join/mgps/activity/ShareGameActivity$f;
.super Ljava/lang/Object;
.source "ShareGameActivity.java"

# interfaces
.implements Ll1/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity;->U0(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/ShareGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->b:Ljava/lang/String;

    iput p4, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->o0:Landroid/content/Context;

    const-string v1, "OnRemarkShare"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->i:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->r0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ShareGameActivity;->p:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v1}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/ShareGameActivity;->C:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ShareGameActivity;->D0(Lcom/join/mgps/activity/ShareGameActivity;FLandroid/widget/TextView;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ShareGameActivity;->N0(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->r0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ShareGameActivity;->p:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v1}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/ShareGameActivity;->C:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ShareGameActivity;->D0(Lcom/join/mgps/activity/ShareGameActivity;FLandroid/widget/TextView;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ShareGameActivity;->I:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ShareGameActivity;->O0(Ljava/lang/String;)V

    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public b(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/activity/ShareGameActivity;->s0:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->o0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 4
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
