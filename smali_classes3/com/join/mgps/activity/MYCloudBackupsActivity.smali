.class public Lcom/join/mgps/activity/MYCloudBackupsActivity;
.super Lcom/BaseActivity;
.source "MYCloudBackupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MYCloudBackupsActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04ce
.end annotation


# instance fields
.field a:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/join/mgps/dto/AccountBean;

.field f:Lcom/join/mgps/rpc/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/MYCloudBackupsActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->d:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method F0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "recoverdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->e:Lcom/join/mgps/dto/AccountBean;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->f:Lcom/join/mgps/rpc/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->e:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->e:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/join/mgps/rpc/b;->S(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudBackupsListBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudBackupsListBean;->getBackup_list()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYCloudBackupsActivity;->H0(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method G0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method H0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudBackupsCanUseBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;-><init>(Lcom/join/mgps/activity/MYCloudBackupsActivity;Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->a:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/join/mgps/activity/MYCloudBackupsActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/MYCloudBackupsActivity$a;-><init>(Lcom/join/mgps/activity/MYCloudBackupsActivity;Lcom/join/mgps/activity/MYCloudBackupsActivity$b;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method I0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->f:Lcom/join/mgps/rpc/b;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->d:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u4e91\u5907\u4efd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->c:Landroid/widget/ImageView;

    const v1, 0x7f080aed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYCloudBackupsActivity;->F0()V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
