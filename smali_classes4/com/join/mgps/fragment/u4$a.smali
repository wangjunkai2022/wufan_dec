.class Lcom/join/mgps/fragment/u4$a;
.super Ljava/lang/Object;
.source "UserCenterFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/u4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/u4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p1}, Lcom/join/mgps/fragment/u4;->M(Lcom/join/mgps/fragment/u4;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p2}, Lcom/join/mgps/fragment/u4;->M(Lcom/join/mgps/fragment/u4;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p2}, Lcom/join/mgps/fragment/u4;->M(Lcom/join/mgps/fragment/u4;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/dto/JumpInfoBean;

    .line 5
    invoke-virtual {p3}, Lcom/join/mgps/dto/JumpInfoBean;->getJump_type()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    .line 6
    invoke-virtual {p3}, Lcom/join/mgps/dto/JumpInfoBean;->getLink_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterItemBean;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterItemBean;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, p5}, Lcom/join/mgps/fragment/u4;->changeMgState(Ljava/lang/String;I)V

    :cond_1
    const/4 p2, 0x3

    if-ne v0, p2, :cond_4

    const/16 p2, 0x1d

    if-eq p5, p2, :cond_3

    const/16 p2, 0x20

    if-eq p5, p2, :cond_2

    packed-switch p5, :pswitch_data_0

    .line 9
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-virtual {p2, p3, v0}, Lcom/join/mgps/fragment/u4;->gotoTargetActivity(Lcom/join/mgps/dto/JumpInfoBean;I)V

    goto/16 :goto_0

    .line 10
    :pswitch_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goFeedback(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 11
    :pswitch_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goDownloadSettingActivity(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 12
    :pswitch_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/join/mgps/rpc/g;->x:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/Auxiliary_tool"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13
    :pswitch_3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goJoystickManager(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 14
    :pswitch_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goFaceTransferHomePageActivity(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 15
    :pswitch_5
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p2}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/join/mgps/fragment/u4;->P(Lcom/join/mgps/fragment/u4;Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/dto/AccountBean;

    .line 16
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-virtual {p2}, Lcom/join/mgps/fragment/u4;->goLogin()Z

    move-result p2

    if-nez p2, :cond_5

    .line 17
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p2}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->O(Lcom/join/mgps/fragment/u4;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_0

    .line 18
    :pswitch_6
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-virtual {p2}, Lcom/join/mgps/fragment/u4;->goLogin()Z

    move-result p2

    if-nez p2, :cond_5

    .line 19
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p2}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->O(Lcom/join/mgps/fragment/u4;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_0

    .line 20
    :pswitch_7
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p2}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/join/mgps/fragment/u4;->P(Lcom/join/mgps/fragment/u4;Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/dto/AccountBean;

    .line 21
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-virtual {p2}, Lcom/join/mgps/fragment/u4;->goLogin()Z

    move-result p2

    if-nez p2, :cond_5

    .line 22
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goPAPayCenterActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 23
    :pswitch_8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Lcom/join/mgps/Util/IntentUtil;->goForumAndPrfileActivity(ILandroid/content/Context;)V

    goto :goto_0

    .line 24
    :pswitch_9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goForumMyDynamicActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 25
    :pswitch_a
    sput p4, Lcom/MApplication;->H:I

    .line 26
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-virtual {p2}, Lcom/join/mgps/fragment/u4;->hideRedPoint()V

    .line 27
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goForumProfileMessageActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goCommentSelfListActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 29
    :cond_3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {p3}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goMGSettingActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 30
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/fragment/u4$a;->a:Lcom/join/mgps/fragment/u4;

    invoke-virtual {p2, p3, v0}, Lcom/join/mgps/fragment/u4;->gotoTargetActivity(Lcom/join/mgps/dto/JumpInfoBean;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 31
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :cond_5
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_a
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
