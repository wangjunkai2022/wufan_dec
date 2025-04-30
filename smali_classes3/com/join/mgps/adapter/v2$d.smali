.class Lcom/join/mgps/adapter/v2$d;
.super Ljava/lang/Object;
.source "ManageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/v2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/v2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/v2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v2$d;->b:Lcom/join/mgps/adapter/v2;

    iput p2, p0, Lcom/join/mgps/adapter/v2$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/join/mgps/adapter/v2$d;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/v2$d;->b:Lcom/join/mgps/adapter/v2;

    invoke-static {p1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/MGSettingActivity_;->O0(Landroid/content/Context;)Lcom/join/mgps/activity/MGSettingActivity_$j;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/v2$d;->b:Lcom/join/mgps/adapter/v2;

    invoke-static {p1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/PAPayCenterActivity_;->S0(Landroid/content/Context;)Lcom/join/mgps/activity/PAPayCenterActivity_$h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v0, "http://bbs.5fun.com/forum.php?mod=viewthread&tid=56"

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/v2$d;->b:Lcom/join/mgps/adapter/v2;

    invoke-static {v1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/v2$d;->b:Lcom/join/mgps/adapter/v2;

    invoke-static {p1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/DownloadSettingActivity_;->Z0(Landroid/content/Context;)Lcom/join/mgps/activity/DownloadSettingActivity_$s;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/v2$d;->b:Lcom/join/mgps/adapter/v2;

    invoke-static {v0}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/join/mgps/adapter/v2$d;->b:Lcom/join/mgps/adapter/v2;

    invoke-static {p1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/v2$d;->b:Lcom/join/mgps/adapter/v2;

    invoke-static {v0}, Lcom/join/mgps/adapter/v2;->a(Lcom/join/mgps/adapter/v2;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_5
    :goto_0
    return-void
.end method
