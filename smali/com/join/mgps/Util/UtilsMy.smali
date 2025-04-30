.class public Lcom/join/mgps/Util/UtilsMy;
.super Ljava/lang/Object;
.source "UtilsMy.java"


# static fields
.field private static a:Ljava/lang/String; = "UtilsMy"

.field public static b:Lcom/join/mgps/db/tables/EMUApkTable;

.field private static c:Z

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "44"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "45"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "47"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "48"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    .line 9
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 14
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0710f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static A0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-nez v0, :cond_4

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, ""

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 7
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 12
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public static A1(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto/16 :goto_0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->LARGE_SINGLE:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->FEATURED_ONLINE:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 13
    :pswitch_c
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 14
    :pswitch_d
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 15
    :pswitch_e
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    goto :goto_0

    .line 16
    :pswitch_f
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public static A2(Landroid/widget/TextView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownload_source_switch_v2()Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    .line 7
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080346

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    if-nez v2, :cond_2

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    const p1, 0x7f080344

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x6

    const v5, 0x7f08034f

    if-ne v1, v4, :cond_3

    if-nez v2, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const-string v1, "\u7acb\u5373\u83b7\u53d6"

    .line 15
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p1, :cond_4

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110261

    new-array v0, v0, [Ljava/lang/Object;

    int-to-double v4, p1

    invoke-static {v4, v5}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public static A3(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/UserPurchaseInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Ln1/m0;->p()Ln1/m0;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln1/m0;->delete(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/UserPurchaseInfo;

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->setUid(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->getSpExpireTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/springframework/util/Base64Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->setSpExpireTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 10
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->getCheatExpireTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/springframework/util/Base64Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->setCheatExpireTime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 14
    :cond_1
    :goto_2
    invoke-static {}, Ln1/m0;->p()Ln1/m0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static B(Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c008d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900fd

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090109

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900f2

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090c16

    .line 6
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080c2e

    .line 7
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v4, "#1BB3AE"

    .line 8
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x8

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :cond_2
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static B0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->C0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    return-void
.end method

.method public static B1(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3b22e

    if-eq p0, v2, :cond_0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->LARGE_SINGLE:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10
    :pswitch_8
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :pswitch_9
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->FEATURED_ONLINE:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 12
    :pswitch_a
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 13
    :pswitch_b
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 14
    :pswitch_c
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 15
    :pswitch_d
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 16
    :pswitch_e
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 17
    :cond_0
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public static B2(Landroid/widget/Button;Lcom/join/mgps/dto/GameDiscoverBean;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v4, 0x3

    const v5, 0x7f080346

    if-ne v0, v4, :cond_1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    if-nez p1, :cond_2

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const p1, 0x7f080344

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x6

    if-ne v0, v4, :cond_3

    if-nez p1, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_4

    .line 15
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110261

    new-array v2, v2, [Ljava/lang/Object;

    int-to-double v4, v1

    invoke-static {v4, v5}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public static B3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/l;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/TipNew;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    .line 2
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-static/range {p6 .. p6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c008d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900fd

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f090109

    .line 5
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900f2

    .line 6
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090c16

    .line 7
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    .line 9
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    mul-double v10, v10, v8

    double-to-long v8, v10

    .line 10
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    const/4 v5, 0x0

    if-eqz p3, :cond_11

    .line 11
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 12
    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "7"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, "\u00b7"

    if-nez v9, :cond_5

    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "23"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_3

    .line 13
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/TipBean;

    .line 14
    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v4, v9

    :cond_3
    if-eqz v4, :cond_4

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 16
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_5
    :goto_1
    const-string v4, "\u5b89\u5353"

    if-eqz p4, :cond_f

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/TipBean;

    .line 19
    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 20
    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "44"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "45"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "47"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "48"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_2

    .line 21
    :cond_7
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v9, v12, :cond_a

    .line 23
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/TipBean;

    if-eqz v9, :cond_9

    .line 24
    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    .line 25
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v13, :cond_f

    .line 26
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/TipBean;

    if-eqz v8, :cond_f

    .line 27
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 28
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v13, :cond_b

    .line 29
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/TipBean;

    if-eqz v8, :cond_f

    .line 30
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 31
    :cond_b
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :cond_c
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/join/mgps/dto/TipBean;

    .line 32
    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_3

    :cond_d
    if-nez v9, :cond_e

    .line 33
    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 34
    :cond_e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v12, :cond_c

    .line 35
    :cond_f
    :goto_5
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 36
    :cond_10
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 38
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 39
    :cond_11
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    :cond_12
    :goto_7
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "0"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "0.0"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5206"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 43
    :cond_13
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    move-object/from16 v0, p5

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static C0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/f;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 8
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    invoke-static {p0}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    goto :goto_3

    .line 11
    :cond_6
    :goto_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/f;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_7
    :goto_3
    if-eqz p1, :cond_8

    .line 12
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 14
    :cond_8
    invoke-static {p0}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 15
    :cond_9
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 20
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/e;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.join.android.app.mgsim.wufun"

    const-string v2, "com.join.android.app.mgsim.wufun.addon"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/join/mgps/va/overmind/h;->delete(Ljava/lang/String;)V

    goto :goto_4

    .line 23
    :cond_a
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_b
    :goto_4
    if-eqz p1, :cond_c

    .line 24
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 25
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_c
    :goto_5
    invoke-static {p0}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static C1(Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/UtilsMy;->l1()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "qualcomm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const-string v0, "\\s+"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 5
    array-length v0, p0

    if-gtz v0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    array-length v0, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_8

    aget-object v3, p0, v2

    const-string v4, "SDM845"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v1

    :cond_4
    const-string v4, "SM8"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v1

    :cond_5
    const-string v4, "SM7"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_6

    return v1

    .line 11
    :cond_6
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    if-lt v3, v5, :cond_7

    return v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_2
    return v1
.end method

.method public static C2(Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_source_switch_v2()Ljava/lang/String;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    if-nez v2, :cond_2

    const-string p2, "\u5373\u5c06\u5f00\u653e"

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x6

    if-ne v0, p1, :cond_3

    if-nez v2, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p1

    if-lez p1, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110261

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public static C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    :cond_2
    return-void
.end method

.method public static D(Ljava/util/List;Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Lcom/join/mgps/dto/TipNew;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c008d

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0900fd

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090109

    .line 4
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900f2

    .line 5
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090c16

    .line 6
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v4, 0x8

    .line 7
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_10

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "7"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "\u00b7"

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_4
    :goto_0
    const-string v1, "\u5b89\u5353"

    if-eqz p0, :cond_e

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/TipBean;

    .line 16
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 17
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "44"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "45"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "47"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "48"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    .line 18
    :cond_6
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne p0, v4, :cond_9

    .line 20
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/TipBean;

    if-eqz p0, :cond_8

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v1

    .line 22
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v8, :cond_e

    .line 23
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/TipBean;

    if-eqz p0, :cond_e

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_4

    .line 25
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v8, :cond_a

    .line 26
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/TipBean;

    if-eqz p0, :cond_e

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 28
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_2

    :cond_c
    if-nez v7, :cond_d

    .line 30
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 31
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v4, :cond_b

    .line 32
    :cond_e
    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 33
    :cond_f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    :goto_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 36
    :cond_10
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    :cond_11
    :goto_6
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static D0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    :cond_1
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/va/overmind/e;->j0(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->B0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static D1(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object p0

    .line 2
    :cond_0
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v5

    invoke-virtual {v5}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 8
    invoke-static {v3, v4}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :cond_1
    const/4 v3, 0x1

    if-lt v2, p0, :cond_2

    return v3

    .line 12
    :cond_2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p0

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedupCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    invoke-virtual {v1, p1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getSwitch_state()I

    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getNet_status()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u7f51\u6e38"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    if-ne v1, v3, :cond_4

    if-ne p1, v3, :cond_4

    return v3

    :cond_4
    return v0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static D2(Landroid/widget/Button;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    invoke-static {p2, p3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x0

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    if-nez p3, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    if-nez p3, :cond_2

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const p1, -0x767677

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const p1, 0x7f080a6a

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p1

    if-lez p1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f110261

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public static D3(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 6
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 7
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static E(Ljava/util/List;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "#81dfce"

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0x7f0710f8

    const/4 v5, 0x1

    const/16 v6, 0x11

    const-string v7, ""

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "44"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "45"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "47"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "48"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 14
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 17
    :cond_3
    new-instance p0, Landroid/widget/TextView;

    invoke-direct {p0, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 23
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 24
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 25
    invoke-static {p3, v0}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static E0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "download"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string p1, "Download"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string p1, "\u6587\u4ef6\u4e0b\u8f7d"

    .line 5
    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const-string p1, "\u6b63\u5728\u4e0b\u8f7d"

    .line 6
    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string p2, "application/com.join.mgps.activity.mgmainactivity_"

    .line 8
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 9
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 10
    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p1

    const-string v0, "downloadplato"

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "plato"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static E1()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.huawei.system.BuildEx"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOsBrand"

    new-array v3, v0, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "harmony"

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public static E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    if-nez p2, :cond_1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/join/mgps/rpc/g;->L:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/upload/images/headportrait/public/system_1.png"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const p0, 0x7f080c9f

    .line 3
    invoke-static {p2, p0, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->t(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    return-void
.end method

.method public static E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 7
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 8
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static F(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "1"

    .line 2
    :cond_0
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    const v0, 0x7f0c008d

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    const v0, 0x7f0900fd

    .line 4
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090109

    .line 5
    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900f2

    .line 6
    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090c16

    .line 7
    invoke-virtual {p5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09009d

    .line 8
    invoke-virtual {p5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    .line 13
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    mul-double p1, p1, v6

    double-to-long p1, p1

    .line 14
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    if-eqz p3, :cond_2

    .line 15
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    :goto_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "0"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "0.0"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5206"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :goto_2
    invoke-virtual {p4, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onClickGamebeSpeakGameId"

    invoke-virtual {p0, p2, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/android/app/common/http/PointSendUtile;->sendPoint(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    const-string v2, "846928650"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "2858865652"

    const-string v4, "752756546"

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v3, v4, p0}, Lcom/join/mgps/Util/UtilsMy;->S(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "2943064551"

    if-eqz v1, :cond_2

    .line 7
    invoke-static {v2, v5, p0}, Lcom/join/mgps/Util/UtilsMy;->S(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    const-string v6, "802190896"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "823069764"

    const-string v8, "633053817"

    if-eqz v1, :cond_3

    .line 9
    invoke-static {v8, v7, p0}, Lcom/join/mgps/Util/UtilsMy;->S(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v9, "1306459891"

    if-eqz v1, :cond_4

    .line 11
    invoke-static {v6, v9, p0}, Lcom/join/mgps/Util/UtilsMy;->S(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-static {v6, v9, p0}, Lcom/join/mgps/Util/UtilsMy;->S(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    invoke-static {v8, v7, p0}, Lcom/join/mgps/Util/UtilsMy;->S(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-static {v3, v4, p0}, Lcom/join/mgps/Util/UtilsMy;->S(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 18
    :cond_7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    invoke-static {v2, v5, p0}, Lcom/join/mgps/Util/UtilsMy;->S(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    :cond_8
    :goto_0
    if-nez v0, :cond_9

    return-void

    .line 20
    :cond_9
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_1
    move-object v0, p0

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 21
    :goto_2
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->C1(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_c

    .line 22
    new-instance v9, Lcom/join/mgps/dialog/d;

    const v1, 0x7f120176

    invoke-direct {v9, v0, v1}, Lcom/join/mgps/dialog/d;-><init>(Landroid/content/Context;I)V

    .line 23
    new-instance v10, Lcom/join/mgps/Util/UtilsMy$i;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v0

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/join/mgps/Util/UtilsMy$i;-><init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILandroid/content/Context;Lcom/join/mgps/dialog/d;)V

    invoke-virtual {v9, v10}, Lcom/join/mgps/dialog/d;->e(Lcom/join/mgps/dialog/d$f;)V

    .line 24
    new-instance p0, Lcom/join/mgps/Util/UtilsMy$j;

    invoke-direct {p0, v9}, Lcom/join/mgps/Util/UtilsMy$j;-><init>(Lcom/join/mgps/dialog/d;)V

    invoke-virtual {v9, p0}, Lcom/join/mgps/dialog/d;->g(Lcom/join/mgps/dialog/d$h;)V

    const-string p0, "\u4f60\u7684\u624b\u673aCPU\u7248\u672c\u8f83\u4f4e\uff0c\u8fd0\u884c\u6e38\u620f\u65f6\u53ef\u80fd\u4f1a\u51fa\u73b0\u4e0d\u6d41\u7545\u7b49\u60c5\u51b5\uff0c\u662f\u5426\u4ecd\u8981\u4e0b\u8f7d\uff1f"

    .line 25
    invoke-virtual {v9, p0}, Lcom/join/mgps/dialog/d;->h(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    return-void

    :cond_c
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, v0

    .line 27
    invoke-static/range {v1 .. v6}, Lcom/join/mgps/Util/UtilsMy;->P0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILandroid/content/Context;)V

    return-void
.end method

.method public static F1(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static F2(Landroid/widget/Button;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    .line 6
    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v4, 0x3

    const v5, 0x7f0803f8

    const/4 v6, 0x2

    if-ne v1, v4, :cond_1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 9
    invoke-virtual {p0, v6, p1}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_1

    :cond_1
    if-ne v1, v6, :cond_2

    if-nez p1, :cond_2

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41300000    # 11.0f

    .line 11
    invoke-virtual {p0, v6, p1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 12
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const p1, 0x7f080409

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x6

    if-ne v1, v4, :cond_3

    if-nez p1, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1100d1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 17
    invoke-virtual {p0, v6, p1}, Landroid/widget/Button;->setTextSize(IF)V

    if-lez v2, :cond_4

    .line 18
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f110261

    new-array v0, v0, [Ljava/lang/Object;

    int-to-double v4, v2

    invoke-static {v4, v5}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method private static F3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/Util/StartGameMeta;)V
    .locals 18

    move-object/from16 v1, p2

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/Util/StartGameMeta;->setVipLevel(I)V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/Util/StartGameMeta;->setsVipLevel(I)V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/StartGameMeta;->setUserID(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getLock_sp()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Lcom/join/mgps/Util/StartGameMeta;->setSp(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Ln1/m0;->p()Ln1/m0;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ln1/m0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/join/mgps/db/tables/UserPurchaseInfo;

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->getIsOpenSp()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->getSpExpireTime()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    if-eqz v6, :cond_2

    .line 12
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lorg/springframework/util/Base64Utils;->decode([B)[B

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x3e8

    const-string v13, "true"

    if-eqz v5, :cond_4

    .line 15
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v6, :cond_3

    .line 16
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    div-long v16, v16, v11

    sub-long v14, v14, v16

    cmp-long v0, v14, v9

    if-lez v0, :cond_3

    .line 17
    invoke-virtual {v1, v8}, Lcom/join/mgps/Util/StartGameMeta;->setSp(I)V

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/StartGameMeta;->setSp(I)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/StartGameMeta;->setSp(I)V

    .line 20
    :goto_1
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->getIsOpenCheat()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->getCheatExpireTime()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/springframework/util/Base64Utils;->decode([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_5
    :goto_2
    if-eqz v6, :cond_7

    .line 25
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v3, :cond_6

    .line 26
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v11

    sub-long/2addr v2, v5

    cmp-long v0, v2, v9

    if-lez v0, :cond_6

    .line 27
    invoke-virtual {v1, v8}, Lcom/join/mgps/Util/StartGameMeta;->setCheat(I)V

    goto :goto_3

    .line 28
    :cond_6
    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/StartGameMeta;->setCheat(I)V

    goto :goto_3

    .line 29
    :cond_7
    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/StartGameMeta;->setCheat(I)V

    goto :goto_3

    .line 30
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getLock_sp()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/StartGameMeta;->setSp(I)V

    .line 31
    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/StartGameMeta;->setCheat(I)V

    :goto_3
    return-void
.end method

.method public static G(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0710cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "44"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "45"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "47"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "48"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    .line 9
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-static {p2}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/join/android/app/common/utils/j;->h(Landroid/content/Context;)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 13
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070f86

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, 0x1

    .line 14
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0710f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 16
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0711ec

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 18
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const-string v6, "#00000000"

    .line 19
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 20
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    new-instance v5, Lcom/join/mgps/Util/UtilsMy$f;

    invoke-direct {v5, p2, v2}, Lcom/join/mgps/Util/UtilsMy$f;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/TipBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static G0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/high16 v2, 0x10000000

    const/4 v3, 0x1

    if-le v0, v1, :cond_2

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->c0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 7
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/DownloadUrlBean;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    if-ne p4, v3, :cond_4

    const/4 p4, 0x1

    goto :goto_1

    :cond_4
    const/4 p4, 0x0

    :goto_1
    if-nez p2, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 13
    :cond_5
    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->O0(Landroid/content/Context;)Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;

    move-result-object p0

    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_original_switch()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;

    move-result-object p0

    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;

    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_outside_url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;->a(Ljava/lang/String;)Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;

    move-result-object p0

    const/high16 p1, 0x14000000

    .line 18
    invoke-virtual {p0, p1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;

    .line 19
    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_2

    :cond_6
    if-ne p3, v3, :cond_7

    if-nez p2, :cond_7

    .line 20
    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog_;->F0(Landroid/content/Context;)Lcom/join/mgps/dialog/DownloadChoiceUrlDialog_$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog_$a;->b(Ljava/util/ArrayList;)Lcom/join/mgps/dialog/DownloadChoiceUrlDialog_$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/DownloadChoiceUrlDialog_$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog_$a;->c(Z)Lcom/join/mgps/dialog/DownloadChoiceUrlDialog_$a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_2

    :cond_7
    const-string p3, "downloadTask"

    if-nez p2, :cond_8

    .line 21
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isUncheckSelfSupport()Z

    move-result p2

    if-nez p2, :cond_8

    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/TipNew;->getSelf_support()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    if-nez p2, :cond_8

    .line 23
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    const-string p4, "downGameIdNotSelfSupport"

    invoke-virtual {p0, p4, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p0, p3, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    goto :goto_2

    .line 24
    :cond_8
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p4

    const-string v0, "getDownloadRecomedData"

    invoke-virtual {p2, v0, p4}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p2, p3, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 25
    invoke-static {p1, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 26
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMiniGame()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSingleGame()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 27
    invoke-static {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity_;->J0(Landroid/content/Context;)Lcom/join/mgps/activity/MiniGameLoadingActivity_$c;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/MiniGameLoadingActivity_$c;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity_$c;->a(Ljava/lang/String;)Lcom/join/mgps/activity/MiniGameLoadingActivity_$c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_9
    :goto_2
    return-void
.end method

.method public static G1(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static G2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0808fe

    if-nez p1, :cond_1

    .line 2
    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->E(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    return-void

    .line 3
    :cond_1
    invoke-static {p2, v0, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->t(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    return-void
.end method

.method public static H(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "1"

    .line 2
    :cond_0
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    const v0, 0x7f0c02a2

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    const v0, 0x7f0900fd

    .line 4
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090109

    .line 5
    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900f2

    .line 6
    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090c16

    .line 7
    invoke-virtual {p5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09009d

    .line 8
    invoke-virtual {p5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    .line 10
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    mul-double p1, p1, v4

    double-to-long p1, p1

    .line 11
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    if-eqz p3, :cond_2

    .line 12
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :goto_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "0"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "0.0"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5206"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 20
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :goto_2
    invoke-virtual {p4, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static H0(Landroid/content/Context;Lcom/join/mgps/dto/AppBean;)V
    .locals 13

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    :goto_0
    move-object v4, v0

    move v6, v1

    move v7, v2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "VIRTUAL_SINGLE"

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    const-string v1, "ANDROID_SINGLE"

    :goto_2
    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "SO_SIMULATOR"

    goto :goto_4

    :cond_4
    const-string v0, "RAW_SIMULATOR"

    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_5
    move-object v5, v1

    :goto_5
    move v12, v2

    goto :goto_6

    :cond_6
    move v12, v0

    move-object v5, v1

    .line 16
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v11

    move-object v3, p0

    invoke-static/range {v3 .. v12}, Lcom/join/mgps/Util/UtilsMy;->N0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    :cond_7
    return-void
.end method

.method public static H1(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_1

    return v1

    .line 3
    :cond_1
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_2

    return v1

    .line 4
    :cond_2
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_3

    return v1

    .line 5
    :cond_3
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_4

    return v1

    .line 6
    :cond_4
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_5

    return v1

    .line 7
    :cond_5
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->AVG:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, p0, :cond_6

    return v2

    .line 8
    :cond_6
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->FIGHT:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_7

    return v2

    .line 9
    :cond_7
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_8

    return v1

    .line 10
    :cond_8
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->WORLD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_9

    return v2

    .line 11
    :cond_9
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->NET:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_a

    return v2

    .line 12
    :cond_a
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->MGAME:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_b

    return v2

    .line 13
    :cond_b
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_c

    return v2

    .line 14
    :cond_c
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_d

    return v2

    .line 15
    :cond_d
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_e

    return v1

    .line 16
    :cond_e
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->GBA_ENHANCE:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_f

    return v2

    .line 17
    :cond_f
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_10

    return v1

    .line 18
    :cond_10
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_11

    return v1

    .line 19
    :cond_11
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_12

    return v1

    .line 20
    :cond_12
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_13

    return v1

    .line 21
    :cond_13
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_14

    return v1

    .line 22
    :cond_14
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static H2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0808fe

    if-nez p1, :cond_1

    .line 2
    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->E(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 3
    invoke-static {p2, v0, p1, p0}, Lcom/join/android/app/common/utils/MyImageLoader;->u(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-void
.end method

.method public static I(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/TipNew;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    .line 2
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-static/range {p6 .. p6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c008d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900fd

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f090109

    .line 5
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900f2

    .line 6
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090c16

    .line 7
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f09009d

    .line 8
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v9, 0x0

    if-eqz p7, :cond_1

    .line 10
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v10, "#AAAAAA"

    .line 11
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const v10, 0x7f080c45

    .line 12
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v10, "\u89c6\u9891"

    .line 13
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    .line 15
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    mul-double v12, v12, v10

    double-to-long v10, v12

    .line 16
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    if-eqz p3, :cond_12

    .line 17
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 18
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v10, "7"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v11, "\u00b7"

    if-nez v8, :cond_6

    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v8, "23"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/TipBean;

    .line 20
    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    move-object v4, v8

    :cond_4
    if-eqz v4, :cond_5

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 22
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_6
    :goto_1
    const-string v4, "\u5b89\u5353"

    if-eqz p4, :cond_10

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/TipBean;

    .line 25
    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 26
    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "44"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "45"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "47"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "48"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_2

    .line 27
    :cond_8
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v8, v12, :cond_b

    .line 29
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/TipBean;

    if-eqz v8, :cond_a

    .line 30
    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    .line 31
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v13, :cond_10

    .line 32
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/TipBean;

    if-eqz v5, :cond_10

    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 34
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v13, :cond_c

    .line 35
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/TipBean;

    if-eqz v5, :cond_10

    .line 36
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 37
    :cond_c
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :cond_d
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/join/mgps/dto/TipBean;

    .line 38
    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    goto :goto_3

    :cond_e
    if-nez v8, :cond_f

    .line 39
    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 40
    :cond_f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    add-int/lit8 v8, v8, 0x1

    if-ne v8, v12, :cond_d

    .line 41
    :cond_10
    :goto_5
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 42
    :cond_11
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 44
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 45
    :cond_12
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    :cond_13
    :goto_7
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "0"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "0.0"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5206"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 49
    :cond_14
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    move-object/from16 v0, p5

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static I0(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    :goto_0
    move-object v4, v0

    move v6, v1

    move v7, v2

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "VIRTUAL_SINGLE"

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 11
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    const-string v1, "ANDROID_SINGLE"

    :goto_2
    if-nez v0, :cond_6

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "SO_SIMULATOR"

    goto :goto_4

    :cond_4
    const-string v0, "RAW_SIMULATOR"

    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_5
    move-object v5, v1

    :goto_5
    move v12, v2

    goto :goto_6

    :cond_6
    move v12, v0

    move-object v5, v1

    .line 17
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v11

    move-object v3, p0

    invoke-static/range {v3 .. v12}, Lcom/join/mgps/Util/UtilsMy;->N0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    :cond_7
    return-void
.end method

.method public static I1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static I2(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static J(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 5
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    .line 7
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    .line 9
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, 0x1

    .line 11
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v5, 0x41100000    # 9.0f

    .line 12
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static J0(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    :goto_0
    move-object v4, v0

    move v6, v1

    move v7, v2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "VIRTUAL_SINGLE"

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 9
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "7"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    const-string v1, "ANDROID_SINGLE"

    :goto_2
    if-nez v0, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "SO_SIMULATOR"

    goto :goto_4

    :cond_4
    const-string v0, "RAW_SIMULATOR"

    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_5
    move-object v5, v1

    :goto_5
    move v12, v2

    goto :goto_6

    :cond_6
    move v12, v0

    move-object v5, v1

    .line 15
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v11

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->isFromRecomDown()Z

    move-result v13

    move-object v3, p0

    invoke-static/range {v3 .. v13}, Lcom/join/mgps/Util/UtilsMy;->O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;ZZ)V

    return-void
.end method

.method public static J1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z
    .locals 13

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/q1;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u7a7a\u95f4\u540e\u518d\u4e0b\u8f7d"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filePath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ";least size is "

    const-wide/32 v7, 0x5000000

    if-nez v5, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/Filepath;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filepath.getPathRoot()="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/Filepath;->getPathRoot()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/Filepath;->getPathRoot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    move-result-wide v9

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zip...available size is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v0, v9, v7

    if-gtz v0, :cond_1

    if-eqz p2, :cond_2

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v2

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 16
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/Filepath;

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "filepath.getPathHome()="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v4}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19
    :try_start_1
    invoke-virtual {v4}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    move-result-wide v4

    const-wide/16 v9, 0x2

    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    mul-long v11, v11, v9

    .line 21
    :try_start_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    .line 22
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "downloading...available size is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v9, v4, v7

    if-gtz v9, :cond_6

    if-eqz p2, :cond_5

    .line 24
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_5
    return v2

    :cond_6
    cmp-long v9, v4, v11

    if-gez v9, :cond_4

    .line 25
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return v2

    :catch_2
    move-exception v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    .line 27
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_9
    return v2
.end method

.method public static J2(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v4, 0x3

    const v5, 0x7f080715

    if-ne v0, v4, :cond_1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    if-nez p1, :cond_2

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    const p1, 0x7f080713

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x6

    if-ne v0, v4, :cond_3

    if-nez p1, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_4

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110261

    new-array v2, v2, [Ljava/lang/Object;

    int-to-double v4, v1

    invoke-static {v4, v5}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public static K(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :catch_1
    :goto_0
    const-string v3, "vipLevel"

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "svipLevel"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->x1(Landroid/content/Context;)I

    move-result v1

    const-string v2, "sp"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->m1(Landroid/content/Context;)I

    move-result v1

    const-string v2, "cheat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v1

    const-string v2, "tourist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 12
    invoke-static {v0}, Lcom/join/mgps/va/overmind/e;->e0(Landroid/content/Intent;)V

    return-void
.end method

.method public static K0(Landroid/content/Context;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    :goto_0
    move-object v4, v0

    move v6, v1

    move v7, v2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getTag_info()Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "VIRTUAL_SINGLE"

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    const-string v1, "ANDROID_SINGLE"

    :goto_2
    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "SO_SIMULATOR"

    goto :goto_4

    :cond_4
    const-string v0, "RAW_SIMULATOR"

    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_5
    move-object v5, v1

    :goto_5
    move v12, v2

    goto :goto_6

    :cond_6
    move v12, v0

    move-object v5, v1

    .line 16
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v11

    move-object v3, p0

    invoke-static/range {v3 .. v12}, Lcom/join/mgps/Util/UtilsMy;->N0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    return-void
.end method

.method public static K1(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "44"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static K2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ModInfoBean;->setIncompatible(Z)V

    .line 3
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/SingleGameModInfoBean;->setIncompatible(Z)V

    .line 7
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static L(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "token"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v2

    const-string v3, "vipLevel"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v2

    const-string v3, "sVipLevel"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    move-result-wide v1

    const-string v3, "vip_expire_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->x1(Landroid/content/Context;)I

    move-result v1

    const-string v2, "sp"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->m1(Landroid/content/Context;)I

    move-result v1

    const-string v2, "cheat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static L0(Landroid/content/Context;Lcom/join/mgps/dto/GameDiscoverBean;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    :goto_0
    move-object v4, v0

    move v6, v1

    move v7, v2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getTag_info()Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "VIRTUAL_SINGLE"

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    const-string v1, "ANDROID_SINGLE"

    :goto_2
    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "SO_SIMULATOR"

    goto :goto_4

    :cond_4
    const-string v0, "RAW_SIMULATOR"

    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_5
    move-object v5, v1

    :goto_5
    move v12, v2

    goto :goto_6

    :cond_6
    move v12, v0

    move-object v5, v1

    .line 16
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v11

    move-object v3, p0

    invoke-static/range {v3 .. v12}, Lcom/join/mgps/Util/UtilsMy;->N0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    return-void
.end method

.method public static L1(Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/pref/h;->I()J

    move-result-wide v0

    .line 2
    sget-object p0, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    invoke-virtual {p0}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_unrestricted_speed()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object p0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values_express()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const v0, 0x5265c00

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values_express()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int p0, p0, v0

    int-to-long v0, p0

    cmp-long p0, v3, v0

    if-gez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static L2(Landroid/content/Context;Landroid/widget/TextView;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-lez p3, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0603d0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-lez p2, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0603cf

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    const-string p0, "#3b3b3b"

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return v0
.end method

.method public static M(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/sim/statistic/p;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/UtilsMy;->b0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public static M0(Landroid/content/Context;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    :goto_0
    move-object v4, v0

    move v6, v1

    move v7, v2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "VIRTUAL_SINGLE"

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    const-string v1, "ANDROID_SINGLE"

    :goto_2
    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "SO_SIMULATOR"

    goto :goto_4

    :cond_4
    const-string v0, "RAW_SIMULATOR"

    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_5
    move-object v5, v1

    :goto_5
    move v12, v2

    goto :goto_6

    :cond_6
    move v12, v0

    move-object v5, v1

    .line 16
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v11

    move-object v3, p0

    invoke-static/range {v3 .. v12}, Lcom/join/mgps/Util/UtilsMy;->N0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    return-void
.end method

.method private static M1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/UtilsMy;->N1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;I)V

    return-void
.end method

.method public static M2(Landroid/content/Context;Landroid/widget/TextView;III)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-lez p3, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0603d0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-lez p2, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0603cf

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return v0
.end method

.method public static N(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/UtilsMy;->O(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p0

    return-object p0
.end method

.method public static N0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 1
    invoke-static/range {v0 .. v10}, Lcom/join/mgps/Util/UtilsMy;->O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;ZZ)V

    return-void
.end method

.method private static N1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/x1;->g(Landroid/content/Context;)Lcom/join/mgps/Util/x1;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/w1;->b(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/x1;->g(Landroid/content/Context;)Lcom/join/mgps/Util/x1;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/w1;->a(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;)V

    :goto_0
    return-void
.end method

.method public static N2(Landroid/content/Context;Landroid/widget/TextView;II)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-lez p3, :cond_1

    const-string p0, "#ffdc39"

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    if-lez p2, :cond_2

    const-string p0, "#fd5743"

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    const-string p2, "#8a8a8a"

    .line 3
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return p0
.end method

.method public static O(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/sim/statistic/p;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/UtilsMy;->Z(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public static O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;ZZ)V
    .locals 14

    move-object v10, p0

    move-object v11, p1

    move-object/from16 v0, p8

    .line 1
    :try_start_0
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4
    sget-object v2, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p9, :cond_0

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-void

    :catch_0
    nop

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v8, v0

    .line 7
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz p9, :cond_2

    if-eqz v0, :cond_2

    const/4 v12, 0x2

    .line 8
    new-instance v13, Lcom/join/mgps/Util/UtilsMy$p;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/join/mgps/Util/UtilsMy$p;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p2

    invoke-static {p0, v12, p1, v0, v13}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object v0

    const-string v1, "gameDownloadDetail"

    invoke-virtual {v0, v1, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    const-string v1, "_from"

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    const-string v1, "_from_type"

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    const-string v1, "recPosition"

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    const-string v1, "remarks"

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    const-string v1, "nodeId"

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    const-string v1, "volcanoOther"

    invoke-virtual {v0, v1, v8}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    const-string v1, "fromRecomDown"

    move/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    :goto_1
    return-void
.end method

.method public static O1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->P1(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static O2(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static P(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/sim/statistic/p;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->Y(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method private static P0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILandroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;II",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->P2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result v0

    if-lez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMin_an_compatible_ver()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lcom/join/mgps/dialog/d;

    const v1, 0x7f120176

    invoke-direct {v0, p5, v1}, Lcom/join/mgps/dialog/d;-><init>(Landroid/content/Context;I)V

    .line 4
    new-instance p5, Lcom/join/mgps/Util/UtilsMy$l;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/Util/UtilsMy$l;-><init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILcom/join/mgps/dialog/d;)V

    invoke-virtual {v0, p5}, Lcom/join/mgps/dialog/d;->e(Lcom/join/mgps/dialog/d$f;)V

    .line 5
    new-instance p0, Lcom/join/mgps/Util/UtilsMy$m;

    invoke-direct {p0, v0}, Lcom/join/mgps/Util/UtilsMy$m;-><init>(Lcom/join/mgps/dialog/d;)V

    invoke-virtual {v0, p0}, Lcom/join/mgps/dialog/d;->g(Lcom/join/mgps/dialog/d$h;)V

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u8be5\u6e38\u620f\u5728\u5b89\u5353"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u7248\u672c\u4e2d\u53ef\u80fd\u5b58\u5728\u95ea\u9000\u3001\u663e\u793a\u6548\u679c\u4e0d\u4f73\u3001\u8fd0\u884c\u4e0d\u6d41\u7545\u7b49\u73b0\u8c61"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/dialog/d;->h(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p5

    if-eqz p5, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result p5

    const/4 v0, 0x5

    if-ne p5, v0, :cond_4

    .line 10
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->S0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/mgps/Util/UtilsMy;->G0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :goto_0
    return-void
.end method

.method public static P1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-eqz v5, :cond_0

    move-object v4, v6

    .line 9
    :cond_0
    :try_start_1
    invoke-static {v1, v2}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v6, v4

    :goto_0
    if-lt v3, p0, :cond_2

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p0

    new-instance v0, Lcom/join/mgps/event/k;

    invoke-direct {v0, p1}, Lcom/join/mgps/event/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 17
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p0

    invoke-virtual {p0, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p0

    new-instance v0, Lcom/join/mgps/event/k;

    invoke-direct {v0, p1}, Lcom/join/mgps/event/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static P2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {p1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 2
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne v0, p0, :cond_2

    .line 3
    new-instance p0, Lcom/join/mgps/dialog/d;

    const v0, 0x7f120176

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/dialog/d;-><init>(Landroid/content/Context;IZ)V

    .line 4
    new-instance p1, Lcom/join/mgps/Util/UtilsMy$q;

    invoke-direct {p1, p0}, Lcom/join/mgps/Util/UtilsMy$q;-><init>(Lcom/join/mgps/dialog/d;)V

    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/d;->g(Lcom/join/mgps/dialog/d$h;)V

    .line 5
    new-instance p1, Lcom/join/mgps/Util/UtilsMy$r;

    invoke-direct {p1}, Lcom/join/mgps/Util/UtilsMy$r;-><init>()V

    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/d;->e(Lcom/join/mgps/dialog/d$f;)V

    const-string p1, "\u8be5\u6e38\u620f\u5728\u5b89\u53539\u7cfb\u7edf\u7248\u672c\u4ee5\u4e0b\u65e0\u6cd5\u542f\u52a8\uff0c\u8bf7\u66f4\u6362\u8bbe\u5907\u542f\u52a8\u6e38\u620f"

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/d;->h(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static Q(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GAMEOL:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static Q0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isUncheckSelfSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getSelf_support()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downGameIdNotSelfSupport"

    invoke-virtual {p0, v1, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    const-string v0, "downloadTask"

    invoke-virtual {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static Q1(D)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static Q2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Lcom/join/mgps/dto/UpdateIntentDataBean;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    move-result-object p0

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;->d(Ljava/lang/String;)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;->c(Z)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;->e(Lcom/join/mgps/dto/UpdateIntentDataBean;)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;->a(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static R(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;
    .locals 12

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double v4, p2, v2

    if-ltz v4, :cond_0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_1

    :cond_0
    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    :cond_1
    const-string v2, "#"

    .line 1
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_3

    .line 2
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->V(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, p2

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/UtilsMy;->V(Ljava/lang/String;)I

    move-result v8

    int-to-double v8, v8

    sub-double v10, v0, p2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v4
.end method

.method public static R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    return-void
.end method

.method private static R1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p2

    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {p2, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ModInfoBean;

    if-eqz p2, :cond_4

    .line 3
    invoke-static {p0, p2, p4}, Lcom/join/android/app/common/utils/APKUtils;->T(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "23"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance p2, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p2, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->launch_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lcom/join/mgps/Util/UtilsMy$a;

    invoke-direct {p4, p0, p3}, Lcom/join/mgps/Util/UtilsMy$a;-><init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const-string v2, "ANDROID_SINGLE"

    invoke-static {p0, v1, p2, v2, p4}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 11
    invoke-static {p3}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    .line 12
    :cond_5
    invoke-static {p3}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 v0, 0x2

    const/4 v4, 0x2

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 13
    :goto_2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v5

    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v6

    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/papa/sim/statistic/p;->d1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 14
    :cond_7
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->y3(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 16

    move/from16 v0, p2

    .line 1
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v2, "channel_1"

    const-string v3, "notification"

    .line 3
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const/4 v6, 0x4

    if-lt v4, v5, :cond_1

    .line 5
    new-instance v4, Landroid/app/NotificationChannel;

    const-string v5, "\u6e38\u620f\u4e0b\u8f7d\u5b8c\u6210\u901a\u77e5"

    invoke-direct {v4, v2, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 6
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 7
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080690

    .line 8
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 9
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v7, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v8, 0x2

    const-string v9, "com.wufun.down.notify.start.gamemanager"

    const-string v10, "_game_down_status"

    const/high16 v11, 0x8000000

    const-string v12, "_task_id"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v0, v8, :cond_7

    const/4 v8, 0x5

    const-string v15, "\u4e0b\u8f7d\u5b8c\u6210"

    if-eq v0, v8, :cond_5

    const/16 v8, 0xb

    if-eq v0, v8, :cond_3

    const/4 v8, 0x7

    if-eq v0, v8, :cond_2

    const/16 v8, 0x8

    if-eq v0, v8, :cond_7

    goto/16 :goto_1

    .line 10
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 11
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/join/mgps/receiver/NotifcationReceiver;

    invoke-direct {v0, v9, v13, v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {v0, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    long-to-int v9, v8

    .line 16
    invoke-static {v1, v9, v0, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 17
    invoke-virtual {v7, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 19
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 20
    invoke-virtual {v4, v14}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 21
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 26
    :cond_4
    invoke-static {v1}, Lcom/join/mgps/Util/q0;->c(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 27
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/join/mgps/receiver/NotifcationReceiver;

    const-string v9, "com.wufun.down.notify.start.modmain"

    invoke-direct {v0, v9, v13, v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v9

    const-class v13, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v8, v9, v13}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/ModInfoBean;

    .line 30
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 31
    invoke-virtual {v8}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v13

    const-string v6, "gameId"

    invoke-virtual {v9, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v6

    const-string v8, "standGameId"

    invoke-virtual {v9, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "from"

    invoke-virtual {v9, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {v0, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    long-to-int v6, v8

    invoke-static {v1, v6, v0, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/join/mgps/receiver/NotifcationReceiver;

    invoke-direct {v0, v9, v13, v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {v0, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    long-to-int v6, v8

    .line 42
    invoke-static {v1, v6, v0, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 43
    :goto_0
    invoke-virtual {v7, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v14}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u5feb\u6765\u73a9\u800d\u5427"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v14}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 51
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 53
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isHasDeleteNotify()Z

    move-result v0

    if-nez v0, :cond_8

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/join/mgps/receiver/NotifcationReceiver;

    invoke-direct {v0, v9, v13, v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x0

    .line 56
    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    long-to-int v9, v8

    .line 58
    invoke-static {v1, v9, v0, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 59
    invoke-virtual {v7, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 61
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 62
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v14}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/16 v4, 0x64

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    long-to-int v5, v8

    invoke-virtual {v0, v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v14}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x4

    .line 67
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/join/mgps/receiver/NotifcationReceiver;

    const-string v4, "com.wufun.down.notify.del"

    invoke-direct {v0, v4, v13, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-static {v1, v6, v0, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private static S(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p0

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    :goto_0
    instance-of p0, p2, Landroid/app/Activity;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {p0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {p0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 4
    :goto_1
    invoke-static {p2}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p0

    const-string p1, "\u6682\u65f6\u4e0d\u80fd\u4e0b\u8f7d\u6b64\u6e38\u620f"

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static S0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/ChociceDownActivity_;->O0(Landroid/content/Context;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p0

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/ChociceDownActivity_$j;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static S1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://ctimg.mg3721.com/upload/images/headportrait/public/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S2(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 9

    .line 1
    new-instance v0, Lcom/join/mgps/Util/g1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/Util/g1;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/MyGameManagerActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    const/high16 v1, 0x8000000

    .line 5
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "notification"

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x4

    const-string v4, "channel_1"

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_0

    .line 8
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v5, "\u6e38\u620f\u4e0b\u8f7d\u901a\u77e5"

    invoke-direct {v2, v4, v5, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    const/16 v2, 0x9

    const-string v5, "\u7b49"

    const-string v6, "\u4f60\u6709"

    const v7, 0x7f080690

    const/4 v8, 0x1

    if-eq p3, v2, :cond_3

    const/16 v2, 0xb

    if-eq p3, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    if-le p2, v8, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 11
    invoke-static {p3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 12
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v2, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u6b3e\u6e38\u620f\u9700\u5b89\u88c5"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, v8, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 21
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 22
    invoke-static {p2, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 23
    new-instance p3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p3, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u9700\u5b89\u88c5"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, v8, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_3
    if-le p2, v8, :cond_4

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 32
    invoke-static {p3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 33
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v2, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u6b3e\u6e38\u620f\u9700\u66f4\u65b0"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, v8, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 42
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 43
    invoke-static {p2, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 44
    new-instance p3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p3, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u9700\u66f4\u65b0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, v8, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 52
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/q0;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static T(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-eqz v5, :cond_0

    move-object v4, v6

    .line 7
    :cond_0
    :try_start_1
    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v6, v4

    :goto_0
    if-lt v1, p0, :cond_2

    return v3

    .line 10
    :cond_2
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 11
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_4

    :cond_3
    return v3

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static T1(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "19"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x13

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static T2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadSpeedOptionDialog_;->K0(Landroid/content/Context;)Lcom/join/mgps/dialog/DownloadSpeedOptionDialog_$e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/DownloadSpeedOptionDialog_$e;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/DownloadSpeedOptionDialog_$e;

    move-result-object p1

    const/high16 v0, 0x30000000

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dialog/DownloadSpeedOptionDialog_$e;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 6
    invoke-static {v1, v2}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_0
    if-lt v0, p0, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static U(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    return v2

    .line 2
    :cond_0
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v5

    invoke-virtual {v5}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v8

    invoke-virtual {v8}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 10
    invoke-static {v6, v7}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const/4 v3, 0x0

    :cond_1
    if-ge v3, p0, :cond_4

    if-lt v5, v4, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedupCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v3, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    invoke-virtual {v1, p0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    if-eqz p0, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getSwitch_state()I

    move-result v1

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getNet_status()I

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    move-result-object p1

    const-string v3, "\u7f51\u6e38"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    if-ne v1, v0, :cond_5

    if-ne p0, v0, :cond_5

    :cond_4
    :goto_1
    return v2

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return v0
.end method

.method public static U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x10000000

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-le v0, v3, :cond_1

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->c0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_1
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/activity/HavenDownActivity_;->O0(Landroid/content/Context;)Lcom/join/mgps/activity/HavenDownActivity_$i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HavenDownActivity_$i;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/HavenDownActivity_$i;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/HavenDownActivity_$i;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return v2

    :cond_3
    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 9
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->Q0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static U1(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setGameId(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFrom(I)V

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromType(I)V

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRemarks(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRecPosition(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setNodeId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getVolcanoOtherJsonStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRecPosition(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->isFromRecomDown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromRecommend(Z)V

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p0

    const-string p2, "requestAndChoiceUpdateGameById"

    invoke-virtual {p0, p2, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    const-string p1, "_downloadArgs"

    invoke-virtual {p0, p1, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    return-void
.end method

.method public static U2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5

    .line 1
    :try_start_0
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 7
    invoke-static {v3, v4}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_0
    if-ge v0, p0, :cond_2

    if-lt v2, v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static V(Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v9}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v10

    const/4 v11, 0x1

    const-string v12, "_"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const-string v6, ""

    if-eqz v10, :cond_a

    .line 3
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0x2a

    const/16 v2, 0x9

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_4

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 6
    aget-object v1, v0, v13

    aget-object v0, v0, v11

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v2, v4}, Lcom/join/mgps/Util/UtilsMy;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 7
    :cond_1
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 10
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v1

    if-ne v1, v15, :cond_3

    .line 11
    invoke-static {v8, v10, v14}, Lcom/join/android/app/common/utils/h;->I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/h;->j(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-static {v10, v3}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v10}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Lcom/join/android/app/common/utils/APKUtils;->x(Landroid/content/Context;Ljava/io/File;)V

    :goto_0
    return-void

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v15, :cond_5

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_a

    .line 16
    :cond_5
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_a

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v0

    if-ne v0, v15, :cond_7

    .line 18
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/h;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-static {v7, v10}, Lcom/join/android/app/common/utils/h;->e(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 21
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eq v0, v3, :cond_8

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 22
    :cond_8
    invoke-static {v10}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v10, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 27
    invoke-virtual {v10, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v10, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v10}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_9
    invoke-static {v10, v8}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u609f\u996d\u63d2\u4ef6\u6b63\u5728\u4e0b\u8f7d..."

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "35"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 34
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v14

    :goto_3
    if-nez v0, :cond_b

    .line 35
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->n()I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_b

    .line 36
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, v8, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c01db

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090365

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 39
    new-instance v2, Lcom/join/mgps/Util/UtilsMy$k;

    invoke-direct {v2, v0}, Lcom/join/mgps/Util/UtilsMy$k;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09036b

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    .line 41
    new-instance v4, Lcom/join/mgps/Util/UtilsMy$s;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v4

    move-object v2, v10

    move-object/from16 v3, p0

    move-object v15, v4

    move v4, v9

    move-object v11, v5

    move-object/from16 v5, p1

    move-object/from16 v16, v6

    move-object v6, v0

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/Util/UtilsMy$s;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;ILandroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v11, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v16, v6

    .line 43
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_b
    move-object/from16 v16, v6

    .line 44
    :goto_5
    new-instance v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    if-eqz v10, :cond_c

    .line 45
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 46
    :cond_c
    invoke-virtual {v1, v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 53
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 54
    aget-object v3, v0, v13

    invoke-virtual {v1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 55
    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer_info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_type(I)V

    const-wide/16 v2, 0x0

    .line 63
    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    if-eqz v10, :cond_d

    .line 64
    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->A0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 65
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    .line 66
    invoke-static {v7, v1}, Lcom/join/android/app/common/utils/h;->e(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 67
    :cond_e
    invoke-static {v1, v8}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    return-void
.end method

.method public static V1(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;-><init>()V

    const-string v1, ""

    if-eqz p1, :cond_9

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->isModGameVm()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v1

    const-string v5, "VIRTUAL_SINGLE"

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    move-object v5, v1

    move-object v1, v8

    .line 6
    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setGameId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "7"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    const-string v6, "ANDROID_SINGLE"

    move-object v5, v6

    const/4 v6, 0x1

    :goto_1
    if-nez v6, :cond_5

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v2

    if-ne v2, v3, :cond_3

    const-string v2, "SO_SIMULATOR"

    goto :goto_3

    :cond_3
    const-string v2, "RAW_SIMULATOR"

    goto :goto_3

    :cond_4
    move-object v2, v5

    goto :goto_3

    :cond_5
    move-object v2, v5

    move v4, v6

    goto :goto_3

    :cond_6
    move-object v2, v1

    .line 13
    :goto_3
    :try_start_0
    new-instance v5, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v5, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v5

    invoke-virtual {v5}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 14
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 15
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v6

    const-class v7, Ljava/util/List;

    invoke-virtual {v6, v5, v7}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 16
    sget-object v6, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_7

    return-void

    :catch_0
    move-exception v5

    .line 18
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_7
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFrom(I)V

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromType(I)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRemarks(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRecPosition(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setNodeId(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getVolcanoOtherJsonStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRecPosition(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->isFromRecomDown()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromRecommend(Z)V

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt(Ljava/lang/String;)V

    .line 27
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v4, :cond_8

    if-eqz p1, :cond_8

    .line 28
    new-instance p1, Lcom/join/mgps/Util/UtilsMy$o;

    invoke-direct {p1, p0, v1, v0}, Lcom/join/mgps/Util/UtilsMy$o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DownloadGameArgsBean;)V

    invoke-static {p0, v3, v1, v2, p1}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    goto :goto_4

    .line 29
    :cond_8
    invoke-static {p0, v1, v0}, Lcom/join/mgps/Util/UtilsMy;->W1(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DownloadGameArgsBean;)V

    goto :goto_4

    .line 30
    :cond_9
    invoke-static {p0, v1, v0}, Lcom/join/mgps/Util/UtilsMy;->W1(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DownloadGameArgsBean;)V

    :goto_4
    return-void
.end method

.method public static V2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v5

    invoke-virtual {v5}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    if-eqz v6, :cond_0

    move-object v5, v7

    .line 7
    :cond_0
    :try_start_1
    invoke-static {v3, v4}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v7, v5

    :goto_0
    if-lt v2, v1, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_4

    return-void

    .line 16
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedDialog_;->G0(Landroid/content/Context;)Lcom/join/mgps/dialog/DownloadHighSpeedDialog_$c;

    move-result-object p0

    const/high16 v0, 0x30000000

    invoke-virtual {p0, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dialog/DownloadHighSpeedDialog_$c;

    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/DownloadHighSpeedDialog_$c;->a(Ljava/lang/String;)Lcom/join/mgps/dialog/DownloadHighSpeedDialog_$c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static W(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v8}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v9

    const/4 v10, 0x1

    const-string v11, "_"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-eqz v9, :cond_7

    .line 3
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0x2a

    const/16 v2, 0x9

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_4

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 6
    aget-object v1, v0, v13

    aget-object v0, v0, v10

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v2, v4}, Lcom/join/mgps/Util/UtilsMy;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v1

    if-ne v1, v14, :cond_3

    .line 11
    invoke-static {v7, v9, v12}, Lcom/join/android/app/common/utils/h;->I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/h;->j(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-static {v9, v3}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v9}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Lcom/join/android/app/common/utils/APKUtils;->x(Landroid/content/Context;Ljava/io/File;)V

    :goto_0
    return-void

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v14, :cond_5

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_7

    .line 16
    :cond_5
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_7

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    invoke-static {v9, v7}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u609f\u996d\u63d2\u4ef6\u6b63\u5728\u4e0b\u8f7d..."

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "35"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/pref/b;->n()I

    move-result v1

    const/16 v2, 0xd

    if-ge v1, v2, :cond_8

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    const/16 v1, 0x96

    if-ge v0, v1, :cond_8

    .line 22
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, v7, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c01db

    .line 23
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090365

    .line 24
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 25
    new-instance v2, Lcom/join/mgps/Util/UtilsMy$t;

    invoke-direct {v2, v0}, Lcom/join/mgps/Util/UtilsMy$t;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09036b

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/Button;

    .line 27
    new-instance v6, Lcom/join/mgps/Util/UtilsMy$u;

    move-object v1, v6

    move-object v2, v9

    move-object/from16 v3, p0

    move v4, v8

    move-object/from16 v5, p1

    move-object v14, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/Util/UtilsMy$u;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;ILandroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v15, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :cond_8
    new-instance v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    if-eqz v9, :cond_9

    .line 31
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 32
    :cond_9
    invoke-virtual {v1, v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 39
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 40
    aget-object v3, v0, v13

    invoke-virtual {v1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 41
    aget-object v0, v0, v10

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer_info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_type(I)V

    const-wide/16 v2, 0x0

    .line 49
    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    if-eqz v9, :cond_a

    .line 50
    invoke-static {v9}, Lcom/join/mgps/Util/UtilsMy;->A0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 51
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/h;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v2, p0

    .line 52
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/h;->e(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 53
    :cond_b
    invoke-static {v1, v7}, Lcom/php25/PDownload/d;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    return-void
.end method

.method private static W1(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DownloadGameArgsBean;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p0

    const-string v0, "requestAndDownloadGameById"

    invoke-virtual {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    const-string p1, "_downloadArgs"

    invoke-virtual {p0, p1, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    return-void
.end method

.method private static W2(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILjava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/dialog/RealNameDialog;

    new-instance v1, Lcom/join/mgps/Util/UtilsMy$w;

    invoke-direct {v1, p0, p2, p3, p7}, Lcom/join/mgps/Util/UtilsMy$w;-><init>(Landroid/content/Context;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILjava/lang/String;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/papa91/arc/dialog/RealNameDialog;-><init>(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/arc/interfaces/RealNameCallBack;)V

    .line 2
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p4, p0, p1}, Lcom/papa91/arc/dialog/RealNameDialog;->show(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public static X(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/db/tables/EMUApkTable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static X0(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p0, v0

    .line 5
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return p1
.end method

.method public static X1(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setGameId(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFrom(I)V

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromType(I)V

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRemarks(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRecPosition(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setNodeId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getVolcanoOtherJsonStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRecPosition(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->isFromRecomDown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromRecommend(Z)V

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p0

    const-string p2, "requestAndUpdateGameById"

    invoke-virtual {p0, p2, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    const-string p1, "_downloadArgs"

    invoke-virtual {p0, p1, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    return-void
.end method

.method private static X2(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;)V
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/papa91/view/RealNameLoginDialog;->getInstance(Landroid/content/Context;)Lcom/papa91/view/RealNameLoginDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/papa91/view/RealNameLoginDialog;->setDialogData(Lcom/papa91/arc/bean/PopwindowBean;)Lcom/papa91/view/RealNameLoginDialog;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/papa91/view/RealNameLoginDialog;->setDialogListener(Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;)Lcom/papa91/view/RealNameLoginDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa91/view/RealNameLoginDialog;->show()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {p0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/papa91/view/RealNameLoginDialog;->getInstance(Landroid/content/Context;)Lcom/papa91/view/RealNameLoginDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/papa91/view/RealNameLoginDialog;->setDialogData(Lcom/papa91/arc/bean/PopwindowBean;)Lcom/papa91/view/RealNameLoginDialog;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/papa91/view/RealNameLoginDialog;->setDialogListener(Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;)Lcom/papa91/view/RealNameLoginDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa91/view/RealNameLoginDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static Y(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/UtilsMy;->Z(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p0

    return-object p0
.end method

.method public static Y0(Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 4
    invoke-static {p0}, Lcom/join/mgps/activity/ChociceDownActivity_;->O0(Landroid/content/Context;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->b(I)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->c(Lcom/join/mgps/dto/UpdateIntentDataBean;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p0

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/ChociceDownActivity_$j;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/activity/UpdateLodingActivity_;->M0(Landroid/content/Context;)Lcom/join/mgps/activity/UpdateLodingActivity_$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity_$b;->a(Lcom/join/mgps/dto/UpdateIntentDataBean;)Lcom/join/mgps/activity/UpdateLodingActivity_$b;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public static Y1(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "K"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_2
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p0, p0

    const/high16 p1, 0x4e800000

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "G"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, ".0B"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, ".00B"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const-string p0, "0B"

    return-object p0
.end method

.method private static Y2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v0, "adCount"

    const-string v1, "lastTime"

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v11

    .line 2
    new-instance v2, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v2, v8}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->singleGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v12, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/TipBean;

    .line 7
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "23"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    const-class v6, Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v3, v2, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/join/mgps/dto/SingleGameAdCfgBean;

    if-eqz v7, :cond_c

    .line 9
    invoke-virtual {v7}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getSwitch_state()I

    move-result v2

    if-ne v2, v12, :cond_c

    if-eqz v5, :cond_c

    .line 10
    invoke-virtual {v7}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getSwitch_state()I

    move-result v2

    if-ne v2, v12, :cond_b

    .line 11
    new-instance v13, Lcom/papa91/wrapper/UserPrefs;

    invoke-direct {v13, v8}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 13
    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v6

    move v14, v6

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    .line 14
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 16
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    goto :goto_2

    .line 19
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :goto_2
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move-wide/from16 v2, v16

    goto :goto_5

    :catch_0
    move-exception v0

    move-wide/from16 v2, v16

    goto :goto_4

    :catch_1
    move-exception v0

    const-wide/16 v2, 0x0

    .line 22
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 23
    :goto_5
    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 24
    :cond_6
    invoke-virtual {v7}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getDaily_times()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v1

    if-gtz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_a

    .line 25
    invoke-virtual {v7}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v7}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {v7}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PlayCfgBean;

    .line 28
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 29
    :cond_8
    invoke-static {v1}, Lcom/join/mgps/ad/g;->b(Ljava/util/List;)I

    move-result v4

    .line 30
    :cond_9
    invoke-virtual {v7}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PlayCfgBean;

    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v4

    .line 32
    new-instance v15, Lcom/join/mgps/dialog/r0;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v5

    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getReward_time()I

    move-result v6

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/dialog/r0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/join/mgps/dto/SingleGameAdCfgBean;)V

    add-int/2addr v0, v12

    .line 33
    new-instance v12, Lcom/join/mgps/Util/UtilsMy$x;

    move-object v1, v12

    move-object v3, v11

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v13

    move v7, v14

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/join/mgps/Util/UtilsMy$x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Lcom/papa91/wrapper/UserPrefs;II)V

    invoke-virtual {v15, v12}, Lcom/join/mgps/dialog/r0;->l(Lcom/join/mgps/dialog/r0$d;)V

    .line 34
    invoke-virtual {v15}, Lcom/join/mgps/dialog/r0;->show()V

    goto :goto_8

    .line 35
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v11, v1, v9, v10}, Lcom/join/mgps/Util/UtilsMy;->R1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v0}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;I)V

    goto :goto_8

    .line 37
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v11, v0, v9, v10}, Lcom/join/mgps/Util/UtilsMy;->R1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    goto :goto_8

    .line 38
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v11, v0, v9, v10}, Lcom/join/mgps/Util/UtilsMy;->R1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    goto :goto_8

    .line 39
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v11, v0, v9, v10}, Lcom/join/mgps/Util/UtilsMy;->R1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method private static Z(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 5

    .line 1
    new-instance v0, Lcom/join/android/app/common/utils/APKUtils;

    invoke-direct {v0}, Lcom/join/android/app/common/utils/APKUtils;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "_"

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0, p2}, Lcom/join/android/app/common/utils/h;->B(Lcom/join/mgps/db/tables/EMUApkTable;ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return-object v1

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return-object v1

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    return-object p1

    .line 10
    :cond_4
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return-object v1
.end method

.method public static Z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/FightMainTable;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static Z1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V
    .locals 6

    const-string p1, "_"

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    :cond_0
    const/4 v1, 0x5

    .line 5
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_type(I)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    aget-object p1, v1, p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 20
    aget-object p1, v1, p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer_info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static Z2(Landroid/content/Context;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;I)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    .line 6
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v8

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 7
    invoke-virtual {v8}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v9

    if-ne v9, v10, :cond_4

    .line 8
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    const/16 v11, 0xb

    if-ne v9, v11, :cond_2

    .line 9
    invoke-virtual {v8}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerCode()I

    move-result v9

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVerCode()I

    move-result v11

    if-ne v9, v11, :cond_2

    .line 10
    invoke-static {p0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->I0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v0

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v1

    if-ne v1, v10, :cond_1

    invoke-static {v8}, Lcom/join/android/app/common/utils/h;->z(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v7, 0x2

    :cond_1
    invoke-virtual {v0, v7}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void

    :cond_2
    new-array v9, v4, [Ljava/lang/String;

    .line 11
    invoke-static {p0, v5, v9}, Lcom/join/android/app/common/utils/h;->s(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 12
    invoke-virtual {v5, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 13
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 17
    :cond_3
    invoke-virtual {v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v5}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v8, p0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return-void

    .line 21
    :cond_4
    invoke-static {p0, v1}, Lcom/join/mgps/Util/UtilsMy;->P(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v5

    if-eqz v5, :cond_7

    const/16 v8, 0x21

    .line 22
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "emuApkTable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v9, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v9, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->runRomFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v10

    invoke-virtual {v10}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 26
    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v11

    invoke-virtual {v11}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 27
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v12

    if-nez v12, :cond_5

    .line 28
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v12

    const-class v13, Lcom/join/mgps/dto/BootPageData;

    invoke-virtual {v12, v11, v13}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/BootPageData;

    if-lez v10, :cond_5

    if-eqz v11, :cond_5

    .line 29
    invoke-virtual {v11}, Lcom/join/mgps/dto/BootPageData;->getPerformance_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 30
    invoke-static {p0}, Lcom/join/mgps/activity/PapaPlugGuideActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->a(I)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 31
    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->runRomFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    sub-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_5
    invoke-static {p0, v3, v1, v5, v4}, Lcom/join/mgps/Util/UtilsMy;->u1(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    return-void

    .line 33
    :cond_6
    new-instance v9, Lcom/join/mgps/Util/StartGameMeta;

    invoke-direct {v9}, Lcom/join/mgps/Util/StartGameMeta;-><init>()V

    .line 34
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/join/mgps/Util/StartGameMeta;->setPackageName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUApkTable;->getLaunch_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/join/mgps/Util/StartGameMeta;->setActivityName(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setRomPath(Ljava/lang/String;)V

    move/from16 v2, p4

    .line 37
    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setStartMode(I)V

    .line 38
    invoke-virtual {v9, v3}, Lcom/join/mgps/Util/StartGameMeta;->setGameID(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v9, v8}, Lcom/join/mgps/Util/StartGameMeta;->setType(I)V

    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getRoomID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setRoomID(Ljava/lang/String;)V

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getServerPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setServerPort(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getServerIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setServerIP(Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Lcom/join/mgps/Util/StartGameMeta;->setPlugin_area_val(J)V

    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getPorder()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setPorder(I)V

    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getP1Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setP1Name(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getP2Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setP2Name(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getOldGame()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setOldGame(I)V

    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getClientIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setClientIp(Ljava/lang/String;)V

    .line 49
    invoke-static {p0, v1, v9}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/Util/StartGameMeta;)V

    .line 50
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setToken(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getTcptype()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setTcptype(I)V

    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUdpport()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setUdpport(I)V

    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUdpIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setUdpIP(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSync_memory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setRamCheck(Ljava/lang/String;)V

    move-object/from16 v2, p3

    .line 55
    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setNetState(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v9, v7}, Lcom/join/mgps/Util/StartGameMeta;->setNetMode(I)V

    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUserIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setUserIcon(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setUserName(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getNetPlayers()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setNetPlayers(I)V

    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getGamePlayers()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setGamePlayers(I)V

    .line 61
    invoke-virtual {v9, v4}, Lcom/join/mgps/Util/StartGameMeta;->setSp(I)V

    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getGroupId()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setGroupId(I)V

    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/join/mgps/Util/StartGameMeta;->setArea(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->T1(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/join/mgps/Util/StartGameMeta;->setGametype(I)V

    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getRoomMode()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/join/mgps/Util/StartGameMeta;->setRoomMode(I)V

    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getGameype()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/join/mgps/Util/StartGameMeta;->setGametype(I)V

    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->isAllowPeripheralJoin()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/join/mgps/Util/StartGameMeta;->setAllowPeripheralJoin(Z)V

    .line 68
    invoke-static {p0, v9, v5}, Lcom/join/mgps/Util/UtilsMy;->v(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 69
    invoke-static {p0, v9, v7}, Lcom/join/mgps/Util/UtilsMy;->N1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;I)V

    :cond_7
    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    const-string v0, "#.00"

    .line 1
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/UtilsMy;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Landroid/content/Context;Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 3

    .line 1
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/android/app/common/utils/APKUtils;

    invoke-direct {v0}, Lcom/join/android/app/common/utils/APKUtils;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 3
    invoke-static {p0, p1, v1, v2}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v1

    const-string v2, "_"

    if-eqz v1, :cond_2

    .line 4
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static a1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a2(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V
    .locals 6

    const-string p1, "_"

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    :cond_0
    const/16 v1, 0x9

    .line 5
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_type(I)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    aget-object p1, v1, p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 20
    aget-object p1, v1, p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer_info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a3(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/servcie/DownloadService_;->M(Landroid/content/Context;)Lcom/join/android/app/common/servcie/DownloadService_$l;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(JLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x400

    cmp-long p2, p0, v1

    if-gez p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x100000

    cmp-long p2, p0, v1

    if-gez p2, :cond_1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x40000000

    cmp-long p2, p0, v1

    if-gez p2, :cond_2

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "GB"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, ".0B"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, ".00B"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const-string p0, "0B"

    return-object p0
.end method

.method private static b0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 5

    .line 1
    new-instance v0, Lcom/join/android/app/common/utils/APKUtils;

    invoke-direct {v0}, Lcom/join/android/app/common/utils/APKUtils;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "_"

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0, p2}, Lcom/join/android/app/common/utils/h;->B(Lcom/join/mgps/db/tables/EMUApkTable;ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return-object v1

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return-object v1

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    return-object p1

    .line 10
    :cond_4
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return-object v1
.end method

.method public static b1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/AppBean;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/UtilsMy$n;

    invoke-direct {v0, p1, p0}, Lcom/join/mgps/Util/UtilsMy$n;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static b3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  startfightActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "info"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v0, p0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(J)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x400

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x100000

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x40000000

    cmp-long v3, p0, v1

    if-gez v3, :cond_2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "G"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, ".0B"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, ".00B"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const-string p0, "0B"

    return-object p0
.end method

.method public static c0(Landroid/content/Context;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Ljava/io/File;

    const-string v1, "test_canwhite.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    return v2

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v2

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.wufun.get.permission"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "permission"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/UtilsMy;->f3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    return-void
.end method

.method public static d(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double p0, p0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, ".0"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ".00"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "0"

    return-object p0
.end method

.method public static d0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 7
    invoke-static {p1, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    return-void

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->N(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v0, p1, v2, v1}, Lcom/join/mgps/Util/UtilsMy;->u1(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  checkfinish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "info"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->b3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :catch_0
    :cond_6
    :goto_1
    return-void
.end method

.method public static d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.wufun.get.permission"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "permission"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "filePath"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static d3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    return-void
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    array-length v2, v0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 11
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 12
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 15
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 17
    :cond_4
    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return p0

    :catch_2
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return v1
.end method

.method public static e(J)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x400

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x100000

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x40000000

    cmp-long v3, p0, v1

    if-gez v3, :cond_2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "G"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, ".0B"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, ".00B"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const-string p0, "0B"

    return-object p0
.end method

.method public static e0(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static e2(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static e3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getLock_sp()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_e

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 6
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 8
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {p2, v0, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ModInfoBean;

    if-eqz p2, :cond_4

    .line 10
    invoke-static {p0, p2, p3}, Lcom/join/android/app/common/utils/APKUtils;->T(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Ljava/lang/String;)V

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 12
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    .line 13
    :cond_5
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 v4, 0x2

    .line 14
    :cond_6
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v5

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v6

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/papa/sim/statistic/p;->d1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_7
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 16
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 17
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->s3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    .line 18
    :cond_8
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 19
    invoke-static {p0, p1, p3}, Lcom/join/mgps/Util/UtilsMy;->Y2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_9
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_2

    .line 21
    :cond_a
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 22
    invoke-static {p0, p1, p3}, Lcom/join/mgps/Util/UtilsMy;->Y2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_b
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->VM:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {p2, p0, p3, v0}, Lcom/join/android/app/common/utils/APKUtils;->d(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 24
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->s3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    .line 25
    :cond_c
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    :cond_d
    :goto_2
    return-void

    .line 26
    :cond_e
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4

    .line 29
    :cond_f
    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 30
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_3

    .line 31
    :cond_10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result p2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_11

    .line 32
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 33
    :cond_11
    invoke-static {p1, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    :goto_3
    return-void

    .line 34
    :cond_12
    :goto_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    .line 35
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_13

    return-void

    .line 36
    :cond_13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 37
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    new-array v6, v4, [Ljava/lang/String;

    .line 38
    invoke-static {p0, v5, v6}, Lcom/join/android/app/common/utils/h;->s(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/join/mgps/Util/UtilsMy;->r0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 39
    :cond_14
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 41
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 42
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.join.apkinstalldataobb.action.broadcast"

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "apkpath"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 46
    :cond_15
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".zip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    new-array v6, v4, [Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/join/android/app/common/utils/h;->s(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/join/mgps/Util/UtilsMy;->r0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v6

    if-eqz v6, :cond_18

    :cond_16
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 47
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_17

    .line 48
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p1

    invoke-virtual {p1, p0, v5, v3}, Lcom/join/android/app/common/servcie/a;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    goto :goto_5

    .line 49
    :cond_17
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.wufun.unzip.failed"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    const-string p3, "gameId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_5
    return-void

    .line 52
    :cond_18
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v6

    if-eqz v6, :cond_1d

    .line 53
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v7

    if-ne v7, v1, :cond_1d

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v7

    if-ne v7, v1, :cond_1d

    .line 54
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_1a

    if-eq p2, v3, :cond_1a

    .line 55
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerCode()I

    move-result v7

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVerCode()I

    move-result v8

    if-ne v7, v8, :cond_1a

    .line 56
    invoke-static {p0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->I0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p0

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result p1

    if-ne p1, v1, :cond_19

    invoke-static {v6}, Lcom/join/android/app/common/utils/h;->z(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_6

    :cond_19
    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void

    :cond_1a
    new-array v7, v4, [Ljava/lang/String;

    .line 57
    invoke-static {p0, v5, v7}, Lcom/join/android/app/common/utils/h;->s(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 58
    invoke-virtual {v5, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 59
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1b

    .line 61
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_1b
    const-string p2, ""

    .line 63
    invoke-virtual {v5, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    invoke-virtual {p2, v5}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {v6, p0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    new-array p2, v4, [Ljava/lang/String;

    .line 67
    invoke-static {p0, v5, p2}, Lcom/join/android/app/common/utils/h;->s(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1c

    .line 68
    invoke-static {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$IntentBuilder_;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$IntentBuilder_;->plugNumber(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$IntentBuilder_;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$IntentBuilder_;->gameid(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$IntentBuilder_;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_1c
    return-void

    :cond_1d
    const/4 v7, 0x0

    .line 69
    :cond_1e
    invoke-static {p0, p1, v7}, Lcom/join/mgps/Util/UtilsMy;->O(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v5

    sput-object v5, Lcom/join/mgps/Util/UtilsMy;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    if-eqz v5, :cond_25

    if-eq p2, v3, :cond_1f

    .line 70
    invoke-static {p0, v5}, Lcom/join/mgps/Util/UtilsMy;->r0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p2

    if-eqz p2, :cond_1f

    sget-object p2, Lcom/join/mgps/Util/UtilsMy;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 71
    invoke-static {p2}, Lcom/join/android/app/common/utils/h;->C(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 72
    invoke-static {p0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->I0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p0

    sget-object p2, Lcom/join/mgps/Util/UtilsMy;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p0, p2}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void

    :cond_1f
    if-nez v0, :cond_20

    return-void

    .line 73
    :cond_20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "emuApkTable="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/join/mgps/Util/UtilsMy;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance p2, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p2, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->runRomFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 77
    sget-object v5, Lcom/join/mgps/Util/UtilsMy;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v5

    if-nez v5, :cond_21

    .line 78
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v5

    const-class v6, Lcom/join/mgps/dto/BootPageData;

    invoke-virtual {v5, v1, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BootPageData;

    if-lez v0, :cond_21

    if-eqz v1, :cond_21

    .line 79
    invoke-virtual {v1}, Lcom/join/mgps/dto/BootPageData;->getPerformance_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 80
    invoke-static {p0}, Lcom/join/mgps/activity/PapaPlugGuideActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->a(I)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 81
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->runRomFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void

    .line 82
    :cond_21
    sget-object p2, Lcom/join/mgps/Util/UtilsMy;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-static {p0, v2, p1, p2, v4}, Lcom/join/mgps/Util/UtilsMy;->u1(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p1

    if-eqz p1, :cond_22

    goto/16 :goto_7

    .line 83
    :cond_22
    sget-object p1, Lcom/join/mgps/Util/UtilsMy;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->isCanUpdate()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 84
    :try_start_1
    sget-object p1, Lcom/join/mgps/Util/UtilsMy;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getNotUpdateversion()I

    move-result p1

    sget-object p2, Lcom/join/mgps/Util/UtilsMy;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object p2

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ne p1, p2, :cond_23

    .line 85
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0, v2, p3}, Lcom/join/mgps/Util/IntentUtil;->goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 86
    :cond_23
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object p1

    sget-object p2, Lcom/join/mgps/Util/UtilsMy;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1, p0, v2, p2, p3}, Lcom/join/mgps/Util/z;->X(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/db/tables/EMUApkTable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0, v2, p3}, Lcom/join/mgps/Util/IntentUtil;->goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 89
    :cond_24
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0, v2, p3}, Lcom/join/mgps/Util/IntentUtil;->goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 90
    :cond_25
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 91
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result p3

    if-ne p3, v1, :cond_26

    new-array p3, v4, [Ljava/lang/String;

    .line 92
    invoke-static {p0, p2, p3}, Lcom/join/android/app/common/utils/h;->u(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_26

    .line 93
    invoke-static {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$IntentBuilder_;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$IntentBuilder_;->plugNumber(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$IntentBuilder_;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$IntentBuilder_;->gameid(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$IntentBuilder_;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :catch_1
    :cond_26
    :goto_7
    return-void
.end method

.method public static f(J)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x400

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v5, p0, v3

    if-gez v5, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x40000000

    cmp-long v5, p0, v1

    if-gez v5, :cond_2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v3

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "GB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, ".0B"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, ".00B"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const-string p0, "0B"

    return-object p0
.end method

.method public static f0(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTagInfoV2_2Bean;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GameDiscoverBean;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static f2(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.refreshPurchasedGame"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static f3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V
    .locals 6

    const-string v0, "login"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    const-string v5, "startGame"

    invoke-virtual {v0, p0, v3, v5, v4}, Lcom/join/mgps/Util/IntentUtil;->startGameCheckRealnameHasIntent(Landroid/content/Context;Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-nez v0, :cond_6

    .line 4
    :cond_1
    sget-object v0, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getIs_open_login()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 6
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v3, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->lastShowLoginGuiedTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 8
    invoke-static {v4, v5}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    sget-object v4, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->startgameLogintimes_open_login()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v4

    sget-object v5, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    invoke-virtual {v5}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getTimes_open_login()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->startGameShowLoginNumber()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v4

    sget-object v5, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    invoke-virtual {v5}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getHow_times_open()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    :cond_2
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->startGameShowLoginNumber()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_4

    .line 13
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->startGameShowLoginNumber()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getLogin_is_allow_skip()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 15
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->startgameLogintimes_open_login()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 16
    invoke-static {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->startgameLogintimes_open_login()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v4

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-static {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->lastShowLoginGuiedTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    return-void

    .line 20
    :cond_7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u7f51\u6e38"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isNotCheckAddShortcut()Z

    move-result v0

    if-nez v0, :cond_a

    .line 22
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidobb"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "46"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 24
    :cond_8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {p0, v0}, Lcom/join/mgps/Util/g;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/mgps/Util/t1;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 27
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2, p2}, Lcom/join/mgps/Util/z;->J(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLjava/lang/String;)V

    return-void

    .line 28
    :cond_9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/mgps/Util/t1;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 29
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2, p2}, Lcom/join/mgps/Util/z;->J(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLjava/lang/String;)V

    return-void

    .line 30
    :cond_a
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 31
    :cond_b
    invoke-static {p0, p1, v1, p2}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    return-void
.end method

.method public static g(J)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0xf4240

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x3b9aca00

    cmp-long v3, p0, v1

    if-gez v3, :cond_2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "GB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, ".0B"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, ".00B"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const-string p0, "0B"

    return-object p0
.end method

.method public static g0(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static g1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 3

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 3
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 6
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 9
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/l;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static g3(Landroid/content/Context;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getLock_sp()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 6
    :cond_0
    invoke-static {p0, p2}, Lcom/join/mgps/Util/UtilsMy;->N(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x21

    .line 7
    :try_start_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    new-instance v4, Lcom/join/mgps/Util/StartGameMeta;

    invoke-direct {v4}, Lcom/join/mgps/Util/StartGameMeta;-><init>()V

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/Util/StartGameMeta;->setPackageName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getLaunch_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/Util/StartGameMeta;->setActivityName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setRomPath(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 12
    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setStartMode(I)V

    .line 13
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/StartGameMeta;->setGameID(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getPorder()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setPorder(I)V

    .line 15
    invoke-virtual {v4, v3}, Lcom/join/mgps/Util/StartGameMeta;->setType(I)V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getRoomID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setRoomID(Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getServerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setServerPort(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getServerIP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setServerIP(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/join/mgps/Util/StartGameMeta;->setPlugin_area_val(J)V

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getP1Name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setP1Name(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getP2Name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setP2Name(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getOldGame()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setOldGame(I)V

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getClientIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setClientIp(Ljava/lang/String;)V

    .line 24
    invoke-static {p0, p2, v4}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/Util/StartGameMeta;)V

    .line 25
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setToken(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getTcptype()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setTcptype(I)V

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUdpport()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setUdpport(I)V

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUserIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setUserIcon(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/join/mgps/Util/StartGameMeta;->setUserName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSync_memory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/join/mgps/Util/StartGameMeta;->setRamCheck(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->T1(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/join/mgps/Util/StartGameMeta;->setGametype(I)V

    .line 32
    invoke-static {p0, v4, v2}, Lcom/join/mgps/Util/UtilsMy;->v(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Lcom/join/mgps/db/tables/EMUApkTable;)V

    const/4 p1, 0x1

    .line 33
    invoke-static {p0, v4, p1}, Lcom/join/mgps/Util/UtilsMy;->N1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;I)V

    :cond_1
    return-void
.end method

.method public static h(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/join/mgps/Util/UtilsMy;->i(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static h0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "1"

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_simulator_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch_express()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TipBean;

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "23"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 7
    sget-object p1, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_stand_alone_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch_express()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return p0

    .line 9
    :cond_4
    sget-object p1, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_net_game_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch_express()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return p0

    :cond_5
    return v1
.end method

.method public static h1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/TodayWufunBroadcast;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/papa/sim/statistic/p;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 4
    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 5
    sget-object v1, Lcom/join/mgps/enums/Dtype;->H5:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIsOpen(Z)V

    .line 8
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLastTime(J)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpenTime(J)V

    .line 11
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg1/b;->update(Ljava/lang/Object;)I

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFinishTime(J)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLastTime(J)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpenTime(J)V

    .line 15
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/l;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static h3(Landroid/content/Context;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p0, p2}, Lcom/join/mgps/Util/UtilsMy;->N(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x21

    .line 5
    :try_start_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    new-instance v4, Lcom/join/mgps/Util/StartGameMeta;

    invoke-direct {v4}, Lcom/join/mgps/Util/StartGameMeta;-><init>()V

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/Util/StartGameMeta;->setPackageName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getLaunch_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/Util/StartGameMeta;->setActivityName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setRomPath(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 10
    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setStartMode(I)V

    .line 11
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/StartGameMeta;->setGameID(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getPorder()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setPorder(I)V

    .line 13
    invoke-virtual {v4, v3}, Lcom/join/mgps/Util/StartGameMeta;->setType(I)V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getRoomID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setRoomID(Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getServerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setServerPort(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getServerIP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setServerIP(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/join/mgps/Util/StartGameMeta;->setPlugin_area_val(J)V

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getP1Name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setP1Name(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getP2Name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setP2Name(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getOldGame()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setOldGame(I)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getClientIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setClientIp(Ljava/lang/String;)V

    .line 22
    invoke-static {p0, p2, v4}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/Util/StartGameMeta;)V

    .line 23
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setToken(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getTcptype()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setTcptype(I)V

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUdpport()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setUdpport(I)V

    .line 26
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSync_memory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/Util/StartGameMeta;->setRamCheck(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4, p3}, Lcom/join/mgps/Util/StartGameMeta;->setNetState(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUserIcon()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Lcom/join/mgps/Util/StartGameMeta;->setUserIcon(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/join/mgps/Util/StartGameMeta;->setUserName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->T1(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/join/mgps/Util/StartGameMeta;->setGametype(I)V

    .line 31
    invoke-static {p0, v4, v2}, Lcom/join/mgps/Util/UtilsMy;->v(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Lcom/join/mgps/db/tables/EMUApkTable;)V

    const/4 p1, 0x1

    .line 32
    invoke-static {p0, v4, p1}, Lcom/join/mgps/Util/UtilsMy;->N1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;I)V

    :cond_0
    return-void
.end method

.method public static i(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V
    .locals 9

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    invoke-static {p2, p0, v1}, Lcom/join/android/app/common/utils/h;->u(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {p0, p2}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v2}, Lcom/papa/sim/statistic/p;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_3
    new-instance v1, Lcom/join/mgps/Util/StartGameMeta;

    invoke-direct {v1}, Lcom/join/mgps/Util/StartGameMeta;-><init>()V

    .line 7
    invoke-static {p2, p1, v1}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/Util/StartGameMeta;)V

    .line 8
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/StartGameMeta;->setToken(Ljava/lang/String;)V

    .line 9
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/StartGameMeta;->setUserID(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/StartGameMeta;->setTagId(I)V

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/StartGameMeta;->setPackageName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getLaunch_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/StartGameMeta;->setActivityName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v1, v5}, Lcom/join/mgps/Util/StartGameMeta;->setRomPath(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p3}, Lcom/join/mgps/Util/StartGameMeta;->setStartMode(I)V

    .line 18
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/StartGameMeta;->setServerIP(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/join/mgps/Util/StartGameMeta;->setGameID(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/join/mgps/Util/StartGameMeta;->setType(I)V

    .line 21
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/join/mgps/Util/StartGameMeta;->setPlugin_area_val(J)V

    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->T1(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/StartGameMeta;->setGametype(I)V

    .line 23
    invoke-virtual {v1, p4}, Lcom/join/mgps/Util/StartGameMeta;->setCore(Ljava/lang/String;)V

    .line 24
    invoke-static {p2, v1, p0}, Lcom/join/mgps/Util/UtilsMy;->v(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 25
    sget-object p0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p0

    invoke-virtual {v1}, Lcom/join/mgps/Util/StartGameMeta;->getTagId()I

    move-result p1

    if-ne p0, p1, :cond_9

    .line 26
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/Util/StartGameMeta;->getTagId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 27
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    .line 28
    new-instance p1, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/wufan91/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/Util/StartGameMeta;->getTagId()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 30
    array-length p3, p1

    if-lez p3, :cond_8

    .line 31
    array-length p3, p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_8

    aget-object v2, p1, p4

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    const-string v5, ".BIN"

    if-eqz v3, :cond_5

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    goto :goto_3

    .line 35
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 37
    array-length v3, v2

    if-lez v3, :cond_7

    .line 38
    array-length v3, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_7

    aget-object v7, v2, v6

    .line 39
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 40
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 41
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/StartGameMeta;->setBios(Ljava/lang/String;)V

    const-string p0, "com.join.mgps.activity.GameMainActivity3_"

    .line 42
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/StartGameMeta;->setFromCls(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/StartGameMeta;->setRomPath(Ljava/lang/String;)V

    .line 44
    :cond_9
    invoke-static {p2, v1}, Lcom/join/mgps/Util/UtilsMy;->M1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;)V

    return-void
.end method

.method public static i0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "1"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_simulator_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch_express()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TipBean;

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "23"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 7
    sget-object p1, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_stand_alone_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch_express()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return p0

    .line 9
    :cond_4
    sget-object p1, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_net_game_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch_express()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return p0

    :cond_5
    return v1
.end method

.method public static i1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/TodayWufunEverday;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunEverday;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunEverday;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunEverday;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunEverday;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunEverday;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static i2(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/UtilsMy;->j2(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;Z)V

    return-void
.end method

.method public static i3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p3

    invoke-virtual {p8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getLock_sp()I

    move-result p3

    invoke-virtual {p8, p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 3
    :cond_0
    invoke-static {p0, p8}, Lcom/join/mgps/Util/UtilsMy;->N(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 4
    new-instance v0, Lcom/join/mgps/Util/StartGameMeta;

    invoke-direct {v0}, Lcom/join/mgps/Util/StartGameMeta;-><init>()V

    .line 5
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/StartGameMeta;->setPackageName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/EMUApkTable;->getLaunch_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/StartGameMeta;->setActivityName(Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/StartGameMeta;->setRomPath(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p4}, Lcom/join/mgps/Util/StartGameMeta;->setStartMode(I)V

    .line 10
    invoke-virtual {v0, p5}, Lcom/join/mgps/Util/StartGameMeta;->setServerIP(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/StartGameMeta;->setGameID(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/StartGameMeta;->setType(I)V

    .line 13
    invoke-virtual {v0, p6, p7}, Lcom/join/mgps/Util/StartGameMeta;->setPlugin_area_val(J)V

    .line 14
    invoke-static {p0, p8, v0}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/Util/StartGameMeta;)V

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/StartGameMeta;->setToken(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/StartGameMeta;->setTcptype(I)V

    .line 17
    invoke-virtual {p8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSync_memory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/StartGameMeta;->setRamCheck(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->T1(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/StartGameMeta;->setGametype(I)V

    .line 19
    invoke-static {p0, v0, p3}, Lcom/join/mgps/Util/UtilsMy;->v(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 20
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->M1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;)V

    :cond_1
    return-void
.end method

.method public static j(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 8

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/join/mgps/Util/UtilsMy;->k(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static j0(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tag_id"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/db/tables/EMUApkTable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/TodayWufunTodayNew;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static j2(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;Z)V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    if-eqz p2, :cond_c

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/pref/PrefDef_;->sdcardisFirst()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/q1;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 4
    sget-object p2, Lcom/join/mgps/Util/u;->f:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_5

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/Filepath;

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/pref/h;->W(Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/pref/h;->W(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/pref/h;->W(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-object v4, v1

    move-wide v5, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/Filepath;

    .line 17
    invoke-virtual {v7}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 18
    invoke-virtual {v7}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {v7}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v7}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    move-result-wide v5

    goto :goto_1

    .line 21
    :cond_7
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    cmp-long v0, v5, v2

    if-eqz v0, :cond_8

    .line 22
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/pref/h;->W(Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_8
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/join/mgps/pref/h;->W(Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_9
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/pref/h;->W(Ljava/lang/String;)V

    .line 26
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/Filepath;

    .line 27
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    .line 29
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 30
    :cond_b
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".nomedia"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_a

    .line 32
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_c
    return-void
.end method

.method public static j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->y(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 7
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 9
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static k(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/Util/StartGameMeta;

    invoke-direct {v1}, Lcom/join/mgps/Util/StartGameMeta;-><init>()V

    .line 3
    invoke-static {p1, p0, v1}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/Util/StartGameMeta;)V

    .line 4
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/StartGameMeta;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/StartGameMeta;->setPackageName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getLaunch_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/StartGameMeta;->setActivityName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/StartGameMeta;->setRomPath(Ljava/lang/String;)V

    const/16 v2, 0x9

    .line 10
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/StartGameMeta;->setStartMode(I)V

    .line 11
    invoke-virtual {v1, p3}, Lcom/join/mgps/Util/StartGameMeta;->setServerIP(Ljava/lang/String;)V

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/join/mgps/Util/StartGameMeta;->setServerPort(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p5}, Lcom/join/mgps/Util/StartGameMeta;->setFastIP(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/join/mgps/Util/StartGameMeta;->setGameID(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/join/mgps/Util/StartGameMeta;->setType(I)V

    .line 16
    invoke-virtual {v1, p2}, Lcom/join/mgps/Util/StartGameMeta;->setRoomSilent(I)V

    const/4 p2, 0x0

    .line 17
    invoke-virtual {v1, p2}, Lcom/join/mgps/Util/StartGameMeta;->setNetPlayers(I)V

    .line 18
    invoke-virtual {v1, p6}, Lcom/join/mgps/Util/StartGameMeta;->setGamePlayers(I)V

    .line 19
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSync_memory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/join/mgps/Util/StartGameMeta;->setRamCheck(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Lcom/join/mgps/Util/StartGameMeta;->setPlugin_area_val(J)V

    .line 21
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->T1(Ljava/util/List;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/StartGameMeta;->setGametype(I)V

    .line 22
    invoke-virtual {v1, p7}, Lcom/join/mgps/Util/StartGameMeta;->setCore(Ljava/lang/String;)V

    .line 23
    invoke-static {p1, v1, v0}, Lcom/join/mgps/Util/UtilsMy;->v(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 24
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->M1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;)V

    return-void
.end method

.method public static k0(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k1(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/pref/h;->b()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Ljava/util/List;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/join/mgps/dto/BaiduAdDataMain;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BaiduAdDataMain;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/BaiduAdDataMain;->getType_id()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/BaiduAdDataMain;->getAd_id()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static k2(Landroid/widget/TextView;IILjava/lang/String;)V
    .locals 7

    const v0, -0xc35b03

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    invoke-static {p2, p3}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v3, 0x3

    const v4, 0x7f080a62

    const/4 v5, 0x2

    if-ne p1, v3, :cond_1

    if-nez p3, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 4
    invoke-virtual {p0, v5, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_1
    if-ne p1, v5, :cond_2

    if-nez p3, :cond_2

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071125

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, -0x767677

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const p1, 0x7f080a6a

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x6

    const/high16 v6, 0x41500000    # 13.0f

    if-ne p1, v3, :cond_3

    if-nez p3, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    if-lez p2, :cond_4

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f110261

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_1
    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public static k3(Landroid/content/Context;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p0, p2}, Lcom/join/mgps/Util/UtilsMy;->N(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v4, 0x21

    .line 6
    :try_start_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    new-instance v5, Lcom/join/mgps/Util/StartGameMeta;

    invoke-direct {v5}, Lcom/join/mgps/Util/StartGameMeta;-><init>()V

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/Util/StartGameMeta;->setPackageName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getLaunch_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/Util/StartGameMeta;->setActivityName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5, v0}, Lcom/join/mgps/Util/StartGameMeta;->setRomPath(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setStartMode(I)V

    .line 12
    invoke-virtual {v5, v1}, Lcom/join/mgps/Util/StartGameMeta;->setGameID(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5, v4}, Lcom/join/mgps/Util/StartGameMeta;->setType(I)V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getRoomID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setRoomID(Ljava/lang/String;)V

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getServerPort()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setServerPort(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getServerIP()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setServerIP(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/join/mgps/Util/StartGameMeta;->setPlugin_area_val(J)V

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getPorder()I

    move-result p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setPorder(I)V

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getP1Name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setP1Name(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getP2Name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setP2Name(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getOldGame()I

    move-result p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setOldGame(I)V

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getClientIp()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setClientIp(Ljava/lang/String;)V

    .line 23
    invoke-static {p0, p2, v5}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/Util/StartGameMeta;)V

    .line 24
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setToken(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getTcptype()I

    move-result p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setTcptype(I)V

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUdpport()I

    move-result p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setUdpport(I)V

    .line 27
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSync_memory()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setRamCheck(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 28
    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setNetMode(I)V

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUserIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/join/mgps/Util/StartGameMeta;->setUserIcon(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/join/mgps/Util/StartGameMeta;->setUserName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getNetPlayers()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/join/mgps/Util/StartGameMeta;->setNetPlayers(I)V

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getGamePlayers()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/join/mgps/Util/StartGameMeta;->setGamePlayers(I)V

    .line 33
    invoke-virtual {v5, v2}, Lcom/join/mgps/Util/StartGameMeta;->setSp(I)V

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getGroupId()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/join/mgps/Util/StartGameMeta;->setGroupId(I)V

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->getArea()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setArea(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->T1(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setGametype(I)V

    .line 37
    invoke-static {p0, v5, v3}, Lcom/join/mgps/Util/UtilsMy;->v(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 38
    invoke-static {p0, v5, p3}, Lcom/join/mgps/Util/UtilsMy;->N1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;I)V

    :cond_0
    return-void
.end method

.method public static l(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/Util/StartGameMeta;

    invoke-direct {v1}, Lcom/join/mgps/Util/StartGameMeta;-><init>()V

    .line 3
    invoke-static {p1, p0, v1}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/Util/StartGameMeta;)V

    .line 4
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/StartGameMeta;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/StartGameMeta;->setPackageName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getLaunch_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/StartGameMeta;->setActivityName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/StartGameMeta;->setRomPath(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/StartGameMeta;->setStartMode(I)V

    .line 11
    invoke-virtual {v1, p2}, Lcom/join/mgps/Util/StartGameMeta;->setNetState(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 12
    invoke-virtual {v1, p2}, Lcom/join/mgps/Util/StartGameMeta;->setServerIP(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/join/mgps/Util/StartGameMeta;->setGameID(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/join/mgps/Util/StartGameMeta;->setType(I)V

    .line 15
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/StartGameMeta;->setPlugin_area_val(J)V

    .line 16
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->T1(Ljava/util/List;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/StartGameMeta;->setGametype(I)V

    const/4 p0, 0x1

    .line 17
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/StartGameMeta;->setIntentFrom(I)V

    .line 18
    invoke-static {p1, v1, v0}, Lcom/join/mgps/Util/UtilsMy;->v(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 19
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->M1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;)V

    return-void
.end method

.method public static l0(ILjava/lang/String;)I
    .locals 1

    if-lez p0, :cond_0

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l1()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string v1, "Hardware"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ":\\s+"

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 9
    :cond_1
    :goto_1
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public static l2(Landroid/widget/TextView;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_switch_v2()Ljava/lang/String;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const v3, -0xc35b03

    .line 6
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    const v6, 0x7f080a62

    const/4 v7, 0x2

    if-ne v0, v5, :cond_1

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 9
    invoke-virtual {p0, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_1
    if-ne v0, v7, :cond_2

    if-nez v2, :cond_2

    const-string p2, "\u5373\u5c06\u5f00\u653e"

    .line 12
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071125

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p2, -0x767677

    .line 14
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x7f080a6a

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x6

    const/high16 v5, 0x41500000    # 13.0f

    if-ne v0, p1, :cond_3

    if-nez v2, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110261

    new-array p2, p2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_1
    invoke-virtual {p0, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 24
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public static l3(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;IILjava/lang/String;I)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p0, p2}, Lcom/join/mgps/Util/UtilsMy;->N(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v4, 0x21

    .line 6
    :try_start_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    new-instance v5, Lcom/join/mgps/Util/StartGameMeta;

    invoke-direct {v5}, Lcom/join/mgps/Util/StartGameMeta;-><init>()V

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/Util/StartGameMeta;->setPackageName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getLaunch_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/Util/StartGameMeta;->setActivityName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5, v0}, Lcom/join/mgps/Util/StartGameMeta;->setRomPath(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setStartMode(I)V

    .line 12
    invoke-virtual {v5, v1}, Lcom/join/mgps/Util/StartGameMeta;->setGameID(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5, p4}, Lcom/join/mgps/Util/StartGameMeta;->setRankingID(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setUserID(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5, p5}, Lcom/join/mgps/Util/StartGameMeta;->setGamePlayers(I)V

    .line 16
    invoke-virtual {v5, v4}, Lcom/join/mgps/Util/StartGameMeta;->setType(I)V

    .line 17
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide p3

    invoke-virtual {v5, p3, p4}, Lcom/join/mgps/Util/StartGameMeta;->setPlugin_area_val(J)V

    .line 18
    invoke-static {p0, p2, v5}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/Util/StartGameMeta;)V

    .line 19
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setToken(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSync_memory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setRamCheck(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setNetMode(I)V

    .line 22
    invoke-virtual {v5, v2}, Lcom/join/mgps/Util/StartGameMeta;->setSp(I)V

    .line 23
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->T1(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setGametype(I)V

    .line 24
    invoke-virtual {v5, p6}, Lcom/join/mgps/Util/StartGameMeta;->setRankMiniTime(I)V

    .line 25
    invoke-virtual {v5, p7}, Lcom/join/mgps/Util/StartGameMeta;->setRolesJson(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v5, p8}, Lcom/join/mgps/Util/StartGameMeta;->setRankAutoUpload(I)V

    .line 27
    invoke-static {p0, v5, v3}, Lcom/join/mgps/Util/UtilsMy;->v(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 28
    invoke-static {p0, v5}, Lcom/join/mgps/Util/UtilsMy;->M1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;)V

    :cond_0
    return-void
.end method

.method static synthetic m(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/join/mgps/Util/UtilsMy;->c:Z

    return p0
.end method

.method public static m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v1

    invoke-virtual {v1, p1}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/PayTagInfo;->setAmount_check(I)V

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/PayTagInfo;->setAmount_check(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static m1(Landroid/content/Context;)I
    .locals 7

    .line 1
    invoke-static {}, Ln1/m0;->p()Ln1/m0;

    move-result-object v0

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/papa/sim/statistic/p;->i:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ln1/m0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->getIsOpenCheat()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->getCheatExpireTime()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, ""

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/springframework/util/Base64Utils;->decode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "true"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 10
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public static m2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/AppBean;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getDownload_source_switch_v2()Ljava/lang/String;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const v3, -0xc35b03

    .line 6
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    const/high16 v6, 0x41400000    # 12.0f

    const v7, 0x7f080a62

    const/4 v8, 0x2

    if-ne v0, v5, :cond_1

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_1
    if-ne v0, v8, :cond_2

    if-nez v2, :cond_2

    const-string p2, "\u5373\u5c06\u5f00\u653e"

    .line 12
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071125

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p2, -0x767677

    .line 14
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x7f080a6a

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x6

    if-ne v0, p1, :cond_3

    if-nez v2, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p1

    if-lez p1, :cond_4

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110261

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/high16 p1, 0x41500000    # 13.0f

    .line 24
    invoke-virtual {p0, v8, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 25
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public static m3(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p0

    const-string v0, "paygameid"

    invoke-virtual {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method static synthetic n(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/join/mgps/Util/UtilsMy;->W2(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static n0(ILjava/lang/String;)I
    .locals 0

    return p0
.end method

.method public static n1(Ljava/io/File;)J
    .locals 8

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v0

    .line 4
    :cond_1
    array-length v2, p0

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v6, p0, v3

    .line 5
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->n1(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v4

    .line 6
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u6587\u4ef6\u6216\u8005\u6587\u4ef6\u5939\u4e0d\u5b58\u5728\uff0c\u8bf7\u68c0\u67e5\u8def\u5f84\u662f\u5426\u6b63\u786e\uff01"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v0
.end method

.method public static n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_source_switch_v2()Ljava/lang/String;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const v3, -0xc35b03

    .line 6
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    const/high16 v6, 0x41400000    # 12.0f

    const v7, 0x7f080a62

    const/4 v8, 0x2

    if-ne v0, v5, :cond_1

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_1
    if-ne v0, v8, :cond_2

    if-nez v2, :cond_2

    const-string p2, "\u5373\u5c06\u5f00\u653e"

    .line 12
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071125

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p2, -0x767677

    .line 14
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x7f080a6a

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x6

    if-ne v0, p1, :cond_3

    if-nez v2, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p1

    if-lez p1, :cond_4

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110261

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/high16 p1, 0x41500000    # 13.0f

    .line 24
    invoke-virtual {p0, v8, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 25
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public static n3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p0

    const-string v0, "paygameid"

    invoke-virtual {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    const/4 p1, 0x1

    const-string v0, "fromSdk"

    invoke-virtual {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    const-string p1, "appkey"

    invoke-virtual {p0, p1, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method static synthetic o(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;)V

    return-void
.end method

.method public static o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static o1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/TipNew;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_a

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "7"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "23"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    if-eqz p1, :cond_a

    .line 7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "44"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "45"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "47"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "48"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    const/4 p1, 0x0

    .line 13
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/TipBean;

    if-eqz p0, :cond_a

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_3

    .line 15
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/TipBean;

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    .line 17
    :cond_9
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_a
    :goto_3
    return-object v0
.end method

.method public static o2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/GInfoBean;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/GInfoBean;->getDown_state()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    const v3, -0xc35b03

    .line 5
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    invoke-static {v1, p2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p2

    const/4 v4, 0x0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v5, 0x3

    const/high16 v6, 0x41400000    # 12.0f

    const v7, 0x7f080a62

    const/4 v8, 0x2

    if-ne v0, v5, :cond_1

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_1
    if-ne v0, v8, :cond_2

    if-nez p2, :cond_2

    const-string p2, "\u5373\u5c06\u5f00\u653e"

    .line 11
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071125

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p2, -0x767677

    .line 13
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x7f080a6a

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x6

    if-ne v0, p1, :cond_3

    if-nez p2, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p0, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 18
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p1

    if-lez p1, :cond_4

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110261

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/high16 p1, 0x41500000    # 13.0f

    .line 23
    invoke-virtual {p0, v8, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 24
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method private static o3(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/UtilsMy$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/Util/UtilsMy$b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/mgps/Util/UtilsMy;->R1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    return-void
.end method

.method public static p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/join/mgps/Util/UtilsMy;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/join/mgps/Util/UtilsMy;->d:J

    .line 3
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->launch_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    if-nez v1, :cond_2

    .line 5
    invoke-interface {p4, p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(II)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 6
    invoke-interface {p4, p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(II)V

    return-void

    .line 7
    :cond_2
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 8
    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    .line 9
    :cond_3
    sget-object p0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {p0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_4

    return-void

    :cond_4
    :goto_0
    move-object v5, p0

    .line 10
    new-instance p0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {p0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 11
    invoke-virtual {p0, v5}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 12
    new-instance v10, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-direct {v10}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/16 v1, 0xd

    .line 13
    invoke-virtual {v10, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setType(I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    const/16 v1, 0xf

    .line 14
    invoke-virtual {v10, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setType(I)V

    goto :goto_1

    :cond_6
    const/16 v1, 0xa

    .line 15
    invoke-virtual {v10, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setType(I)V

    :goto_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x3

    if-eq p1, v2, :cond_9

    if-ne p1, v0, :cond_7

    goto :goto_2

    :cond_7
    if-ne p1, v3, :cond_8

    .line 16
    invoke-virtual {v10, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setAction(I)V

    goto :goto_3

    .line 17
    :cond_8
    invoke-virtual {v10, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setAction(I)V

    goto :goto_3

    .line 18
    :cond_9
    :goto_2
    invoke-virtual {v10, v3}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setAction(I)V

    .line 19
    :goto_3
    invoke-static {v5}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v9

    .line 20
    invoke-virtual {v9}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUserToken(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v9}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 22
    invoke-virtual {v10, p3}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setGameType(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v10, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setGameId(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v10}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 25
    sget-boolean p3, Lcom/join/mgps/Util/UtilsMy;->c:Z

    if-eqz p3, :cond_a

    return-void

    .line 26
    :cond_a
    sput-boolean v1, Lcom/join/mgps/Util/UtilsMy;->c:Z

    .line 27
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p3

    invoke-virtual {p0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p0

    invoke-interface {p3, p0}, Lq1/h;->d0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p0

    new-instance p3, Lcom/join/mgps/Util/UtilsMy$v;

    move-object v4, p3

    move-object v6, p2

    move-object v7, p4

    move v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/join/mgps/Util/UtilsMy$v;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/join/mgps/dto/AccountBean;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    invoke-interface {p0, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static p1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/TipNew;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_f

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "7"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "\u00b7"

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "23"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "\u5b89\u5353"

    if-eqz p1, :cond_e

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "44"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "45"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "47"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "48"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-ne p1, v0, :cond_9

    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/TipBean;

    if-eqz p1, :cond_8

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    .line 15
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v5, :cond_e

    .line 16
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/TipBean;

    if-eqz p1, :cond_e

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 18
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v5, :cond_a

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/TipBean;

    if-eqz p1, :cond_e

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 21
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_2

    :cond_c
    if-nez v2, :cond_d

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 24
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_b

    :cond_e
    :goto_4
    return-object p0

    :cond_f
    return-object v0
.end method

.method public static p2(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_switch_v2()Ljava/lang/String;

    const p1, -0xc35b03

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    const v6, 0x7f080a62

    const/4 v7, 0x2

    if-ne v0, v5, :cond_1

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 8
    invoke-virtual {p0, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_1
    if-ne v0, v7, :cond_2

    if-nez v2, :cond_2

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071125

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, -0x767677

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f080a6a

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x6

    const/high16 v8, 0x41500000    # 13.0f

    if-ne v0, v5, :cond_3

    if-nez v2, :cond_3

    const-string v0, "\u9884\u7ea6"

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110261

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :goto_1
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public static p3(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p0, p2}, Lcom/join/mgps/Util/UtilsMy;->N(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v4, 0x21

    .line 6
    :try_start_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    new-instance v5, Lcom/join/mgps/Util/StartGameMeta;

    invoke-direct {v5}, Lcom/join/mgps/Util/StartGameMeta;-><init>()V

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/Util/StartGameMeta;->setPackageName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getLaunch_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/Util/StartGameMeta;->setActivityName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5, v0}, Lcom/join/mgps/Util/StartGameMeta;->setRomPath(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, p3}, Lcom/join/mgps/Util/StartGameMeta;->setStartMode(I)V

    .line 12
    invoke-virtual {v5, v1}, Lcom/join/mgps/Util/StartGameMeta;->setGameID(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setUserID(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v5, p4}, Lcom/join/mgps/Util/StartGameMeta;->setNetState(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5, v4}, Lcom/join/mgps/Util/StartGameMeta;->setType(I)V

    .line 16
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide p3

    invoke-virtual {v5, p3, p4}, Lcom/join/mgps/Util/StartGameMeta;->setPlugin_area_val(J)V

    .line 17
    invoke-static {p0, p2, v5}, Lcom/join/mgps/Util/UtilsMy;->F3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/Util/StartGameMeta;)V

    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setToken(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSync_memory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setRamCheck(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 20
    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setNetMode(I)V

    .line 21
    invoke-virtual {v5, v2}, Lcom/join/mgps/Util/StartGameMeta;->setSp(I)V

    .line 22
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->T1(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/join/mgps/Util/StartGameMeta;->setGametype(I)V

    .line 23
    invoke-static {p0, v5, v3}, Lcom/join/mgps/Util/UtilsMy;->v(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 24
    invoke-static {p0, v5}, Lcom/join/mgps/Util/UtilsMy;->M1(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;)V

    :cond_0
    return-void
.end method

.method static synthetic q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/join/mgps/Util/UtilsMy;->P0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILandroid/content/Context;)V

    return-void
.end method

.method public static q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 6

    const-string v0, "_"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/join/android/app/common/utils/h;->z(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p0

    return p0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_2

    return v1

    .line 4
    :cond_2
    :try_start_2
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer_compatible()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v3, :cond_3

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge p0, v4, :cond_3

    return v5

    .line 10
    :cond_3
    array-length v4, v0

    if-ne v4, v3, :cond_4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge p0, v0, :cond_4

    .line 11
    invoke-virtual {p1, v5}, Lcom/join/mgps/db/tables/EMUApkTable;->setCanUpdate(Z)V

    return v1

    .line 12
    :cond_4
    array-length p1, v2

    if-ne p1, v5, :cond_6

    .line 13
    aget-object p1, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ge p0, p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :catch_0
    move-exception p0

    .line 14
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return v1

    :catch_1
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_2
    :cond_6
    return v1
.end method

.method public static q1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_8
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_9
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_a
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_b
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 24
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_c
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_d
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 28
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :cond_e
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_f
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 32
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :cond_10
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GAMEOL:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_12

    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :cond_12
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->CONSOLEGAME:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_13

    .line 37
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :cond_13
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->CHOICENESS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p0, "\u5168\u90e8"

    return-object p0
.end method

.method public static q2(Landroid/widget/TextView;Lcom/join/mgps/dto/AppBean;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDownload_source_switch_v2()Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    const v3, -0xc35b03

    .line 6
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    const v6, 0x7f080a62

    const/4 v7, 0x2

    if-ne v0, v5, :cond_1

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/high16 p1, 0x41300000    # 11.0f

    .line 11
    invoke-virtual {p0, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_1
    if-ne v0, v7, :cond_2

    if-nez v2, :cond_2

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 13
    invoke-virtual {p0, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, -0x767677

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    const p1, 0x7f080a6a

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x6

    const/high16 v8, 0x41400000    # 12.0f

    if-ne v0, v5, :cond_3

    if-nez v2, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result v0

    if-lez v0, :cond_4

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110261

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    invoke-virtual {v0, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 26
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method private static q3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->Y0(Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->gprsNoticeInfo()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->a0(Landroid/content/Context;Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v1

    :cond_1
    const/high16 v2, 0x42c80000    # 100.0f

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-float/2addr v3, v4

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    const/high16 v3, 0x42c80000    # 100.0f

    .line 10
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v0, :cond_a

    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 p0, 0x4

    if-eq v0, p0, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->Y0(Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    if-eqz v1, :cond_d

    .line 12
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    cmpg-float v0, v3, v2

    if-gez v0, :cond_5

    .line 13
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->Y0(Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    if-eqz v1, :cond_d

    .line 14
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    const-string v0, "\u66f4\u65b0\u8d44\u6e90\u5927\u4e8e100M\uff0c\u786e\u8ba4\u4f7f\u7528\u6570\u636e\u6d41\u91cf\u5417\uff1f"

    .line 15
    invoke-static {p0, v0, p1, v1, p2}, Lcom/join/mgps/Util/UtilsMy;->Q2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    goto :goto_2

    :cond_6
    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_7

    .line 16
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->Y0(Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    if-eqz v1, :cond_d

    .line 17
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    const-string v0, "\u66f4\u65b0\u8d44\u6e90\u5927\u4e8e50M\uff0c\u786e\u8ba4\u4f7f\u7528\u6570\u636e\u6d41\u91cf\u5417\uff1f"

    .line 18
    invoke-static {p0, v0, p1, v1, p2}, Lcom/join/mgps/Util/UtilsMy;->Q2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    goto :goto_2

    :cond_8
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_9

    .line 19
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->Y0(Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    if-eqz v1, :cond_d

    .line 20
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_2

    :cond_9
    const-string v0, "\u66f4\u65b0\u8d44\u6e90\u5927\u4e8e30M\uff0c\u786e\u8ba4\u4f7f\u7528\u6570\u636e\u6d41\u91cf\u5417\uff1f"

    .line 21
    invoke-static {p0, v0, p1, v1, p2}, Lcom/join/mgps/Util/UtilsMy;->Q2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    goto :goto_2

    :cond_a
    const-string v0, "\u6e38\u620f\u8d44\u6e90\u6709\u66f4\u65b0\uff0c\u786e\u8ba4\u4f7f\u7528\u6570\u636e\u6d41\u91cf\u66f4\u65b0\u5417\uff1f"

    .line 22
    invoke-static {p0, v0, p1, v1, p2}, Lcom/join/mgps/Util/UtilsMy;->Q2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    goto :goto_2

    .line 23
    :cond_b
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 24
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->Y0(Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    .line 25
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p0

    const-string p1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_c
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->Y0(Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    :cond_d
    :goto_2
    return-void
.end method

.method static synthetic r(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DownloadGameArgsBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/UtilsMy;->W1(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DownloadGameArgsBean;)V

    return-void
.end method

.method public static r0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/join/android/app/common/utils/h;->x(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p0

    return p0

    .line 2
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    :cond_2
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->J(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_4

    return v1

    .line 6
    :cond_4
    :try_start_2
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 9
    array-length v0, p1

    if-ne v0, v3, :cond_5

    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge p0, v0, :cond_5

    return v4

    .line 10
    :cond_5
    array-length v0, p1

    if-ne v0, v4, :cond_7

    .line 11
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ge p0, p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :catch_0
    move-exception p0

    .line 12
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return v1

    :catch_1
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_2
    :cond_7
    return v1
.end method

.method public static r1()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 3
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 5
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static r2(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_source_switch_v2()Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    const v3, -0xc35b03

    .line 6
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    const v6, 0x7f080a62

    const/4 v7, 0x2

    if-ne v0, v5, :cond_1

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/high16 p1, 0x41300000    # 11.0f

    .line 11
    invoke-virtual {p0, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_1
    if-ne v0, v7, :cond_2

    if-nez v2, :cond_2

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 13
    invoke-virtual {p0, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, -0x767677

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    const p1, 0x7f080a6a

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x6

    const/high16 v8, 0x41400000    # 12.0f

    if-ne v0, v5, :cond_3

    if-nez v2, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result v0

    if-lez v0, :cond_4

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110261

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    invoke-virtual {v0, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 26
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public static r3(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tools.AdBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    const/4 v2, 0x6

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "gameId"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static s(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameDetialBookTag;

    .line 4
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0145

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f091005

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090792

    .line 6
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const v5, 0x7f08034d

    .line 7
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialBookTag;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public static s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-le p0, p2, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v0

    return p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return v1
.end method

.method public static s1(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "#348FD8"

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 3
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 4
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v4, v2

    const-wide v6, 0x3fd322d0e5604189L    # 0.299

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    int-to-double v2, v3

    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    add-double/2addr v4, v2

    int-to-double v1, v1

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    add-double/2addr v4, v1

    const-wide/high16 v1, 0x4068000000000000L    # 192.0

    cmpg-double v3, v4, v1

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static s2(Landroid/widget/TextView;Lcom/join/mgps/dto/GInfoBean;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getDown_state()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const v3, -0xc35b03

    .line 5
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    const/4 v4, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v5, 0x3

    const v6, 0x7f080a62

    const/4 v7, 0x2

    if-ne v0, v5, :cond_1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/high16 p1, 0x41300000    # 11.0f

    .line 10
    invoke-virtual {p0, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_1
    if-ne v0, v7, :cond_2

    if-nez p1, :cond_2

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 12
    invoke-virtual {p0, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, -0x767677

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    const p1, 0x7f080a6a

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x6

    const/high16 v8, 0x41400000    # 12.0f

    if-ne v0, v5, :cond_3

    if-nez p1, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 18
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p1

    if-lez p1, :cond_4

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110261

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 25
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public static s3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->isIncompatible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameModInfoBean;->isIncompatible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v0

    if-nez v0, :cond_4

    .line 4
    :cond_3
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1101cd

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1101cc

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110119

    .line 8
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f11011a

    .line 9
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/join/mgps/Util/UtilsMy$y;

    invoke-direct {v6, p1, p0, v1}, Lcom/join/mgps/Util/UtilsMy$y;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;)V

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->t3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :goto_0
    return-void
.end method

.method public static t(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameDetialBookTag;

    .line 4
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0146

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f091005

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090792

    .line 6
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const v5, 0x7f08034e

    .line 7
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialBookTag;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public static t0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "0"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le p0, p1, :cond_3

    :cond_2
    :goto_0
    return v2

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return v1
.end method

.method public static t1(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "getNotSimilarColor: "

    const-string v1, "#348FD8"

    const-string v2, " "

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 2
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 3
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 4
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const-string v6, "#F7F8F9"

    .line 5
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 6
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 7
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 8
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    sub-int v9, v4, v7

    mul-int v9, v9, v9

    sub-int v10, v5, v8

    mul-int v10, v10, v10

    add-int/2addr v9, v10

    sub-int v10, v3, v6

    mul-int v10, v10, v10

    add-int/2addr v9, v10

    .line 9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x2710

    if-le v9, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static t2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_source_switch_v2()Ljava/lang/String;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    if-nez v2, :cond_2

    const-string p2, "\u5373\u5c06\u5f00\u653e"

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x6

    if-ne v0, p1, :cond_3

    if-nez v2, :cond_3

    const-string p1, "\u9884\u7ea6"

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p1

    if-lez p1, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110261

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100d1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/high16 p1, 0x41500000    # 13.0f

    .line 14
    invoke-virtual {p0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    return-void
.end method

.method public static t3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 13

    const-string v0, "adCount"

    const-string v1, "lastTime"

    .line 1
    new-instance v2, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v2, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->singleGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMiniGame()Z

    move-result v3

    if-nez v3, :cond_a

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    const-class v4, Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v3, v2, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/join/mgps/dto/SingleGameAdCfgBean;

    if-eqz v9, :cond_9

    .line 5
    invoke-virtual {v9}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getSwitch_state()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_9

    .line 6
    invoke-virtual {v9}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getSwitch_state()I

    move-result v2

    if-ne v2, v10, :cond_8

    .line 7
    new-instance v2, Lcom/papa91/wrapper/UserPrefs;

    invoke-direct {v2, p0}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    const-wide/16 v3, 0x0

    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v7

    move v11, v7

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 10
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 12
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 14
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 16
    :goto_1
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    .line 19
    :goto_2
    invoke-static {v3, v4}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 20
    :cond_3
    invoke-virtual {v9}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getDaily_times()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v1

    if-gtz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 21
    invoke-virtual {v9}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v9}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {v9}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PlayCfgBean;

    .line 24
    invoke-virtual {v4}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 25
    :cond_5
    invoke-static {v1}, Lcom/join/mgps/ad/g;->b(Ljava/util/List;)I

    move-result v6

    .line 26
    :cond_6
    invoke-virtual {v9}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PlayCfgBean;

    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v6

    .line 28
    new-instance v12, Lcom/join/mgps/dialog/r0;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v7

    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getReward_time()I

    move-result v8

    move-object v3, v12

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/join/mgps/dialog/r0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/join/mgps/dto/SingleGameAdCfgBean;)V

    add-int/lit8 v8, v0, 0x1

    .line 29
    new-instance v0, Lcom/join/mgps/Util/UtilsMy$z;

    move-object v3, v0

    move-object v5, p1

    move-object v6, v2

    move v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/Util/UtilsMy$z;-><init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa91/wrapper/UserPrefs;II)V

    invoke-virtual {v12, v0}, Lcom/join/mgps/dialog/r0;->l(Lcom/join/mgps/dialog/r0$d;)V

    .line 30
    invoke-virtual {v12}, Lcom/join/mgps/dialog/r0;->show()V

    goto :goto_5

    .line 31
    :cond_7
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->Y(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v0}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;I)V

    goto :goto_5

    .line 33
    :cond_8
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->Y(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 34
    :cond_9
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->Y(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 35
    :cond_a
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->Y(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :goto_5
    return-void
.end method

.method public static u(Ljava/util/List;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTagInfoV2_2Bean;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "#81dfce"

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0x7f0713a8

    const/4 v5, 0x1

    const/16 v6, 0x11

    const-string v7, ""

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "44"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "45"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "47"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "48"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;->getColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 14
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagInfoV2_2Bean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 17
    :cond_3
    new-instance p0, Landroid/widget/TextView;

    invoke-direct {p0, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 23
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 24
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 25
    invoke-static {p3, v0}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static u0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u521b\u5efa\u6587\u4ef6\u662f\u5426\u6210\u529f"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 8
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 10
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    :goto_1
    if-lez p2, :cond_2

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 12
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 15
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static u1(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;Z)Z
    .locals 14

    move-object v0, p0

    move-object/from16 v11, p2

    .line 1
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v1

    move-object v2, p1

    invoke-virtual {v1, p1}, Ln1/q;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUUpdateTable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getDown_url_remote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_down_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getRom_lowest_ver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->t0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->t0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_lowest_ver()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->t0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_ver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->t0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getSource_lowest_ver()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->t0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getSource_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/join/mgps/Util/UtilsMy;->t0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 13
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1d

    const/4 v12, 0x1

    if-le v9, v10, :cond_2

    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    if-eq v1, v9, :cond_3

    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 14
    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    if-eq v1, v9, :cond_3

    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 15
    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    if-eq v1, v9, :cond_3

    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 16
    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    if-eq v1, v9, :cond_3

    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 17
    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    if-eq v1, v9, :cond_3

    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 18
    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    if-eq v1, v9, :cond_3

    :cond_2
    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 19
    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    if-ne v1, v9, :cond_6

    .line 20
    :cond_3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 22
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 23
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    invoke-static {p0, v1}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    return v12

    .line 25
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/join/mgps/activity/CopyDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gameid"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v12

    :cond_5
    if-eqz v9, :cond_6

    if-nez v10, :cond_6

    .line 28
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    :cond_6
    if-nez v4, :cond_8

    if-nez v6, :cond_8

    if-nez v8, :cond_8

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    return v2

    .line 29
    :cond_8
    :goto_0
    new-instance v13, Lcom/join/mgps/dto/UpdateIntentDataBean;

    move-object v1, v13

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/dto/UpdateIntentDataBean;-><init>(ZZZZZZLcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;Z)V

    .line 30
    invoke-static {v11, p0, v13}, Lcom/join/mgps/Util/UtilsMy;->q3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    return v12
.end method

.method public static u2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090a6f

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    .line 5
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static u3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 3
    new-instance p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;-><init>()V

    .line 4
    iput-object p2, p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->userName:Ljava/lang/String;

    .line 5
    iput-object p3, p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->path:Ljava/lang/String;

    const/4 p2, 0x0

    .line 6
    iput p2, p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->miniprogramType:I

    .line 7
    invoke-interface {p0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method

.method private static v(Landroid/content/Context;Lcom/join/mgps/Util/StartGameMeta;Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/StartGameMeta;->setApkOrSo(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/StartGameMeta;->setAssetspath(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/so/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/StartGameMeta;->setSopath(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/StartGameMeta;->setPackageName(Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance p2, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p2, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->pspAdShowTime()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/StartGameMeta;->setPspAdShowTime(I)V

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->pspAdShowTimeSwitch()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/StartGameMeta;->setPspAdShowTimeSwitch(I)V

    .line 9
    invoke-static {p0}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/StartGameMeta;->setChannelId(Ljava/lang/String;)V

    return-void
.end method

.method public static v0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 8
    :cond_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_0
    const/4 v2, -0x1

    .line 10
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 11
    invoke-virtual {p0, p1, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 13
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 14
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyFile:  Exception"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static v1(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "46"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->j0(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    :try_start_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const v0, 0x7f090a6f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    if-eqz p0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 8
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static v3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "/58/"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static w(Lcom/join/mgps/dto/GameDetailRankingTag;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0710cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/dto/GameDetailRankingTag;->getHot_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    move-result-object v1

    const v3, 0x7f0805d5

    const v4, 0x7f091192

    const v5, 0x7f090800

    const/4 v6, 0x0

    const v7, 0x7f0c02ff

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p2, v7, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 8
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/dto/GameDetailRankingTag;->getHot_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    new-instance v8, Lcom/join/mgps/Util/UtilsMy$d;

    invoke-direct {v8, p2, p0}, Lcom/join/mgps/Util/UtilsMy$d;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/GameDetailRankingTag;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/dto/GameDetailRankingTag;->getTag_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {p2, v7, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 17
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/dto/GameDetailRankingTag;->getTag_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance p1, Lcom/join/mgps/Util/UtilsMy$e;

    invoke-direct {p1, p2, p0}, Lcom/join/mgps/Util/UtilsMy$e;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/GameDetailRankingTag;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 12
    :goto_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 13
    :goto_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    .line 14
    invoke-virtual {p2, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v0
.end method

.method public static w1(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_0

    const-string p0, "arc"

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_1

    const-string p0, "nds"

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_2

    const-string p0, "ps2"

    return-object p0

    .line 4
    :cond_2
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    const-string v1, "gba"

    if-ne v0, p0, :cond_3

    return-object v1

    .line 5
    :cond_3
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_4

    const-string p0, "psp"

    return-object p0

    .line 6
    :cond_4
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_5

    const-string p0, "fc"

    return-object p0

    .line 7
    :cond_5
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->AVG:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_6

    const-string p0, "avg"

    return-object p0

    .line 8
    :cond_6
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->FIGHT:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_7

    const-string p0, "fight"

    return-object p0

    .line 9
    :cond_7
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_8

    const-string p0, "sfc"

    return-object p0

    .line 10
    :cond_8
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->WORLD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_9

    const-string p0, "world"

    return-object p0

    .line 11
    :cond_9
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->NET:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_a

    const-string p0, "net"

    return-object p0

    .line 12
    :cond_a
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->MGAME:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_b

    const-string p0, "mgame"

    return-object p0

    .line 13
    :cond_b
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_c

    const-string p0, "data"

    return-object p0

    .line 14
    :cond_c
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_d

    const-string p0, "obb"

    return-object p0

    .line 15
    :cond_d
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_e

    const-string p0, "md"

    return-object p0

    .line 16
    :cond_e
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->GBA_ENHANCE:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_f

    return-object v1

    .line 17
    :cond_f
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_10

    const-string p0, "ps"

    return-object p0

    .line 18
    :cond_10
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_11

    const-string p0, "wsc"

    return-object p0

    .line 19
    :cond_11
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_12

    const-string p0, "gbc"

    return-object p0

    .line 20
    :cond_12
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_13

    const-string p0, "n64"

    return-object p0

    .line 21
    :cond_13
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_14

    const-string p0, "ons"

    return-object p0

    .line 22
    :cond_14
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    if-ne v0, p0, :cond_15

    const-string p0, "dc"

    return-object p0

    :cond_15
    const-string p0, ""

    return-object p0
.end method

.method public static w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/z;->a0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static x(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "1"

    .line 2
    :cond_0
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    const v0, 0x7f0c008d

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    const v0, 0x7f0900fd

    .line 4
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090109

    .line 5
    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900f2

    .line 6
    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090c16

    .line 7
    invoke-virtual {p5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09009d

    .line 8
    invoke-virtual {p5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v6, "#AAAAAA"

    .line 11
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f080c45

    .line 12
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v6, "BT"

    .line 13
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    .line 15
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    mul-double p1, p1, v6

    double-to-long p1, p1

    .line 16
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    if-eqz p3, :cond_2

    .line 17
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :goto_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 21
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "0"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "0.0"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5206"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 26
    :cond_4
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    :goto_2
    invoke-virtual {p4, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static x0(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static x1(Landroid/content/Context;)I
    .locals 8

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/p;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Ln1/m0;->p()Ln1/m0;

    move-result-object v2

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ln1/m0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getLock_sp()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-eqz p0, :cond_3

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->getIsOpenSp()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/UserPurchaseInfo;->getSpExpireTime()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v2, ""

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/springframework/util/Base64Utils;->decode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const-string v2, "true"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    .line 12
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v1
.end method

.method public static x2(D)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x3(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/z;->K(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    return-void
.end method

.method public static y(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/TipNew;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, "1"

    .line 2
    :cond_0
    invoke-virtual {p5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-static {p6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p6, 0x7f0c008e

    const/4 v0, 0x0

    invoke-virtual {p1, p6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p6, 0x7f090109

    .line 4
    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TextView;

    const v1, 0x7f0900f2

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    const-string v3, " \u00b7 "

    if-eqz p3, :cond_11

    .line 6
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 7
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "7"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    .line 8
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 10
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 11
    :cond_4
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_5
    :goto_0
    const-string p3, "\u5b89\u5353"

    if-eqz p4, :cond_f

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_6
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "44"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "45"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "47"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "48"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    .line 16
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-ne p4, v2, :cond_a

    .line 18
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/join/mgps/dto/TipBean;

    if-eqz p4, :cond_9

    .line 19
    invoke-virtual {p4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p3

    .line 20
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    if-le p4, v6, :cond_f

    .line 21
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/join/mgps/dto/TipBean;

    if-eqz p4, :cond_f

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    .line 23
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    if-ne p4, v6, :cond_b

    .line 24
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/join/mgps/dto/TipBean;

    if-eqz p4, :cond_f

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    .line 26
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_c
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_2

    :cond_d
    if-nez v4, :cond_e

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    .line 29
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u00b7"

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_3
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_c

    .line 30
    :cond_f
    :goto_4
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 31
    :cond_10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 32
    :cond_11
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    const-wide/high16 p3, 0x4130000000000000L    # 1048576.0

    .line 33
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    mul-double v0, v0, p3

    double-to-long p2, v0

    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_12

    const-string p4, "0"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_12

    const-string p4, "0.0"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_12

    .line 35
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5206"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 36
    :cond_12
    invoke-static {p2, p3}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :goto_6
    invoke-virtual {p5, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static y0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, ""

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 6
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public static y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->j0(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static y2(Landroid/widget/TextView;Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownload_source_switch_v2()Ljava/lang/String;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    .line 7
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x3

    const v5, 0x7f080346

    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    const/4 v6, 0x6

    if-eq v0, v4, :cond_2

    if-ne v0, v6, :cond_3

    :cond_2
    if-nez v1, :cond_3

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    const p1, 0x7f080344

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    if-ne v0, v6, :cond_4

    if-nez v1, :cond_4

    const-string p1, "\u9884\u7ea6"

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p1, :cond_5

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110261

    new-array v2, v2, [Ljava/lang/Object;

    int-to-double v4, p1

    invoke-static {v4, v5}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static y3(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/UtilsMy$c;

    invoke-direct {v0, p1, p0}, Lcom/join/mgps/Util/UtilsMy$c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static z(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecGameTagBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecGameTagBean;

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const v2, 0x7f0c0305

    const/4 v3, 0x0

    .line 5
    invoke-static {p2, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09118e

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090806

    .line 7
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecGameTagBean;->getType()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecGameTagBean;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecGameTagBean;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 10
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const v5, 0x7f080649

    .line 11
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    .line 12
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const v5, 0x7f08064a

    .line 14
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    :goto_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecGameTagBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public static z0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {p1, p2}, Lcom/join/mgps/Util/f0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "31"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "_v2"

    if-eqz v2, :cond_7

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    .line 4
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    .line 8
    invoke-static {p3}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 10
    invoke-static {p3}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 11
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 12
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    .line 14
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 15
    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/RomArchived;

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    .line 18
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 19
    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/RomArchived;

    if-eqz v1, :cond_c

    if-nez v4, :cond_c

    .line 21
    invoke-static {p3}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_3

    .line 22
    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    .line 23
    invoke-static {p3}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 26
    :cond_d
    invoke-virtual {v2}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_3

    .line 27
    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_f
    if-eqz v0, :cond_10

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/dto/RomArchived;

    .line 30
    invoke-virtual {p3}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 33
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->x0(Ljava/lang/String;)V

    .line 34
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/emus/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->w1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 38
    invoke-virtual {p3}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    move-result-object p3

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 39
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 41
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 42
    invoke-static {p3}, Lcom/join/mgps/Util/UtilsMy;->x0(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    return-void
.end method

.method public static z1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result v1

    if-lez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMin_an_compatible_ver()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 2
    :cond_1
    new-instance v0, Lcom/join/mgps/dialog/d;

    const v1, 0x7f120176

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/d;-><init>(Landroid/content/Context;I)V

    .line 3
    new-instance v1, Lcom/join/mgps/Util/UtilsMy$g;

    invoke-direct {v1, p0, p1, v0}, Lcom/join/mgps/Util/UtilsMy$g;-><init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dialog/d;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/d;->e(Lcom/join/mgps/dialog/d$f;)V

    .line 4
    new-instance p0, Lcom/join/mgps/Util/UtilsMy$h;

    invoke-direct {p0, v0}, Lcom/join/mgps/Util/UtilsMy$h;-><init>(Lcom/join/mgps/dialog/d;)V

    invoke-virtual {v0, p0}, Lcom/join/mgps/dialog/d;->g(Lcom/join/mgps/dialog/d$h;)V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u8be5\u6e38\u620f\u5728\u5b89\u5353"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u7248\u672c\u4e2d\u53ef\u80fd\u5b58\u5728\u95ea\u9000\u3001\u663e\u793a\u6548\u679c\u4e0d\u4f73\u3001\u8fd0\u884c\u4e0d\u6d41\u7545\u7b49\u73b0\u8c61"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/dialog/d;->h(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static z2(Landroid/widget/TextView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownload_source_switch_v2()Ljava/lang/String;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    .line 7
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x3

    const v5, 0x7f080346

    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    const/4 v6, 0x6

    if-eq v0, v4, :cond_2

    if-ne v0, v6, :cond_3

    :cond_2
    if-nez v1, :cond_3

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    const p1, 0x7f080344

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    if-ne v0, v6, :cond_4

    if-nez v1, :cond_4

    const-string p1, "\u9884\u7ea6"

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p1, :cond_5

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110261

    new-array v2, v2, [Ljava/lang/Object;

    int-to-double v4, p1

    invoke-static {v4, v5}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 5
    :goto_0
    invoke-static {}, Ln1/n;->o()Ln1/n;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln1/n;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/DownlodTaskCopyTable;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;

    invoke-direct {v3}, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;-><init>()V

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->setId(I)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->setGameId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, v0}, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->setDownloadTask(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ln1/n;->o()Ln1/n;

    move-result-object v0

    invoke-virtual {v0, v3}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 13
    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_2
    const/4 v0, 0x0

    .line 20
    invoke-static {p0, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void
.end method
