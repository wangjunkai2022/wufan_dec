.class Lcom/join/mgps/activity/MYCloudBackupsActivity$a;
.super Ljava/lang/Object;
.source "MYCloudBackupsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MYCloudBackupsActivity;->H0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MYCloudBackupsActivity$b;

.field final synthetic b:Lcom/join/mgps/activity/MYCloudBackupsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MYCloudBackupsActivity;Lcom/join/mgps/activity/MYCloudBackupsActivity$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$a;->b:Lcom/join/mgps/activity/MYCloudBackupsActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$a;->a:Lcom/join/mgps/activity/MYCloudBackupsActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    iget-object p1, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$a;->b:Lcom/join/mgps/activity/MYCloudBackupsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MYCloudBackupsActivity;->E0(Lcom/join/mgps/activity/MYCloudBackupsActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/CloudBackupsDetialActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/CloudBackupsDetialActivity_$d;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$a;->a:Lcom/join/mgps/activity/MYCloudBackupsActivity$b;

    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;->a(I)Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CloudBackupsDetialActivity_$d;->a(Lcom/join/mgps/dto/CloudBackupsCanUseBean;)Lcom/join/mgps/activity/CloudBackupsDetialActivity_$d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
