.class Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;
.super Ljava/lang/Object;
.source "LoginUiHelper.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x2

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->a:Landroid/app/Activity;

    const-string v0, "97cf3773301f48ca974131655f05bdfa"

    invoke-static {p2, v0}, Lcom/netease/nis/quicklogin/utils/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;II)V

    .line 3
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/utils/h;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;II)V

    .line 8
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageNameDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageNameDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/utils/h;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$b;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    :cond_3
    :goto_0
    return-void
.end method
