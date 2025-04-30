.class Lcom/join/mgps/activity/MYCloudBackupsActivity$b;
.super Landroid/widget/BaseAdapter;
.source "MYCloudBackupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MYCloudBackupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudBackupsCanUseBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field final synthetic c:Lcom/join/mgps/activity/MYCloudBackupsActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/MYCloudBackupsActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudBackupsCanUseBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;->c:Lcom/join/mgps/activity/MYCloudBackupsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;->a:Ljava/util/List;

    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/MYCloudBackupsActivity;->E0(Lcom/join/mgps/activity/MYCloudBackupsActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/join/mgps/dto/CloudBackupsCanUseBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;->a(I)Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;->b:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00ec

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f090c10

    .line 2
    invoke-static {p2, p3}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f091218

    .line 3
    invoke-static {p2, v0}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090634

    .line 4
    invoke-static {p2, v1}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudBackupsCanUseBean;->getBrand_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p3, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudBackupsCanUseBean;->getAdd_time()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 7
    new-instance p1, Ljava/sql/Date;

    invoke-direct {p1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    const-string p3, "yyyy-MM.dd HH:mm:ss"

    .line 8
    invoke-static {p1, p3}, Lcom/join/mgps/Util/x;->e(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u81ea\u52a8"

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
