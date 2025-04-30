.class Lcom/join/android/app/common/dialog/j$c;
.super Landroid/os/Handler;
.source "LocalGameThreeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/dialog/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/dialog/j;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/join/android/app/common/dialog/j$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/android/app/common/dialog/j$c;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Q(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/customview/NoScrollViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "\u786e\u5b9a"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 5
    :pswitch_0
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v1, :cond_7

    const-string v0, "\u89e3\u538b\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    .line 8
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 12
    :pswitch_2
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 14
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v1, :cond_7

    const-string v0, "\u6587\u4ef6\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    .line 15
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 16
    :pswitch_3
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u521d\u59cb\u5316"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 18
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_4
    add-int/2addr v0, v5

    .line 19
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    iget-object v2, v2, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    if-eqz v1, :cond_1

    const-string v0, "\u6587\u4ef6\u590d\u5236\u51fa\u9519\uff01"

    .line 20
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->W(Lcom/join/android/app/common/dialog/j;)V

    goto/16 :goto_0

    .line 22
    :pswitch_5
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 25
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v1, :cond_2

    const-string v2, "\u6e38\u620f\u5df2\u5b58\u5728\uff0c\u4f46\u662f\u672a\u5b8c\u6210\uff01"

    .line 26
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    add-int/2addr v0, v5

    .line 27
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    iget-object v1, v1, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 28
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 29
    iput v4, v0, Landroid/os/Message;->what:I

    .line 30
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->W(Lcom/join/android/app/common/dialog/j;)V

    goto/16 :goto_0

    .line 32
    :pswitch_7
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 34
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v1, :cond_4

    const-string v2, "\u6e38\u620f\u5df2\u5b58\u5728\uff01"

    .line 35
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_4
    add-int/2addr v0, v5

    .line 36
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    iget-object v1, v1, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 37
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 38
    iput v4, v0, Landroid/os/Message;->what:I

    .line 39
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 40
    :cond_5
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->W(Lcom/join/android/app/common/dialog/j;)V

    goto :goto_0

    .line 41
    :pswitch_8
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->W(Lcom/join/android/app/common/dialog/j;)V

    goto :goto_0

    .line 42
    :pswitch_9
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v1, :cond_6

    const-string v0, "\u6e38\u620f\u68c0\u6d4b\u5b8c\u6210\uff01"

    .line 45
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    :cond_6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/join/android/app/common/dialog/k;

    invoke-direct {v1, p0}, Lcom/join/android/app/common/dialog/k;-><init>(Lcom/join/android/app/common/dialog/j$c;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
