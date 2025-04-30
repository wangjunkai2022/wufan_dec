.class public Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
.super Lcn/sharesdk/onekeyshare/OnekeySharePage;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Ljava/lang/Runnable;


# instance fields
.field protected aivThumb:Lcom/mob/tools/gui/AsyncImageView;

.field protected etContent:Landroid/widget/EditText;

.field private impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

.field protected llBottom:Landroid/widget/LinearLayout;

.field protected llPage:Landroid/widget/LinearLayout;

.field protected maxBodyHeight:I

.field protected platform:Lcn/sharesdk/framework/Platform;

.field protected rlThumb:Landroid/widget/RelativeLayout;

.field protected rlTitle:Landroid/widget/RelativeLayout;

.field protected sp:Lcn/sharesdk/framework/Platform$ShareParams;

.field protected svContent:Landroid/widget/ScrollView;

.field protected thumb:Landroid/graphics/Bitmap;

.field protected tvAt:Landroid/widget/TextView;

.field protected tvCancel:Landroid/widget/TextView;

.field protected tvShare:Landroid/widget/TextView;

.field protected tvTextCouter:Landroid/widget/TextView;

.field protected xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeySharePage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 2
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    return-void
.end method

.method private cancelAndFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method private getJoinSelectedUser(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "selected"

    .line 1
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "platform"

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FacebookMessenger"

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x40

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private removeThumb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setImageArray([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setImageData(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method private shareAndFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_oks_sharing"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->isDisableSSO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->getCallback()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 6
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 7
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 8
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method private showFriendList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/port/FriendListPagePort;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/port/FriendListPagePort;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/land/FriendListPageLand;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/land/FriendListPageLand;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 4
    :goto_0
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 5
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/mob/tools/FakeActivity;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    return-void
.end method

.method private showThumb(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 2
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public hideSoftInput(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected isShowAtUserLayout(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "SinaWeibo"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TencentWeibo"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Facebook"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Twitter"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->cancelAndFinish()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvShare:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->shareAndFinish()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->thumb:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->showThumb(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    .line 10
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 12
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p1, p1}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 13
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->removeThumb()V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvAt:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->showFriendList()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xc0c0d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->hideSoftInput(Landroid/view/View;)V

    .line 2
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    return-void
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->getJoinSelectedUser(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSetTheme(IZ)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->isDialogMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const-string v0, "setFinishOnTouchOutside"

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, p2, v1

    invoke-static {p1, v0, p2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const p1, 0x103000b

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 6
    invoke-super {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->onSetTheme(IZ)I

    move-result p1

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvTextCouter:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    .line 4
    :cond_0
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    if-lez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    invoke-virtual {p1, p0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    if-le v0, v2, :cond_0

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eq v3, v2, :cond_0

    .line 4
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_1

    .line 6
    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ne v0, v2, :cond_1

    const/4 v0, -0x2

    .line 7
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 8
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    return-void
.end method

.method public setShareParams(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    return-void
.end method
